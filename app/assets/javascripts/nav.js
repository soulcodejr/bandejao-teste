$("#link").click(function () 
{
    $("#" + $(this).attr("class")).show().siblings('div').hide();
});