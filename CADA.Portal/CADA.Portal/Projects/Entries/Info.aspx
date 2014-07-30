<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="CADA.Portal.Projects.Entries.Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
        <h3>
            小区相片</h3>
        <div id="pro_Pic">
            <Slider:JCarousel ID="Pic_Slider" runat="server" />
        </div>
        <h3>
            小区视频</h3>
        <div id="pro_Video">
            <Slider:JCarousel ID="video_Slider" runat="server" />
        </div>
        <hr />
        <div id="pro_Content">
            <h4>
                <asp:Literal ID="lit_Content_Title" runat="server"></asp:Literal></h4>
            <asp:Literal ID="lit_Content" runat="server"></asp:Literal>
            地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字 地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字地区分享文字
        </div>
    </div>
</body>
