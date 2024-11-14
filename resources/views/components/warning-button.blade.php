<button {{ $attributes->merge(['type' => 'submit', 'class' => 'btn btn-warning waves-effect waves-light']) }}>
    {{ $slot }}
</button>
