document.addEventListener("DOMContentLoaded", function () {
    const addToCartButtons = document.querySelectorAll(".add-to-cart");
    const cartItemsList = document.getElementById("cart-items");
    const cartTotal = document.getElementById("cart-total");
    let total = 0;

    addToCartButtons.forEach(button => {
        button.addEventListener("click", function () {
            const product = button.parentElement;
            const productName = product.querySelector("h2").textContent;
            const productPrice = parseFloat(product.querySelector(".price").textContent.replace("$", ""));
            
            const cartItem = document.createElement("li");
            cartItem.innerHTML = `${productName} <span class="item-price">$${productPrice.toFixed(2)}</span>`;
            cartItemsList.appendChild(cartItem);
            
            total += productPrice;
            cartTotal.textContent = `$${total.toFixed(2)}`;
        });
    });
});
