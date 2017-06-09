/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('#button-review').click(function(){
    var x = $.post('comment',{
            'comment.product.productId': $('#product-id').text(),
            'comment.content': $('#input-review').val(),
        },
        function(){
           $('#comment-list').add('<li>'+$('#input-review').val() + '</li>');
        });
        x.fail(function(){
            $('#not-login').css('display', 'block');
        })
})
//$('#rating').click(function(){
// $('fa fa-star-half-full fa-star-o fa-stack-1x').mouseover(function() {
//        $(this).addClass('fa fa-star-half-full fa-star-o fa-stack-1x');
//        $(this).prevAll('.icon').addClass('fa fa-star-half-full fa-star-o fa-stack-1x');
//    });
//    $('fa fa-star-half-full fa-star-o fa-stack-1x').mouseout(function() {
//        $(this).removeClass('fa fa-star-half-full fa-star-o fa-stack-1x');
//        $(this).prevAll('fa fa-star-half-full fa-star-o fa-stack-1x').removeClass('fa fa-star-half-full fa-star-o fa-stack-1x');
//    });
//});
