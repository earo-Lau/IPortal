<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GreetingCards.aspx.cs" Inherits="CADA.Portal.Sponsorship.GreetingCards" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<body>
    <!--<h1>
        我是Greeting Cards页面</h1>-->
    <div class="Cards_Wrap">
        <div class="one_half">
            <h4>
                你寄来的贺卡</h4>
            <asp:ListView ID="lv_LeftCard" runat="server">
                <ItemTemplate>
                    <div class="Cards">
                        <img src="<%#Eval("pic_Path") %>" />
                        <p>
                            <%#Eval("Card_Content")%></p>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <div class="one_half_last">
            <h4>
                我寄给你的贺卡</h4>
            <asp:ListView ID="lv_RightCard" runat="server">
                <ItemTemplate>
                    <div class="Cards">
                        <img src="<%#Eval("pic_Path") %>" />
                        <p>
                            <%#Eval("Card_Content")%></p>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <%--<asp:ListView ID="lv_Cards" runat="server">
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
        --%>
    </div>
    <div class="clear_placeholder">
    </div>
</body>
