$(document).ready(function () {

    wrapShowHide='#box-show-hide';
    idLoadMoreCmt='#loadMoreCmt';
    idShowLessCmt='#showLessCmt';
    size_li = $("#id-show-hide-cmt .items-show-hide-cmt").length;
    x=3;
    checkx=3;
    step=5;
    if(size_li < x){
        $(wrapShowHide).hide();
    };
    $('#id-show-hide-cmt .items-show-hide-cmt:lt('+x+')').show();
    $(idLoadMoreCmt).click(function () {
        x= (x+step <= size_li) ? x+step : size_li;
        $('#id-show-hide-cmt .items-show-hide-cmt:lt('+x+')').show();
        $(idShowLessCmt).show();
        if(x == size_li){
            $(idLoadMoreCmt).hide();
        }
    });
    $(idShowLessCmt).click(function () {
        x=(x-step<=0) ? checkx : x-step;
        $('#id-show-hide-cmt .items-show-hide-cmt').not(':lt('+x+')').hide();
        $(idLoadMoreCmt).show();
        $(idShowLessCmt).show();
        if(x <= checkx){
            $(idShowLessCmt).hide();
        }
    });
});