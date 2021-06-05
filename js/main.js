$(document).ready(function () {

    wrapShowHide='#box-show-hide';
    idLoadMoreCmt='#loadMoreCmt';
    idShowLessCmt='#showLessCmt';
    size_li = $("#id-show-hide-cmt .items-show-hide-cmt").length;
    x=3;
    checkx=3;
    step=5;
    console.log(size_li);
    console.log(x);
    if(size_li < x){
        $(wrapShowHide).hide();
    };
    $('#id-show-hide-cmt .items-show-hide-cmt:lt('+x+')').show();
    $(idLoadMoreCmt).click(function () {
        x= (x+5 <= size_li) ? x+5 : size_li;
        $('#id-show-hide-cmt .items-show-hide-cmt:lt('+x+')').show();
        $(idShowLessCmt).show();
        if(x == size_li){
            $(idLoadMoreCmt).hide();
        }
    });
    $('#showLessCmt').click(function () {
        x=(x-5<=0) ? 3 : x-5;
        $('#id-show-hide-cmt .items-show-hide-cmt').not(':lt('+x+')').hide();
        $(idLoadMoreCmt).show();
        $(idShowLessCmt).show();
        if(x <= 3){
            $(idShowLessCmt).hide();
        }
    });
});