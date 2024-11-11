// app/javascript/controllers/modal_cleanup.js

document.addEventListener('DOMContentLoaded', () => {
  console.log("Modal cleanup script loaded");

  // Function to remove all modal backdrops
  function removeBackdrops() {
    console.log("Running backdrop cleanup");
    document.querySelectorAll('.modal-backdrop').forEach(backdrop => backdrop.remove());
  }

  // Remove lingering backdrops when a modal is about to open
  document.addEventListener('show.bs.modal', function () {
    console.log("Opening modal - pre-emptive backdrop cleanup");
    removeBackdrops();
  });

  // Remove backdrops after a modal is closed
  document.addEventListener('hidden.bs.modal', function () {
    console.log("Modal closed - running backdrop cleanup");
    removeBackdrops();
  });

  // Remove backdrops before Turbo navigation to a new page
  document.addEventListener('turbo:before-render', function () {
    console.log("Turbo navigation - running backdrop cleanup");
    removeBackdrops();
  });

  // Final backdrop check after Turbo renders a new page
  document.addEventListener('turbo:render', function () {
    console.log("Turbo render complete - final backdrop cleanup");
    removeBackdrops();
  });
});
