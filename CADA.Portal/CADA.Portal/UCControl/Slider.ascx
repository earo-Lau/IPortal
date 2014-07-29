<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slider.ascx.cs" Inherits="CADA.Portal.UCControl.Slider" %>
<link type="text/css" rel="stylesheet" href="<%=ResolveUrl("~/Content/@Scripts/carouFredSel/style.css") %>" />
<script src="<%=ResolveUrl("~/Content/@Scripts/carouFredSel/jquery.carouFredSel-6.0.4-packed.js") %>" type="text/javascript"></script>
<div id="wrapper">
    <div id="carousel-wrapper">
        <div id="carousel" class="carousel">
            <asp:ListView ID="lv_slider" runat="server">
                <ItemTemplate>
                    <span id='<%#Eval("Id") %>'>
                        <img src='<%#Eval("img_Path") %>' /></span>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
    <div id="thumbs-wrapper">
        <!--[if IE 7]>
        <div style="position: relative; width: 90%; height:128px;">
        <![endif]-->
            <div id="thumbs" class="thumbs">
                <asp:ListView ID="lv_thumbs" runat="server">
                    <ItemTemplate>
                        <a href='#<%#Eval("Id") %>'>
                            <img src='<%#Eval("thumb_Path") %>' />
                        </a>
                    </ItemTemplate>
                </asp:ListView>
                <!--[if IE 7]>
            </div>
            <![endif]-->
        </div>
        <a id="prev" class="prev" href="#"></a><a id="next" class="next" href="#"></a>
    </div>
</div>
<%--<script type="text/javascript" src="<%=ResolveUrl("~/Content/@Scripts/carouFredSel/AjaxRun.js") %>"></script>--%>
<script type="text/javascript">
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
        responsive: true,
        circular: false,
        auto: false,
        prev: '#prev',
        next: '#next',
        height: 128,
        items: {
            visible: {
                min: 2,
                max: 4
            },
            width: 150,
            height: '66%'
        }
    });

    $('#thumbs a').click(function () {
        $('#carousel').trigger('slideTo', '#' + this.href.split('#').pop());
        $('#thumbs a').removeClass('selected');
        $(this).addClass('selected');
        return false;
    });
    $('#thumbs a:eq(1)').addClass('selected');
</script>
