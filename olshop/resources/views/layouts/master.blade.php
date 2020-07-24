<!DOCTYPE html>
<html lang="en">
  <head>
    @include('layouts.header')
  </head>
<body>
<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6">Welcome!<strong></strong></div>
	<div class="span6">
	<div class="pull-right">
		<a href="{{ url('shopping-cart') }}"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> [ {{ count(Cart::content()) }} ] Items in your cart </span> </a> 
	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
@include('layouts.navbar')
</div>
</div>
</div>
<!-- Header End====================================================================== -->

<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		@include('layouts.sidebar')
	</div>
<!-- Sidebar end=============================================== -->
		<?php
			$barangs = \DB::table('barang')->inRandomOrder()->limit(12)->get();
			$barangsActive = \DB::table('barang')->where('status_id', 1)->inRandomOrder()->limit(4)->get();
		?>
		<div class="span9">		
			<div class="well well-small">
			<h4>Random Tiket <small class="pull-right"></small></h4>
			<div class="row-fluid">
			<div id="featured" class="carousel slide">
			<div class="carousel-inner">
			  <div class="item active">
			  <ul class="thumbnails">
			  	@foreach($barangsActive as $barang)
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
				  <?php
			  		$gambar = \DB::table('base64')->where('barang_id', $barang->barang_id)->value('nama');
			  		$photo = base64_decode($gambar);
			  	?>
					<a href="{{ url('barang/show/'.$barang->barang_id) }}"><img src="{{ $photo }}" alt=""></a>
					<div class="caption">
					  <h5>{{ $barang->nama }}</h5>
					  <h4><a class="btn" href="{{ url('barang/show/'.$barang->barang_id) }}">VIEW</a> <span class="pull-right">Rp. {{ number_format($barang->harga, 0) }}</span></h4>
					</div>
				  </div>
				</li>
				@endforeach
			  </ul>
			  </div>

			  @foreach($barangs->chunk(4) as $barangsChunk)
			  <div class="item">
			  <ul class="thumbnails">
			  	@foreach($barangsChunk as $barang)
				<li class="span3">
				  <div class="thumbnail">
				  <i class="tag"></i>
				  <?php
			  		$gambar = \DB::table('base64')->where('barang_id', $barang->barang_id)->value('nama');
			  		$photo = base64_decode($gambar);
			  	?>
					<a href="{{ url('barang/show/'.$barang->barang_id) }}"><img src="{{ $photo }}" alt=""></a>
					<div class="caption">
					  <h5>{{ $barang->nama }}</h5>
					  <h4><a class="btn" href="{{ url('barang/show/'.$barang->barang_id) }}">VIEW</a> <span class="pull-right">Rp. {{ number_format($barang->harga, 0) }}</span></h4>
					</div>
				  </div>
				</li>
				@endforeach
			  </ul>
			  </div>
			  @endforeach

			  </div>
			  <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
			  <a class="right carousel-control" href="#featured" data-slide="next">›</a>
			  </div>
			  </div>
		</div>

		<!-- Latest Products ===================================================== -->

			  @yield('content')	

		<!-- End Latest Products ================================================== -->
		</div>
		</div>
	</div>
</div>
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<div class="row">
			
		 </div>
		<p class="pull-right">&copy; KELOMPOK SURYA</p>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	@include('layouts.script')
	@yield('scripts')
	
	<!-- Themes switcher section ============================================================================================= -->

<span id="themesBtn"></span>
</body>
</html>