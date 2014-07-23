<%@ Page Title="我的主页" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CADA.Portal._Default" %>

<%@ MasterType VirtualPath="~/MySite.master" %>
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
                <span class="cn">收信箱</span>
                <br />
                <span class="en">Inbox</span>
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
    <div class="clearfix">
    </div>
    <div id="Events" class="one_third">
        <div class="widget">
            <div class="title">
                <span class="cn">最新活动信息</span>
                <br />
                <span class="en">Latest Event</span>
            </div>
            <div class="info">
                <img src="#" />
                <h3>
                    活动标题</h3>
                <p>
                    活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容</p>
            </div>
        </div>
    </div>
    <div id="Project" class="one_third">
        <div class="widget">
            <div class="title">
                <span class="cn">最新项目进展</span>
                <br />
                <span class="en">Recent Progress of the Project</span>
            </div>
            <div class="info">
                <img src="#" />
                <h3>
                    项目标题</h3>
                <p>
                    项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容</p>
            </div>
        </div>
    </div>
    <div id="Social" class="one_third_last">
        <div class="widget">
            <div class="title">
                <span class="cn">社交媒体分享</span>
                <br />
                <span class="en">Share in Social Media</span>
            </div>
            <div class="info">
                <img src="#" />
                <h3>
                    活动标题</h3>
                <p>
                    活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容</p>
            </div>
        </div>
    </div>
</asp:Content>
