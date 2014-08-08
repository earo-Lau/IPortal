<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="JCarousel_Video_Slider.ascx.cs" Inherits="CADA.Portal.UCControl.JCarousel_Video_Slider" %>
<div class="connected-carousels">
    <div runat="server" id="stage" class="stage">
        <div runat="server" id="carousel_stage" data-jcarousel="true" class="carousel carousel-stage">
            <video id="carousel_video" runat="server" controls style="height: 100%; width: 100%;">
                抱歉，你的浏览器不支持该视频的播放
                </video>
        </div>
    </div>
    <div runat="server" id="thumb" class="thumb">
        <a runat="server" id="prev_thumb" data-jcarouselcontrol="true" href="#" class="prev prev-thumb inactive"></a><a runat="server" id="next_thumb" data-jcarouselcontrol="true" href="#" class="next next-thumb"></a>
        <div runat="server" id="carousel_thumb" data-jcarousel="true" class="carousel carousel-thumb">
            <ul style="left: 0px; top: 0px;">
                <asp:ListView ID="lv_thumbs" runat="server">
                    <ItemTemplate>
                        <li class="" data-jcarouselcontrol="true">
                            <img src='<%#Eval("Thumb_Path") %>' data-toggle='<%#Eval("Video_Path") %>' alt="">
                        </li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    // Setup the carousels. Adjust the options for both carousels here.
    var carouselNavigation = $('#<%= carousel_thumb.ClientID%>').jcarousel();

    // We loop through the items of the navigation carousel and set it up
    // as a control for an item from the stage carousel.
    carouselNavigation.jcarousel('items').each(function () {
        var item = $(this);

        // This is where we actually connect to items.

        item.on('click', function () {
            $('#<%=carousel_video.ClientID %>').attr('src', $(this).children().attr('data-toggle'));
        }).on('jcarouselcontrol:active', function () {
            carouselNavigation.jcarousel('scrollIntoView', this);
            item.addClass('active');
        })
                    .on('jcarouselcontrol:inactive', function () {
                        item.removeClass('active');
                    })
                    .jcarouselControl({
                        target: item
                    });
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
