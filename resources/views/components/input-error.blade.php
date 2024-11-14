@props(['messages'])

@if ($messages)
    <ul {{ $attributes->merge(['class' => 'text-danger invalid-feedback']) }}>
        @foreach ((array) $messages as $message)
            <li>{{ $message }}</li>
        @endforeach
    </ul>
@endif
