<%@ Page Title="我助养的儿童" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CADA.Portal.Sponsorship.Index" %>

<%@ MasterType VirtualPath="~/MySite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="three_fourth left_Context" style="background: #ffb3a7;">
        <div id="MyChildren">
            <asp:Button ID="btnView_Children" runat="server" Text="查看所有儿童" CssClass="button red small" />
            <asp:Button ID="btnSponsorOne" runat="server" Text="再助养一名儿童" CssClass="button red small" />
            <div>
                <asp:ListView runat="server" ID="lv_children">
                    <ItemTemplate>
                        <img src="~/Content/@images/test.jpg" />
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <hr />
        <div id="Child_Info">
            <div class="one_fourth left_Context">
                <img src="xxx" />
                <asp:Button ID="btn_Child_Pic" runat="server" Text="我的所有照片" CssClass="button orange small" />
                <asp:Button ID="btn_Print_Pic" runat="server" Text="打印我的照片" CssClass="button orange small" />
                <asp:Button ID="btn_Mail_Card" runat="server" Text="给我寄一张卡" CssClass="button orange small" />
                <asp:Button ID="btn_Share" runat="server" Text="向亲友分享" CssClass="button orange small" />
                <asp:Button ID="btn_Visit_Me" runat="server" Text="申请探访我" CssClass="button orange small" />
                <asp:Button ID="btn_Dornate" runat="server" Text="捐款" CssClass="button orange small" />
            </div>
            <div class="three_fourth_last">
                <div class="share_media">
                    <%--<!-- JiaThis Button BEGIN -->
                    <div class="jiathis_style">
                        <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">分享：</a>
                    </div>
                    <script type="text/javascript">
                        var jiathis_config = {
                            summary: "Summary",
                            title: "Title",
                            shortUrl: true,
                            hideMore: false
                        }
                    </script>
                    <script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js?uid=1394157903591567" charset="utf-8"></script>
                    <!-- JiaThis Button END -->--%>
                </div>
                <section>
                    <article>
                        <p class="name">
                            Tony&nbsp;&nbsp;&nbsp;8岁</p>
                        <p class="intral">
                            你好！我是您助养的儿童。我叫TONY，来自XXX，今年8岁啦！</p>
                        <p class="visit_title">
                            新的访视内容
                        </p>
                        <p class="visit_content">
                            新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容 新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容新的访视内容 新的访视内容新的访视内容新的访视内容
                        </p>
                        <p>
                            以上内容更新于XX年XX月XX日
                        </p>
                    </article>
                    <hr />
                    <div class="donors">
                        <p>
                            我是由以下捐助者助养：</p>
                        <asp:Literal ID="lit_donors" runat="server"></asp:Literal>
                    </div>
                </section>
            </div>
            <div class="clear_placeholder">
            </div>
        </div>
        <div id="Child_Tabs" class="tab-container" role="tablist">
            <ul class="nav nav-tabs">
                <li class="active"><a href="<%=GetRouteUrl("sponsorship",new {id=ChildId, ajaxAction="MyIntroduce"}) %>">我的介绍</a></li>
                <li><a href="<%=GetRouteUrl("sponsorship",new {id=ChildId, ajaxAction="MyCommunity"}) %>">我的小区介绍</a></li>
                <li><a href="<%=GetRouteUrl("sponsorship",new {id=ChildId, ajaxAction="GreetingCards"}) %>">我和你的贺卡</a></li>
                <li><a href="<%=GetRouteUrl("sponsorship",new {id=ChildId, ajaxAction="MyActivities"}) %>">我在活动中收获了</a></li>
            </ul>
            <div class="tab-wrap">
            <div id="tab-page" class="tab-page">
                
            </div>
            </div>
            <script type="text/javascript">
                $(function () {

                    $('#Child_Tabs a').click(function (e) {
                        e.preventDefault();
                        $('#Child_Tabs .nav-tabs li').removeClass('active');
                        $(this).parent().addClass('active');
                        $.ajax({
                            url: $(this).attr("href"),
                            type: 'GET',
                            success: function (data) {
                                $('#tab-page').html(data);
                            }
                        });
                    })
                    $('#Child_Tabs li.active a').click();
                });
            </script>
        </div>
    </div>
    <%--<div id="asideBar" class="one_fourth_last" style="background: #f9906f;">
        <h3 class="centerText">
            其他等待捐助的
        </h3>
        <div id="waiting_Child">
            <asp:ListView ID="lv_Waiting" runat="server">
                <ItemTemplate>
                    <div class="childBlock">
                        <img src="xxx" />
                        <br />
                        <asp:Button ID="btn_Sponsor_Him" runat="server" Text="立即助养" CssClass="button blue" /></div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>--%>
    <aside:Children CssClass="one_fourth_last" runat="server">
    </aside:Children>
</asp:Content>
