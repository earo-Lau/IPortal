<%@ Page Title="主页" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CADA.Portal._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="two_third" style="background: #FFF5DC;">
        <div class="widget">
            <div class="title welcomeTitle">
                Welcome back to know their world</div>
            <div id="myChild">
                <div>
                    <div class="title_Left">
                        我助养的儿童
                    </div>
                    <div class="title_Right">
                        查看所有已助养的儿童</div>
                </div>
                <div>
                    <asp:ListView runat="server" ID="lv_children">
                        <ItemTemplate>
                            <img src="~/Content/@images/test.jpg" />
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </div>
    <div id="Inbox" class="one_third_last">
        <div class="widget">
            <div class="title">
                收信箱
                <br />
                这里应该是个图片
            </div>
            <ul>
                <asp:ListView ID="lv_Inbox" runat="server">
                    <ItemTemplate>
                        <li>
                            <div class="new_info">
                                <a>
                                    <%#Eval("Info") %></a> <span class="date">2014-07-21</span>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
    </div>
</asp:Content>
