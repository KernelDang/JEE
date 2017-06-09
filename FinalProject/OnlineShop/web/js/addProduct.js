/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('.btn-add-one-product').click(function () {
    var button = this;
    var productId = $(this).children('.product-id').text();
    $.post('addProduct', {
        productId: productId,
        quantity: 1
    }, function (data) {
        alert("Đã thêm 1 sản phẩm vào giỏ hàng");
        $(document).find('#total-products').html('(' + data.totalProducts + ')');
    }, 'json');
});

$('#button-cart').click(function () {
    var quantity = $(this).parents('#product').find('#input-quantity').val();
    var productId = $(this).children('#product-id').text();
    $.post('addProduct', {
        productId: productId,
        quantity: quantity
    }, function (data) {
        alert("Đã thêm " + quantity + " sản phẩm vào giỏ hàng");
        $(document).find('#total-products').html('(' + data.totalProducts + ')');
    }, 'json');
});
