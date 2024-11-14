document.addEventListener('DOMContentLoaded', function() {
    let errorMessages = '';
    @foreach ($errors->all() as $error)
        errorMessages += '{{ $error }}<br>';
    @endforeach

    Swal.fire({
        title: 'Error!',
        html: errorMessages,
        icon: 'error',
        confirmButtonText: 'OK'
    });
});