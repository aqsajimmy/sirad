function previewImage(event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            document.getElementById('preview-logo').src = e.target.result;
        }
        reader.readAsDataURL(file);
    }
}
document.addEventListener('DOMContentLoaded', function() {
    // Assuming you want to attach the previewImage function to an input element
    const inputElement = document.getElementById('file-input'); // Change 'file-input' to your actual input ID
    if (inputElement) {
        inputElement.addEventListener('change', previewImage);
    }
});