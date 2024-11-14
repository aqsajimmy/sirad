{{-- resources/views/components/select-input.blade.php --}}
<div>
    <select {{ $attributes->merge(['class' => 'form-control']) }}>
        {{ $slot }}
    </select>
</div>
