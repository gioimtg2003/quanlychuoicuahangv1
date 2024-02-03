function addCart(e) {
    if (document.getElementById('logout') == null){
        window.location.href = "/Login";
        return;
    }
    let id = e.getAttribute("data-id");
    let name = e.getAttribute("data-name");
    let price = e.getAttribute("data-price");
    let image = e.getAttribute("data-image");
    let req = new XMLHttpRequest();
    req.open("POST", "/Menu/addCart", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.onreadystatechange = () => {
        if (req.readyState === XMLHttpRequest.DONE && req.status === 200) {
            let data = JSON.parse(req.responseText);
            document.getElementsByClassName("count-cart")[0].innerHTML = data.total;
            let alert = document.querySelector(".alert-popup");
            alert.style.display = "flex";
            alert.innerHTML = "Đã thêm vào giỏ hàng";
            pushData(price, id, name);
            setTimeout(() => {
                alert.style.display = "none";
            }
                , 3000);
        } 
    };
    req.send("id=" + id + "&name=" + name + "&price=" + price + "&image=" + image + "&quantity=1");

};


function pushData (price, id, name) {
    dataLayer.push({ ecommerce: null });  // Clear the previous ecommerce object.
    dataLayer.push({
      event: "add_to_cart",
      ecommerce: {
        currency: "VND",
        value: price,
        items: [
        {
          item_id: id,
          item_name: name,
          price: price
          
        }
        ]
      }
    });
  }