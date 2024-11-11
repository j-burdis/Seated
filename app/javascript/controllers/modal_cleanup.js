// app/javascript/controllers/modal_cleanup.js

document.addEventListener('DOMContentLoaded', () => {

  // Function to remove all modal backdrops
  function removeBackdrops() {
    document.querySelectorAll('.modal-backdrop').forEach(backdrop => backdrop.remove());
  }

  // Remove lingering backdrops when a modal is about to open
  document.addEventListener('show.bs.modal', function () {
    removeBackdrops();
  });

  // Remove backdrops after a modal is closed
  document.addEventListener('hidden.bs.modal', function () {
    removeBackdrops();
  });

  // Remove backdrops before Turbo navigation to a new page
  document.addEventListener('turbo:before-render', function () {
    removeBackdrops();
  });

  // Final backdrop check after Turbo renders a new page
  document.addEventListener('turbo:render', function () {
    removeBackdrops();
  });
});
