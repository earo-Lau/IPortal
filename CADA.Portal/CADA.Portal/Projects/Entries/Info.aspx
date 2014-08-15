<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="CADA.Portal.Projects.Entries.Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body>
    <div>
        <h4>
            小区相片</h4>
        <div id="pro_Pic">
            <Slider:JCarousel ID="Pic_Slider" runat="server" />
        </div>
        <h4>
            小区视频</h4>
        <div id="pro_Video">
            <Slider:JCarousel_Video ID="Video_Slider" runat="server" />
        </div>
        <hr />
        <div id="pro_Content" class="block">
            <div class="head">
                <h4>
                    湖北省
                    <asp:Literal ID="lit_Content_Title" runat="server"></asp:Literal></h4>
            </div>
            <div class="data">
                <asp:Literal ID="lit_Content" runat="server"></asp:Literal>
                地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字 地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字
            </div>
        </div>
    </div>
</body>
