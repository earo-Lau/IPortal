<%@ Page Title="我的主页" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CADA.Portal._Default" %>

<%@ MasterType VirtualPath="~/MySite.master" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="index_wrap clearfix">
        <div class="row-fluid" style="margin-bottom:20px;">
            <div class="span8" style="background: #FFF5DC;">
                <div class="block">
                    <div class="title head">
                        <h3>
                            Welcome back to know their world
                        </h3>
                    </div>
                    <div id="myChild" class="data">
                        <div class="title_Left">
                            我助养的儿童
                        </div>
                        <div class="title_Right">
                            查看所有已助养的儿童</div>
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
            <div id="Inbox" class="span4">
                <div class="block">
                    <div class="title head">
                        <h2 class="cn">收信箱</h2>
                        <br />
                        <h2 class="en">Inbox</h2>
                    </div>
                    <div class="data">
                        <ul>
                            <asp:ListView ID="lv_Inbox" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="new_info">
                                            <a>
                                                <%#Eval("Info") %></a> <span class="date">2014-07-21</span>
                                            <div class="clear">
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:ListView>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div id="Events" class="span4">
                <div class="block">
                    <div class="head title">
                        <h2 class="cn">最新活动信息</h2>
                        <br />
                        <h2 class="en">Latest Event</h2>
                    </div>
                    <div class="info data">
                        <img src="#" />
                        <h3>
                            活动标题</h3>
                        <p>
                            活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容</p>
                    </div>
                </div>
            </div>
            <div id="Project" class="span4">
                <div class="block">
                    <div class="head title">
                        <h2 class="cn">最新项目进展</h2>
                        <br />
                        <h2 class="en">Recent Progress of the Project</h2>
                    </div>
                    <div class="info data">
                        <img src="#" />
                        <h3>
                            项目标题</h3>
                        <p>
                            项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容项目内容</p>
                    </div>
                </div>
            </div>
            <div id="Social" class="span4">
                <div class="block">
                    <div class="head title">
                        <h2 class="cn">社交媒体分享</h2>
                        <br />
                        <h2 class="en">Share in Social Media</h2>
                    </div>
                    <div class="info data">
                        <img src="#" />
                        <h3>
                            活动标题</h3>
                        <p>
                            活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容活动内容</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
