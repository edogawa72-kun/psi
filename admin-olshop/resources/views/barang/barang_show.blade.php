@extends('layouts.master')

@section('content')

<div class="box box-primary">
    <!-- /.box-header -->
    <!-- form start -->

    <div class="col-md-12 text-center">
    	<h1>{{ $barang->nama }}</h1>
    </div>

    <div class="row text-center">
    	<div class="col-md-12">
    		<img style="width: 200px;" src="{{ asset('image/'.$barang->gambar->nama) }}">
    	</div>
    </div>

    <div class="row text-center">
    	<div class="col-md-12">
    		{!! $barang->keterangan !!}
    	</div>
    </div>

    <div class="row text-center">
    	<div class="col-md-4 col-md-offset-4">
    		<table class="table">
                <tr>
                    <th>Harga</th>
                    <td>:</td>
                    <td>Rp. {{ number_format($barang->harga, 2) }}</td>
                </tr>
            </table>
    	</div>
    </div>

  </div>

@endsection