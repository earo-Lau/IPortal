<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyCommunity.aspx.cs" Inherits="CADA.Portal.Sponsorship.MyCommunity" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body>
    <%--<h1>
        我是Community页面</h1>--%>
    <div>
        <div class="row-fluid">
            <div class="block">
                <div class="head">
                    <h4>
                        小区相片</h4>
                </div>
                <div class="data">
                    <Slider:JCarousel ID="Pic_Slider" runat="server" />
            </div>
            <div class="block">
                <div class="head">
                    <h4>
                        小区视频</h4>
                </div>
                <div class="data">
                    <Slider:JCarousel_Video ID="Video_Slider" runat="server" />
                </div>
            </div>
            
        </div>
    </div>
</body>
