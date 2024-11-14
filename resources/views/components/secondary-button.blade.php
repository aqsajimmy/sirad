<button {{ $attributes->merge(['type' => 'submit', 'class' => 'btn btn-secondary waves-effect waves-light']) }}>
    {{ $slot }}
</button>
