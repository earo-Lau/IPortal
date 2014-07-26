<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GreetingCards.aspx.cs" Inherits="CADA.Portal.Sponsorship.GreetingCards" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<%--<head>
    <title></title>
    <link href="../Content/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Content/@Styles/Site.css" rel="stylesheet" />
</head>--%>
<body>
    <h1>我是Greeting Cards页面</h1>
    <div class="Cards_Wrap">
        <%--<div class="one_half">
            <h4>你寄来的贺卡</h4>
            <div class="Cards left">
                <img src="xxx" />
                <p>贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字</p>
            </div>
            <div class="Cards left">
                <img src="xxx" />
                <p>贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字</p>
            </div>
        </div>
        <div class="vr"></div>
        <div class="one_half_last">
            <h4>我寄给你的贺卡</h4>
            <div class="Cards right">
                <img src="xxx" />
                <p>贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字贺卡文字</p>
            </div>
        </div>--%>
        <asp:ListView ID="lv_Cards" runat="server">
            <LayoutTemplate>
                <table>
                    <tr>
                        <th align="center">你寄来的贺卡</th>
                        <th align="center">我寄给你的贺卡</th>
                    </tr>
                    <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <table class="Card left">
                            <tr>
                                <td align="center">
                                    <img src="<%#Eval("pic_Path_Left") %>" alt="<%#Eval("pic_Alt_Left") %>" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span><%#Eval("Card_Content_Left") %></span>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table class="Card right">
                            <tr>
                                <td align="center">
                                    <img src="<%#Eval("pic_Path_Right") %>" alt="<%#Eval("pic_Alt_Right") %>" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span><%#Eval("Card_Content_Right") %></span>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>

    </div>
    <div class="clear_placeholder"></div>
</body>

</html>
