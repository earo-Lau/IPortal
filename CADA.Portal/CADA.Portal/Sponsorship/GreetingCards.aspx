<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GreetingCards.aspx.cs" Inherits="CADA.Portal.Sponsorship.GreetingCards" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<body>
    <!--<h1>
        我是Greeting Cards页面</h1>-->
    <div class="Cards_Wrap clearfix">
        <div class="span6">
            <div class="block">
                <div class="head">
                    <h4>
                        你寄给我的贺卡</h4>
                </div>
            </div>
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
        <div class="span6">
            <div class="block">
                <div class="head">
                    <h4>
                        我寄给你的贺卡</h4>
                </div>
            </div>
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
    </div>
</body>
