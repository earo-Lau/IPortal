<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slider.ascx.cs" Inherits="CADA.Portal.UCControl.Slider" %>
<link type="text/css" rel="stylesheet" href="<%=Request.ApplicationPath %>/Content/@Scripts/carouFredSel/style.css" />
<script src="<%=Request.ApplicationPath %>/Content/@Scripts/carouFredSel/jquery.carouFredSel-6.0.4-packed.js" type="text/javascript"></script>
<%--Nivo Slider

        <div class="slider-wrapper theme-bar">
            <div class="ribbon">
            </div>
            <div id="slider" class="nivoSlider">
                <asp:ListView ID="lv_slider" runat="server">
                    <ItemTemplate>
                        <img src='<%#Eval("img_Path")%>' data-thumb='<%#Eval("thumb_Path")%>' />
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <script type="text/javascript">
            $('#slider').nivoSlider({
                currentSlide: 0,
                currentImage: '',
                directionNav: true,
                directionNavHide: false,
                totalSlides: 0,
                running: false,
                paused: false,
                controlNav: true,
                controlNavThumbs: true,
                stop: false,
                manualAdvance: false,
                controlNavEl: false,
                prevText: '',
                nextText: '',
            });
        </script>--%>
<%--        <!-- SLIDER -->
        <!-- START SLIDER -->
        <div id="showcase" class="showcase">
            <asp:ListView ID="lv_slider" runat="server">
                <ItemTemplate>
                    <div class="showcase-slide">
                        <div class="showcase-content">
                            <div class="showcase-content-wrapper">
                                <img src="<%#Eval("img_Path")%>" />
                            </div>
                        </div>
                        <div class="showcase-thumbnail">
                            <img src="<%#Eval("thumb_Path")%>" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <!-- END SLIDER -->
        <script type="text/javascript">
            $("#showcase").awShowcase(
	{
	    fit_to_parent: true,
	    auto: true,
	    interval: 3000,
	    continuous: true,
	    loading: true,
	    arrows: true,
	    buttons: false,
	    keybord_keys: true,
	    transition: 'fade', /* hslide/vslide/fade */
	    transition_speed: 500,
	    transition_delay: 300,
	    show_caption: 'onhover', /* onload/onhover/show */
	    thumbnails: true,
	    thumbnails_position: 'outside-last', /* outside-last/outside-first/inside-last/inside-first */
	    thumbnails_direction: 'horizontal', /* vertical/horizontal */
	    thumbnails_slidex: 2, /* 0 = auto / 1 = slide one thumbnail / 2 = slide two thumbnails / etc. */
	    viewline: false /* If set to true content_width, thumbnails, transition and dynamic_height will be disabled. As for dynamic height you need to set the width and height of images in the source. */
	});
        </script>
        <!-- /SLIDER -->
--%>
<div id="wrapper">
    <div id="carousel-wrapper">
        <div id="carousel">
            <asp:ListView ID="lv_slider" runat="server">
                <ItemTemplate>
                    <span id='<%#Eval("Id") %>'>
                        <img src='<%#Eval("img_Path") %>' /></span>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
    <div id="thumbs-wrapper">
        <div id="thumbs">
            <asp:ListView ID="lv_thumbs" runat="server">
                <ItemTemplate>
                    <a href='#<%#Eval("Id") %>'>
                        <img src='<%#Eval("thumb_Path") %>' />
                    </a>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <a id="prev" href="#"></a><a id="next" href="#"></a>
    </div>
</div>
<script type="text/javascript" src="<%=Request.ApplicationPath %>/Content/@Scripts/carouFredSel/AjaxRun.js"></script>
