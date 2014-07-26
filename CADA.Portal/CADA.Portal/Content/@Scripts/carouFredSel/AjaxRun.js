
$('#carousel').carouFredSel({
    responsive: true,
    circular: false,
    auto: false,
    items: {
        visible: 1,
        width: 200,
        height: '56%'
    },
    scroll: {
        fx: 'directscroll'
    }
});

$('#thumbs').carouFredSel({
    responsive: false,
    circular: false,
    auto: false,
    prev: '#prev',
    next: '#next',
    items: {
        visible: {
            min: 2,
            max: 6
        },
        width: 150,
        height: 100
    }
});

$('#thumbs a').click(function () {
    $('#carousel').trigger('slideTo', '#' + this.href.split('#').pop());
    $('#thumbs a').removeClass('selected');
    $(this).addClass('selected');
    return false;
});
$('#thumbs a:eq(1)').addClass('selected');