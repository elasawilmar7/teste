@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <img src="{{ asset('images/praca.jpg') }}" usemap="#image-map" id="imgPraca">
        <map name="image-map" id="mapa">
            <area target="" alt="albatroz" coords="725,197,88" onclick="funcaoPropaganda();" style="cursor: pointer;" title="Agência Propaganda" shape="circle">
            <area target="" alt="máquinas" coords="1227,261,86" onclick="funcaoMaquinas();" style="cursor: pointer;" title="Máquinas da Produção" shape="circle">
            <area target="" alt="finanças" coords="681,536,74" onclick="funcaoFinancas();" style="cursor: pointer;" title="Banco" shape="circle">
            <area target="" alt="produção" coords="464,419,78" onclick="funcaoProducao();" style="cursor: pointer;" title="Matéria prima" shape="circle">
            <area target="" alt="empresa" coords="1190,551,86" onclick="funcaoEmpresa();" style="cursor: pointer;" title="Empresa" shape="circle">
            <area target="" alt="upnews" coords="435,710,73" onclick="funcaoUpnews();" style="cursor: pointer;" title="Upnews" shape="circle">
            <area target="" alt="transporte" coords="1457,346,92" onclick="funcaoTransporte();" style="cursor: pointer;" title="Transportadora" shape="circle">
            <area target="" alt="posto" coords="960,421,79" onclick="funcaoPosto();" style="cursor: pointer;" title="Posto de combustível" shape="circle">
            <area target="" alt="pneus" coords="1484,684,103" onclick="funcaoPneus();" style="cursor: pointer;" title="Fornecedor de pneus" shape="circle">
        </map>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard22</div>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    You are logged in!
                    <example-component></example-component>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection