<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="JCarousel_Slider.ascx.cs" Inherits="CADA.Portal.UCControl.JCarousel_Slider" %>
<div class="connected-carousels">
    <div runat="server" id="stage" class="stage">
        <div runat="server" id="carousel_stage" data-jcarousel="true" class="carousel carousel-stage">
            <ul style="left: -1200px; top: 0px;">
                <asp:ListView ID="lv_slider" runat="server">
                    <ItemTemplate>
                        <li>
                            <img src='<%#Eval("img_Path") %>' /></li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
        <a runat="server" id="prev_stage" data-jcarouselcontrol="true" href="#" class="prev prev-stage"><span>‹</span></a> <a runat="server" id="next_stage" data-jcarouselcontrol="true" href="#" class="next next-stage"><span>›</span></a>
    </div>
    <div runat="server" id="thumb" class="thumb">
        <a runat="server" id="prev_thumb" data-jcarouselcontrol="true" href="#" class="prev prev-thumb inactive"></a><a runat="server" id="next_thumb" data-jcarouselcontrol="true" href="#" class="next next-thumb"></a>
        <div runat="server" id="carousel_thumb" data-jcarousel="true" class="carousel carousel-thumb">
            <ul style="left: 0px; top: 0px;">
                <asp:ListView ID="lv_thumbs" runat="server">
                    <ItemTemplate>
                        <li class="" data-jcarouselcontrol="true">
                            <img src='<%#Eval("thumb_Path") %>' alt="">
                        </li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    var connector = function (itemNavigation, carouselStage) {
        return carouselStage.jcarousel('items').eq(itemNavigation.index());
    };

    // Setup the carousels. Adjust the options for both carousels here.
    var carouselStage = $('#<%= carousel_stage.ClientID%>').jcarousel();
    var carouselNavigation = $('#<%= carousel_thumb.ClientID%>').jcarousel();

    // We loop through the items of the navigation carousel and set it up
    // as a control for an item from the stage carousel.
    carouselNavigation.jcarousel('items').each(function () {
        var item = $(this);

        // This is where we actually connect to items.
        var target = connector(item, carouselStage);

        item.on('jcarouselcontrol:active', function () {
            carouselNavigation.jcarousel('scrollIntoView', this);
            item.addClass('active');
        })
                    .on('jcarouselcontrol:inactive', function () {
                        item.removeClass('active');
                    })
                    .jcarouselControl({
                        target: target,
                        carousel: carouselStage
                    });
    });

    // Setup controls for the stage carousel
    $('#<%= prev_stage.ClientID%>')
                .on('jcarouselcontrol:inactive', function () {
                    $(this).addClass('inactive');
                })
                .on('jcarouselcontrol:active', function () {
                    $(this).removeClass('inactive');
                })
                .jcarouselControl({
                    target: '-=1'
                });

    $('#<%= next_stage.ClientID%>')
                .on('jcarouselcontrol:inactive', function () {
                    $(this).addClass('inactive');
                })
                .on('jcarouselcontrol:active', function () {
                    $(this).removeClass('inactive');
                })
                .jcarouselControl({
                    target: '+=1'
                });

    // Setup controls for the navigation carousel
    $('#<%= prev_thumb.ClientID%>')
                .on('jcarouselcontrol:inactive', function () {
                    $(this).addClass('inactive');
                })
                .on('jcarouselcontrol:active', function () {
                    $(this).removeClass('inactive');
                })
                .jcarouselControl({
                    target: '-=1'
                });

    $('#<%= next_thumb.ClientID%>')
                .on('jcarouselcontrol:inactive', function () {
                    $(this).addClass('inactive');
                })
                .on('jcarouselcontrol:active', function () {
                    $(this).removeClass('inactive');
                })
                .jcarouselControl({
                    target: '+=1'
                });
</script>
