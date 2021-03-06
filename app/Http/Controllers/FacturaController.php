<?php

namespace App\Http\Controllers;

use App\Partida;
use App\Factura;
use App\Presupuesto_Partida;
use App\Presupuesto;
use App\Coordinacion;
use App\Factura_Detalle;
use DB;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Redirect;
use Auth;
use Illuminate\Http\Response;

class FacturaController extends Controller
{


    /**
     * Muestra el formulario para creear una nueva factura
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   if(Auth::user()){
        $anno = DB::table('tconfiguracion')
            ->select('iValor')
            ->where('vConfiguracion','Periodo')
            ->where('tUsuario_idUsuario', Auth::user()->id)
            ->first();

        return view('transaccion/nuevaTransaccion', ['mensaje' => null, 'anno' => $anno]);
        }
        return view('layouts/master');
    }

    /**
     * Muestra el formulario para creear una nueva factura pendiente
     *
     * @return \Illuminate\Http\Response
     
    public function createPendiente()
    {   if(Auth::user()){
        $anno = DB::table('tconfiguracion')
            ->select('iValor')
            ->where('vConfiguracion','Periodo')
            ->where('tUsuario_idUsuario', Auth::user()->id)
            ->first();

        return view('transaccion/nuevaPendiente', ['mensaje' => null, 'anno' => $anno]);
        }
        return view('layouts/master');
    }
    */

    /**
     * Muestra el formulario para creear un nuevo reintegro de una factura pendiente
     *
     * @return \Illuminate\Http\Response
     */
    public function createReintregro()
    {   if(Auth::user()){
        $anno = DB::table('tconfiguracion')
            ->select('iValor')
            ->where('vConfiguracion','Periodo')
            ->where('tUsuario_idUsuario', Auth::user()->id)
            ->first();
            $facturaPendiente = DB::select("SELECT fac.vDocumento as documento, fac.vDetalleFactura as detalle,fac.iMontoFactura as monto,presu.tCoordinacion_idCoordinacion as unidad,fac.tPartida_idPartida as partida, presu.vNombrePresupuesto as presupuesto FROM tfactura as fac, tpresupuesto as presu, tpresupuesto_tpartida as pre_par where fac.vTipoFactura = 'Factura pendiente' and fac.tPartida_idPartida = pre_par.id and pre_par.tPresupuesto_idPresupuesto = presu.idPresupuesto");

        return view('transaccion/nuevoReintegro', ['mensaje' => null, 'anno' => $anno, 'pendiente' => 
            $facturaPendiente]);
        }
        return view('layouts/master');
    }

/**
* Metodo que permite obtener los datos enviados por ajax y luego inserta un nuevo reintegro
**/
    public function insertaReintegro(Request $request) {
         if ($request->isMethod('get')){   
            
        
            foreach ($request->lista as $documento) {
                $factura = DB::table('tfactura')
                ->select('idFactura')
                ->where('vDocumento', $documento)
                ->first();

                DB::table('treintegro_tfactura')
                ->insertGetId([
                    'documento' => $request->documento,
                    'tfactura_idFactura' => $factura->idFactura,
                    'fechaReintegro' => $request->fecha,
                    'observacion' => $request->observacion
                    ]);

                DB::table('tfactura')
                ->where('vDocumento', $documento)
                ->update(['vTipoFactura' => 'Reintegro']);
                
            }
            return $factura->idFactura;
        }else{
            return 'no';
        }
        
    }

