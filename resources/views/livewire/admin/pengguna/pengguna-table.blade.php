<div>
    <div class="card-body">
        <div class="row mb-4">
            <div class="col-md-2">
                <input type="text" name="search" id="" wire:model.live="search"
                    class="form-control form-control-sm" placeholder="Cari Data Pengguna...">
            </div>
            <div class="col">
                <div class="float-end d-none d-sm-block">
                    <x-primary-button data-bs-toggle="modal" data-bs-target=".add-pengguna">
                        + {{ $title }}
                    </x-primary-button>
                </div>
            </div>
        </div>
        <table class="table table-bordered table-striped table-hover dt-responsive nowrap"
            style="border-collapse: collapse; border-spacing: 0; width: 100%;">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nama Lengkap</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($pengguna as $item)
                    <tr wire:key="{{ $item->id }}">
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $item->name }}</td>
                        <td>{{ $item->email }}</td>
                        <td>{{ $item->role }}</td>
                        <td>
                            <div class="d-flex gap-2">
                                <div><x-primary-button class="btn-sm">
                                        <i class="dripicons-document-edit"></i>
                                    </x-primary-button></div>
                                <div>
                                    <x-danger-button class="btn-sm">
                                        <i class='dripicons-trash'></i>
                                    </x-danger-button>
                                </div>
                            </div>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="10" class="text-center">Data Tidak Ada</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
        <div class="row">
            <div class="col-md-1">
                <select wire:model.live="pp" name="" id=""
                    class="form-control form-control-sm text-center">
                    <option value="10">10 Data</option>
                    <option value="25">25 Data</option>
                    <option value="50">50 Data</option>
                    <option value="100">100 Data</option>
                </select>
            </div>
            <div class="col-md-11">
                {{ $pengguna->withQueryString()->links() }}
            </div>
        </div>
    </div>
    <!--  Modal content for the above example -->
    <div class="modal fade add-pengguna" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-md modal-dialog-centered">
            <div class="modal-content">
                <form class="needs-validation custom-validation" novalidate>
                    @csrf
                    <div class="modal-header">
                        <h5 class="modal-title mt-0" id="myExtraLargeModalLabel">Tambah {{ $title }}</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="card-body">
                            <div class="mb-3">
                                <x-input-label for="name">Nama Lengkap</x-input-label>
                                <x-text-input type="text" wire:model="name" id="name"
                                    placeholder="Nama Lengkap"></x-text-input>
                                @error('name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                                <x-input-error :messages="$errors->get('name')"></x-input-error>
                            </div>
                            <div class="mb-3">
                                <x-input-label for="email">Email</x-input-label>
                                <x-text-input type="email" wire:model="email" id="email"
                                    placeholder="Email@user.com"></x-text-input>
                                <x-input-error :messages="$errors->get('email')"></x-input-error>
                            </div>
                            <div class="mb-3">
                                <x-input-label for="role">Hak Akses</x-input-label>
                                <x-select wire:model="role" id="role">
                                    <option value="" selected disabled>Pilih Hak Akses</option>
                                    <option value="admin">Admin</option>
                                    <option value="user">User</option>
                                </x-select>
                                <x-input-error :messages="$errors->get('role')"></x-input-error>
                            </div>
                            <div class="mb-3">
                                <x-input-label for="password">Password</x-input-label>
                                <x-text-input type="password" wire:model="password" id="password"
                                    placeholder="Password"></x-text-input>
                                <x-input-error :messages="$errors->get('password')"></x-input-error>
                            </div>
                            <div class="mb-3">
                                <x-input-label for="password_confirmation">Konfirmasi Password</x-input-label>
                                <x-text-input type="password" wire:model="password_confirmation"
                                    id="password_confirmation" placeholder="Masukan Ulang Password"></x-text-input>
                                <x-input-error :messages="$errors->get('password_confirmation')"></x-input-error>
                            </div>
                            {{-- Do your work, then step back. --}}
                        </div>
                    </div>
                    <div class="modal-footer">
                        <x-primary-button wire:click.prevent="addPengguna($data)">
                            <span wire:loading.remove>{{ __('Simpan') }}</span>
                            <span wire:loading>Loading...</span>
                        </x-primary-button>

                    </div>
                </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>
