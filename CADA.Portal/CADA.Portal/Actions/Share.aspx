<%@ Page Title="" Language="C#" MasterPageFile="~/Actions/ActionSite.master" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="CADA.Portal.Actions.Share" %>

<%@ MasterType VirtualPath="~/Actions/ActionSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="<%=ResolveUrl("~/Content/Aries/css/stepywizard/jquery.stepy.css") %>" rel="stylesheet" type="text/css" />
    <script src="<%=ResolveUrl("~/Content/Aries/js/plugins/stepywizard/jquery.stepy.js") %>" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ul class="stepy-titles" id="Share_Form-titles">
        <li class="<%=Stepy[0] %>" id="Share_Form-title-0">
            <div>
                Step 1</div>
            <span>选择要分享的儿童故事</span></li>
        <li class="<%=Stepy[1] %>" id="Share_Form-title-1">
            <div>
                Step 2</div>
            <span>预览分享页面</span></li>
        <li class="<%=Stepy[2] %>" id="Share_Form-title-2">
            <div>
                Step 3</div>
            <span>分享助养旅程</span></li>
    </ul>
    <div id="Share_Form" class="row-form">
        <asp:Panel ID="panel_Form" runat="server">
            <div>
                <div class="block">
                    <div class="head">
                        <h4>
                            请选择一个儿童故事</h4>
                    </div>
                    <div id="share_child" class="data">
                        <Slider:JCarousel ID="Child_Slider" runat="server" />
                    </div>
                </div>
                <div class="block">
                    <div class="head">
                        <h4>
                            请选择一段小区照片</h4>
                    </div>
                    <div id="Share_Community_Pic" class="data">
                        <Slider:JCarousel ID="Community_Pic_slider" runat="server" />
                    </div>
                </div>
                <div class="block">
                    <div class="head">
                        <h4>
                            请选择一段小区Video</h4>
                    </div>
                    <div id="Share_Community_Video" class="data">
                        <Slider:JCarousel_Video ID="Community_Video_slider" runat="server" />
                    </div>
                </div>
                <div class="button-box">
                    <asp:Button ID="btn_submit" runat="server" Text="下一步" CssClass="btn btn-success button-next" onclick="btn_submit_Click" />
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="panel_Preview" runat="server" Visible="false">
            <asp:Literal ID="lit_Preview" runat="server">
            </asp:Literal>
            <div class="button-box">
                <asp:Button ID="btn_Back" runat="server" Text="上一步" CssClass="btn btn-success button-back" onclick="btn_Back_Click" />
                <asp:Button ID="btn_Create" runat="server" Text="创建分享" CssClass="btn btn-success button-next" onclick="btn_Create_Click" />
            </div>
        </asp:Panel>
        <asp:Panel ID="panel_Share" runat="server" Visible="false">
            <div class="share_link">
                <div style="top: 50%; position: relative;">
                    你好，你想要分享的内容已生成如下链接:
                    <asp:LinkButton runat="server" ID="link_share"></asp:LinkButton>
                </div>
            </div>
            <div class="button-box">
                <asp:Button ID="btn_Share" runat="server" Text="分享链接" CssClass="btn btn-success finish" onclick="btn_Share_Click" />
            </div>
        </asp:Panel>
    </div>
</asp:Content>