    /**
     * Muestra el formulario para ver la lista de todos los reintegros 
     * @return \Illuminate\Http\Response
     */
    public function updateReintegro()
    {   if(Auth::user()){
        $anno = DB::table('tconfiguracion')
            ->select('iValor')
            ->where('vConfiguracion','Periodo')
            ->where('tUsuario_idUsuario', Auth::user()->id)
            ->first();
            $listaReintegro = DB::select("SELECT DISTINCT documento, observacion
                                            FROM treintegro_tfactura ORDER BY documento");

        return view('transaccion/modificarReintegro', ['mensaje' => null, 'anno' => $anno, 'reintegro' => 
            $listaReintegro]);
        }
        return view('layouts/master');
    }

    public function editReintegro($documento) {
        if(Auth::user()){
        $anno = DB::table('tconfiguracion')
            ->select('iValor')
            ->where('vConfiguracion','Periodo')
            ->where('tUsuario_idUsuario', Auth::user()->id)
            ->first();
            $reintegro = DB::select("SELECT fac_re.documento AS documentoReintegro, fac_re.observacion AS observacionReintegro, fac_re.fechaReintegro AS fechaReintegro, fac.vDocumento AS documentoFactura, fac.vDetalleFactura AS detalle, fac.iMontoFactura AS monto, presu.tCoordinacion_idCoordinacion AS unidad, fac.tPartida_idPartida AS partida, presu.vNombrePresupuesto AS presupuesto
                    FROM tfactura AS fac, tpresupuesto AS presu, tpresupuesto_tpartida AS pre_par, treintegro_tfactura AS fac_re
                    WHERE fac_re.documento = $documento
                    AND fac_re.tfactura_idFactura = fac.idFactura
                    AND fac.tPartida_idPartida = pre_par.id
                    AND pre_par.tPresupuesto_idPresupuesto = presu.idPresupuesto");

        return view('transaccion/editarReintegro', ['mensaje' => null, 'anno' => $anno, 'reintegro' => 
            $reintegro]);
        }
        return view('layouts/master');
    }

    /*
    * Metodo que modifica las facturas asociadas a un reintegro especifico, las facturas a eliminar
    * del reintegro pasan a 'Factura pendiente'
    */
    public function modificarReintegro(Request $request) {
        if ($request->isMethod('get')){   
            foreach ($request->listaNoSeleccionado as $facturaModificar) {

                $factura = DB::table('tfactura')
                ->select('idFactura')
                ->where('vDocumento', $facturaModificar)
                ->first();

                $deleted = DB::delete('DELETE FROM treintegro_tfactura 
                    WHERE documento = ? AND tfactura_idFactura = ?', 
                    [$request->documento, $factura->idFactura]);

                DB::table('tfactura')
                ->where('idFactura', $factura->idFactura)
                ->update(['vTipoFactura' => 'Factura pendiente']);
                
            }
            return $deleted;
        }else{
            return 'no';
        }
    }

    /**
     * Guarda una nueva factura creada
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input= $request->all();
        $count = 0;
        $campo = 1;
        $tipo =  $request->vTipoFactura;
        $documento = $request->vDocumento;
        $fecha = $request->dFechaFactura;
        $descripcion = $request->vDescripcionFactura;
        $listaFactura = [];
        $listaPartida = [];


        foreach($input as $in){
            if($count > 4){
                if($campo == 1){
                    $partida = $in;
                }
                if($campo == 2){
                    $detalle = $in;
                }
                if($campo == 3){
                    $monto = $in;

                    if($monto <= 0){
                        return redirect('transaccion/create')->withErrors('El monto de una transacción no puede ser igual a 0');

                    }
                    $factura = new Factura;

                    $factura->vTipoFactura =  $tipo;
                    $factura->vDocumento =  $documento;
                    $factura->dFechaFactura =  $fecha;
                    $factura->vDescripcionFactura =  $descripcion;
                    $factura->tPartida_idPartida =  $partida;
                    $factura->vDetalleFactura =  $detalle;
                    $factura->iMontoFactura =  $monto;

                    if(in_array($partida, $listaPartida)){
                        return redirect('transaccion/create')->withErrors('Solo se puede agregar una linea por Partida');
                    }
                    else{
                        array_push($listaPartida, $partida);
                    }

                    array_push($listaFactura, $factura);
                    $campo = 0;
                }
                $campo++;
            }
            $count++;
        }
      // return dd($listaPartida);

        $listaPartida;
      //  return dd($listaFactura);
        foreach ($listaFactura as $fac) {
           if($fac->vTipoFactura == 'Pases Anulacion' || $fac->vTipoFactura == 'Cancelacion GECO'){
                $presupuesto_partida = Presupuesto_Partida::find($fac->tPartida_idPartida);

                array_push($listaPartida, $presupuesto_partida);

                $reserva = DB::table('treserva')->where('vReserva', $fac->vDetalleFactura)->first();
                //return dd($reserva);
                if($reserva == null){
                     return redirect('transaccion/create')->withErrors('Debe seleccionar una reserva válida');
                }
                if($reserva->iMontoFactura < $fac->iMontoFactura){
                    return redirect('transaccion/create')->withErrors('El monto de una partida excede el limite posible');
                }
           }else{
                $presupuesto_partida = Presupuesto_Partida::find($fac->tPartida_idPartida);

                array_push($listaPartida, $presupuesto_partida);

                if($presupuesto_partida->iSaldo < $fac->iMontoFactura){
                    return redirect('transaccion/create')->withErrors('El monto de una partida excede el limitesd posible');
                }
           }

        }

        foreach ($listaFactura as $fac) {
            $fac->save();
            if($tipo == "Solicitud GECO"){
                DB::table('treserva')->insert([
                    'vReserva' => $fac->idFactura,
                    'vDocumento' => $fac->vDocumento,
                    'vDetalle' => $fac->vDetalleFactura,
                    'iMontoFactura' => $fac->iMontoFactura,
                    'tPartida_idPartida' => $fac->tPartida_idPartida,]);
                $fac->tReserva_vReserva = $fac->idFactura;
            }

            if($tipo == "Pases Adicionales"){
                $fac->tReserva_vReserva = $fac->vDetalleFactura;
               // DB::table('treserva')->where('vReserva', $fac->vDetalleFactura)
                //->increment('iMontoFactura', $fac->iMontoFactura);
                $reserva = DB::table('treserva')->where('vReserva', $fac->vDetalleFactura)->first();
                $fac->vDetalleFactura = 'Aumento en la reserva '.$reserva->vDocumento.' '.$reserva->vDetalle;
            }

            if($tipo == "Pases Anulacion"){
                $fac->tReserva_vReserva = $fac->vDetalleFactura;
              //  DB::table('treserva')->where('vReserva', $fac->vDetalleFactura)->decrement('iMontoFactura', $fac->iMontoFactura);
                $reserva = DB::table('treserva')->where('vReserva', $fac->vDetalleFactura)->first();
                $fac->vDetalleFactura = 'Reduccion en la reserva '.$reserva->vDocumento.' '.$reserva->vDetalle;
            }
            if($tipo == "Cancelacion GECO"){
                $fac->tReserva_vReserva = $fac->vDetalleFactura;
                $date = date('Y/m/d h:i:s');
                $reserva = DB::table('treserva')->where('vReserva', $fac->vDetalleFactura)->first();
              //  DB::table('treserva')->update('deleted_at', $date)->where('vReserva', $fac->vDetalleFactura);
                $fac->vDetalleFactura = 'Cancelacion de la reserva '.$reserva->vDocumento.' '.$reserva->vDetalle;
            }

            $fac->save();
            $this->calcularReserva();

        }


        return redirect('transaccion/create')->with('mensaje','s');
    }


    /**
     * Calcula la reserva las partidas
     *
     * @param
     * @return \Illuminate\Http\Response
     */
    public function calcularReserva()
    {
        $reservas = DB::table('treserva')->get();

        foreach ($reservas as $reserva) {

            $solicitud = DB::table('tfactura')
            ->select('iMontoFactura')
            ->where('vTipoFactura','Solicitud GECO')
            ->where('deleted_at',null)
            ->where('tReserva_vReserva', $reserva->vReserva)->get();

            $adicionales = DB::table('tfactura')
            ->select('iMontoFactura')
            ->where('vTipoFactura','Pases Adicionales')
            ->where('deleted_at',null)
            ->where('tReserva_vReserva',$reserva->vReserva)->get();

            $anulaciones = DB::table('tfactura')
            ->select('iMontoFactura')
            ->where('vTipoFactura','Pases Anulacion')
            ->where('deleted_at',null)
            ->where('tReserva_vReserva',$reserva->vReserva)->get();

            $cancelaciones = DB::table('tfactura')
            ->select('iMontoFactura')
            ->where('vTipoFactura','Cancelacion GECO')
            ->where('tReserva_vReserva', $reserva->vReserva)
            ->where('deleted_at',null)
            ->get();

            $montoReserva = 0;

            foreach ($solicitud as $s) {
                $montoReserva = $montoReserva + $s->iMontoFactura;
            }

            foreach ($adicionales as $a) {
                $montoReserva = $montoReserva + $a->iMontoFactura;
            }
            foreach ($anulaciones as $a) {
                $montoReserva = $montoReserva - $a->iMontoFactura;
            }

            foreach ($cancelaciones as $c) {
                $montoReserva = $montoReserva - $c->iMontoFactura;
            }

            DB::table('treserva')->where('vReserva', $reserva->vReserva)
            ->update(['iMontoFactura'=> $montoReserva]);

            $reserva =  DB::table('treserva')->where('vReserva', $reserva->vReserva)->first();
           // return dd($reserva);
            if($reserva->iMontoFactura <= 0){
                DB::table('treserva')->where('vReserva', $reserva->vReserva)->delete();
            }


        }
    }


    /**
     * Elimina una factura en especifico
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $factura = Factura::find($id);

        $partida = $factura->tPartida_idPartida;
        if($factura->vTipoFactura ==   'Solicitud GECO'){
            $facturas = Factura::all()->where('tReserva_vReserva',$factura->tReserva_vReserva);
            foreach ($facturas as $fac) {
                $fac->deleted_by = Auth::user()->id;
                $fac->forceDelete();            }
        }else{
            $factura->deleted_by = Auth::user()->id;
            $factura->forceDelete();
        }

        $this->calcularReserva();

        return redirect('/partida/'.$partida);
    }
}
