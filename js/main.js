$(document).ready(function () {


    size_li = $("#id-show-hide-cmt .items-show-hide-cmt").length;
    x=3;
    checkx=3;
    step=5;
    $('#id-show-hide-cmt .items-show-hide-cmt:lt('+x+')').show();
    $('#loadMore').click(function () {
        x= (x+step <= size_li) ? x+step : size_li;
        $('#id-show-hide-cmt .items-show-hide-cmt:lt('+x+')').show();
        $('#showLess').show();
        if(x == size_li){
            $('#loadMore').hide();
        }
    });
    $('#showLess').click(function () {
        x=(x-step<0) ? checkx : x-step;
        $('#id-show-hide-cmt .items-show-hide-cmt').not(':lt('+x+')').hide();
        $('#loadMore').show();
        $('#showLess').show();
        if(x == checkx){
            $('#showLess').hide();
        }
    });


});