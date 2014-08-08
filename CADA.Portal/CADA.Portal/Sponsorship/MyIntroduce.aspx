<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyIntroduce.aspx.cs" Inherits="CADA.Portal.Sponsorship.MyIntroduce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body>
    <%--<h1>
        我是Introduce页面</h1>--%>
    <div id="Intro_Viedio">
        <video class="myViedio" controls>
            <source src="http://video-js.zencoder.com/oceans-clip.mp4" type='video/mp4' />
            your browser does not support the video tag
        </video>
    </div>
    <div id="Intro_Content">
        <p>
            我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍 我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍我的介绍</p>
        <asp:Literal ID="Intro_Content" runat="server">
        </asp:Literal>
    </div>
</body>
