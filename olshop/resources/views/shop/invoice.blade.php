@extends('layouts.master')

@section('content')

<table class="table table-bordered">
	<thead>
		<tr>
			<th class="text-center" colspan="4">INVOICE</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>Nama Tiket</th>
			<th>Jumlah</th>
			<th>Harga Total</th>
		</tr>
		@foreach($barangs as $index=>$barang)
		<tr>
			<td>{{ $barang->name }}</td>
			<td>{{ $barang->qty }}</td>
			<td>Rp. {{ $barang->subtotal() }}</td>
		</tr>
		@endforeach
		<tr>
			<th colspan="2">Total</th>
			<th style="background: lime;">Rp. {{ $total }}</th>
		</tr>
		<tr>
			<th colspan="1">Transfer Ke :</th>
			<td colspan="2">Mandiri : Atas Nama <b><i>Admin Reza Cahya</i></b><br>No. Rekening <b><i>895230260780</i></b></td>
		</tr>
	</tbody>
</table>

@endsection

@section('scripts')

<script>
		$(document).ready(function(){
			var flash = "{{ Session::has('pesan') }}";
			if(flash){
				var pesan = "{{ Session::get('pesan') }}";
				swal('success', pesan, 'success');
			}
		});
	</script>

@endsection