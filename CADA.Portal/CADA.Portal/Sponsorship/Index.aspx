<%@ Page Title="我助养的儿童" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CADA.Portal.Sponsorship.Index" %>

<%@ MasterType VirtualPath="~/MySite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="clearfix">
        <div class=" sponsorship_wrap span9">
            <div id="MyChildren" class="row-form">
                <asp:Button ID="btnView_Children" runat="server" Text="查看所有儿童" CssClass="btn btn-large" />
                <asp:Button ID="btnSponsorOne" runat="server" Text="再助养一名儿童" CssClass="btn btn-large" />
                <div>
                    <asp:ListView runat="server" ID="lv_children">
                        <ItemTemplate>
                            <img src="~/Content/@images/test.jpg" />
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
            <div class="row-form">
                <div id="Child_Info">
                    <div class="row-form">
                        <div class="span3">
                            <img src="xxx" />
                        </div>
                        <div class="span9">
                            <section>
                                <article>
                                    <div class="name span3">
                                        <asp:Label ID="lab_Name" runat="server" CssClass="name" Text="萱萱"></asp:Label>
                                    </div>
                                    <div class="id span5">
                                        助养儿童编号:
                                        <asp:Label ID="lab_ID" runat="server" CssClass="name" Text="XXX"></asp:Label>
                                    </div>
                                    <div class="sponsor_date span4">
                                        助养日期:<asp:Label ID="lab_sponsor_Date" runat="server" CssClass="name" Text=""></asp:Label>
                                    </div>
                                    <div>
                                        <asp:Label ID="lab_descript" runat="server" Text="你好！我是您助养的儿童。我叫Sheilla，来自XXX，今年8岁啦！"></asp:Label>
                                    </div>
                                </article>
                                <hr />
                                <div id="donors">
                                    <p>
                                        我是由以下捐助者助养：</p>
                                    <%--<asp:Literal ID="lit_donors" runat="server"></asp:Literal>--%>
                                    <asp:ListView ID="lv_donors" runat="server">
                                        <ItemTemplate>
                                            <span class="donor">
                                                <%#Eval("Donor_Name") %></span>
                                        </ItemTemplate>
                                    </asp:ListView>
                                    <asp:LinkButton ID="link_ToAnother" runat="server" CssClass="donor another btn btn-link" Text="介绍我给另一位愿意助养的人"></asp:LinkButton>
                                </div>
                            </section>
                        </div>
                    </div>
                    <hr />
                    <div class="row-form">
                        <div class="row-form">
                            <asp:Button ID="btn_Child_Pic" runat="server" Text="我的所有照片" CssClass="btn btn-info btn-large" />
                            <asp:Button ID="btn_Print_Pic" runat="server" Text="打印我的照片" CssClass="btn btn-info btn-large" />
                        </div>
                        <div class="row-form">
                            <asp:Button ID="btn_Mail_Card" runat="server" Text="给我寄一张卡" CssClass="btn btn-danger btn-large" />
                            <asp:Button ID="btn_Share" runat="server" Text="分享助养旅程" CssClass="btn btn-danger btn-large" />
                            <asp:Button ID="btn_Visit_Me" runat="server" Text="申请探访我" CssClass="btn btn-danger btn-large" />
                        </div>
                    </div>
                </div>
            </div>
            <div id="Child_Tabs" class="tab-container" role="tablist">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="<%=GetRouteUrl("sponsorship",new {id=ChildId, ajaxAction="MyIntroduce"}) %>">我的介绍</a></li>
                    <li><a href="<%=GetRouteUrl("sponsorship",new {id=ChildId, ajaxAction="MyCommunity"}) %>">我的小区介绍</a></li>
                    <li><a href="<%=GetRouteUrl("sponsorship",new {id=ChildId, ajaxAction="GreetingCards"}) %>">我和你的贺卡</a></li>
                    <li><a href="<%=GetRouteUrl("sponsorship",new {id=ChildId, ajaxAction="MyAcquisition"}) %>">我在活动中收获了</a></li>
                </ul>
            </div>
            <div class="tab-wrap row-form">
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
        <aside:Children ID="Children1" CssClass="span3 side_children" runat="server"></aside:Children>
    </div>
</asp:Content>
