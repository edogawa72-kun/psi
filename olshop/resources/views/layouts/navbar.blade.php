<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="{{url('/')}}"><img src="{{asset('bootshop/themes/images/tisata.png')}}" alt="Bootsshop"/></a>
		
    @if(Auth::guest())
    <ul id="topMenu" class="nav pull-right">
	 <li class="">
	 <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Login</span></a>
	<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>SILAHKAN MASUK</h3>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal loginFrm" method="POST" action="{{ route('login') }}">
				{{ csrf_field() }}
			  <div class="control-group">								
				<input type="text" id="inputEmail" name="email" placeholder="Email">
			  </div>
			  <div class="control-group">
				<input type="password" id="inputPassword" name="password" placeholder="Password">
			  </div>
			  <div class="control-group">
			  </div>			  
			<button type="submit" class="btn btn-success">Sign in</button>
			</form>		
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		  </div>
	</div>
	</li>
    </ul>
    <ul id="topMenu" class="nav pull-right">
	 <li class="">
	 <a href="#register" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Register</span></a>
	<div id="register" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>SILAHKAN MENDAFTAR</h3>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal loginFrm" method="POST" action="{{ route('register') }}">
				{{ csrf_field() }}
			  <div class="control-group{{ $errors->has('name') ? ' has-error' : '' }}">								
				<input type="text" id="inputEmail" name="name" value="{{ old('name') }}" required autofocus placeholder="Nama">
                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
			  </div>				
			  <div class="control-group{{ $errors->has('email') ? ' has-error' : '' }}">								
				<input type="text" id="inputEmail" name="email" placeholder="Email" value="{{ old('email') }}" required>
                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
			  </div>
			  <div class="control-group{{ $errors->has('password') ? ' has-error' : '' }}">
				<input type="password" id="inputPassword" name="password" placeholder="Password" required>
                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
			  </div>
			  <div class="control-group">
				<input type="password" id="inputPassword" name="password_confirmation" placeholder="Confirm Password" required>
			  </div>			  
			  <div class="control-group">
			  </div>
			<button type="submit" class="btn btn-success">DAFTAR</button>
			</form>		
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		  </div>
	</div>
	</li>
    </ul>    
    @else
    <ul id="topMenu" class="nav pull-right">

    <li class=""><a href="{{ url('invoice/list') }}">Riwayat</a></li>
    <li class=""><a href="{{ url('konfirmasi') }}">Konfirmasi Pembayaran</a></li>
	    <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Logout</span></a>
                                                     <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
	</ul>
    @endif
  </div>