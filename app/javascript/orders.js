document.addEventListener("DOMContentLoaded", function() {
    const placeOrderButton = document.getElementById("place-order-button");
  
    if (placeOrderButton) {
      placeOrderButton.addEventListener("click", function() {
        placeOrderButton.disabled = true;
        placeOrderButton.textContent = "Processing...";
      });
    }
  });