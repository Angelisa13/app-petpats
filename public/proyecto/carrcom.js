let cart = [];

function addToCart(id, name, price) {
  let item = { id, name, price };
  cart.push(item);
  updateCart();
}

function updateCart() {
  let cartItems = document.getElementById('cart-items');
  cartItems.innerHTML = '';
  let total = 0;
  for (let i = 0; i < cart.length; i++) {
    let item = cart[i];
    let itemElement = document.createElement('li');
    itemElement.textContent = `${item.name} - ${item.price} MXN`;
    cartItems.appendChild(itemElement);
    total += item.price;
  }
  document.getElementById('total').textContent = `${total} MXN`;
}

function clearCart() {
  cart = [];
  updateCart();
}