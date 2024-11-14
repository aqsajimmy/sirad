<?php

namespace App\Livewire\Admin\Pengguna;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Admin\Pengguna;
use Illuminate\Support\Facades\Hash;

class PenggunaTable extends Component {
    use WithPagination;
    public $name, $email, $role, $password, $password_confirmation, $showComments;
    public $isModalOpen = false;
    public $search = '';
    public $title;
    public $pp = 10;
    protected $paginationTheme = 'bootstrap';
    protected $updatesQueryString = [ 'search' ];
    // Optional: to keep the search term in the URL

    public function render() {
        $pengguna = Pengguna::query()
        ->search( $this->search )
        ->distinct()
        ->orderBy( 'id', 'desc' )
        ->paginate( $this->pp );

        return view( 'livewire.admin.pengguna.pengguna-table', [
            'pengguna' => $pengguna,
        ] );
    }

    public function updatingSearch() {
        $this->resetPage();
        // Reset pagination when search is updated
    }

    public function addPengguna( $data ) {

        if ( empty( $this->name ) || empty( $this->email ) || empty( $this->role ) || empty( $this->password ) ) {
            toastr()->error( 'Semua field harus terisi !' );
            return false;
        }

        $validated = $this->validate( [
            'name' => 'required|min:3',
            'email' => 'required|email|unique:users',
            'role' => 'required|in:admin,user',
            'password' => 'required|min:6|confirmed',
        ] ,
        [
            'name.required' => 'Nama pengguna wajib diisi.',
            'name.min' => 'Nama pengguna minimal 3 karakter.',
            'email.required' => 'Email pengguna wajib diisi.',
            'email.email' => 'Format email pengguna salah.',
            'email.unique' => 'Email pengguna sudah terdaftar.',
            'role.required' => 'Role pengguna wajib diisi.',
            'role.in' => 'Role pengguna harus admin atau user.',
            'password.required' => 'Password pengguna wajib diisi.',
            'password.min' => 'Password pengguna minimal 6 karakter.',
        ] );

        $user = Pengguna::create( [
            'name' => $this->name,
            'email' => $this->email,
            'role' => $this->role,
            'password' => Hash::make( $this->password ),
        ] );

        if ( $user ) {
            toastr()->success( 'Pengguna berhasil ditambahkan!' );
            $this->resetForm();
        } else {
            toastr()->error( 'Gagal menambahkan pengguna!' );
        }

        return redirect( route( 'admin.pengguna' ) );

    }

    public function resetForm() {
        $this->email = null;
        $this->name = null;
        $this->role = null;
        $this->password = null;
        $this->password_confirmation = null;
    }

}
