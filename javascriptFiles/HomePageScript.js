function refreshPage() {
  location.reload();
}

function showDropdown(id) {
    var dropdown = document.getElementById(id);
    dropdown.style.display = "block";
  }

  function setSearchValue(value, inputId) {
    var input = document.getElementById(inputId);
    input.value = value;
    hideDropdown();
  }

  function hideDropdown() {
    var dropdowns = document.querySelectorAll('.dropdown-content');
    dropdowns.forEach(function(dropdown) {
      dropdown.style.display = "none";
    });
  }

  window.onclick = function(event) {
    if (!event.target.matches('#search-bar') && !event.target.matches('#location-bar')) {
      hideDropdown();
    }
  }