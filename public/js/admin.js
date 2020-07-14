$(document).ready(function () {
    $('.modalMd').off('click').on('click', function () {
        $('#modalMdContent').load($(this).attr('value'));
        $('#modalMdTitle').html($(this).attr('title'));
    });
});
$(document).ready(function () {
    $('.modalLg').off('click').on('click', function () {
        $('#modalLgContent').load($(this).attr('value'));
        $('#modalLgTitle').html($(this).attr('title'));
    });
});
$(document).ready(function () {
    $('.modalXl').off('click').on('click', function () {
        $('#modalXlContent').load($(this).attr('value'));
        $('#modalXlTitle').html($(this).attr('title'));
    });
});