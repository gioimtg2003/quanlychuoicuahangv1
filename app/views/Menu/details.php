<?php
$row = $data[0]->fetch_assoc();
?>
<script>
    document.title = "<?php echo $row["name"] ?>"
    dataLayer.push({ ecommerce: null });
    dataLayer.push({
    event: "view_item",
    ecommerce: {
        currency: "VND",
        value: <?php echo $row["price"] ?>,
        items: [
        {
        item_id: "<?php echo $row["id"] ?>",
        item_name: "<?php echo $row["name"] ?>",
        price: <?php echo $row["price"] ?>,
        quantity: 1
        }
        ]
    }
});
</script>
 <section>
    <div class="container-detail">
        <div class="detail">
            <div class="img">
                <img src="/public/images/banh-mi-kep-trung.png" alt="" width="300px">
            </div>
            <div class="details-content ">
                <div class="details-name-product ">
                    <h3>Bánh mì thịt chả</h3>
                </div>
                <div class="price-details ">
                    <span>Giá: 20.000đ</span>
                </div>
                <div class="detail-description ">
                    <p>bánh mì siêu ngon dùng trong bữa ăn sáng hoặc chiều</p>
                </div>
                <div class="detail-buy">
                    <div class="details-addCart">
                        <button>Thêm vào giỏ hàng</button>
                    </div>
                    <div class="details-buy">
                        <button>Mua ngay</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </section>
