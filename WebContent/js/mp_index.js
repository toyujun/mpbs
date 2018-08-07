$(function(){
    /*获取当前所有item*/
    var items=$(".carousel-inner .item");
    /*监听屏幕大小改变 */
    $(window).on("load",function(){
        /*获取屏幕宽度 */
        var width=$(window).width();
        /*判断屏幕宽度*/
        if(width>=768){/*非移动端 */
            /*遍历items*/
            $(items).each(function(index,value){
                var item=$(this);
                /*从DOM获取图片路径 */
                var imgSrc=item.data("largeImg");
                item.html($('<a href="javascript:;" class="pcImg"></a>')).css("backgroundImage","url('"+imgSrc+"')");
                $(".slide").css("width", "1000px");
                $(".slide .pcImg").css("height", "350px");
            })
        }
        else{  /*主要为移动端 */
            /*遍历items*/
            $(items).each(function(index,value){
                var item=$(this);
                /*从DOM获取图片路径 */
                var imgSrc=item.data("smallImg");
                item.html($('<a href="javascript:;" class="pcImg"></a>')).css("backgroundImage","url('"+imgSrc+"')");
                $(".slide").css("width", "400px");
                $(".slide .pcImg").css("height", "140px");
            })
        }
    })
    
})