<div class="user-panel">
      </div>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      
      
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">DASHBOARD</li>
            
            <li class="treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Master Tiket</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="{{ url('barang') }}"><i class="fa fa-circle-o"></i> Daftar Semua Tiket</a>
                </li>
                <li><a href="{{ url('barang/habis') }}"><i class="fa fa-circle-o"></i> Daftar Tiket Yang Habis</a>
                </li>
                <li><a href="{{ url('barang/create') }}"><i class="fa fa-circle-o"></i> Tambah Tiket</a>
                </li>
                </li>
              </ul>
            </li>

            <li>
              <a href="{{ url('kategori') }}">
                <i class="fa fa-amazon"></i> <span>Master Kategori Tiket</span>
              </a>
            </li>

            <li>
              <a href="{{ url('konfirmasi') }}">
                <i class="fa fa-opera"></i> <span>Konfirmasi Pembayaran</span>
              </a>
            </li>

            <li>
              <a href="{{ url('pesanan') }}">
                <i class="fa fa-adjust"></i> <span>List Semua Pesanan</span>
              </a>
            </li>

            <li>
              <a href="{{ url('keluar') }}">
                <i class="fa fa-adjust"></i> <span>Logout</span>
              </a>
            </li>
            
          </ul>