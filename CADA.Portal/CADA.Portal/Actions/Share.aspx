<%@ Page Title="" Language="C#" MasterPageFile="~/Actions/ActionSite.master" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="CADA.Portal.Actions.Share" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Share_Progress" class="clearfix">
        <div class="one_fourth" style="background: #d4f2e;">
            1请选择想要分享的儿童故事
        </div>
        <div class="one_fourth" style="background: #c0ebd7;">
            2预览分享页面
        </div>
        <div class="one_fourth" style="background: #a4e2c6;">
            3分享助养旅程
        </div>
    </div>
    <asp:Panel ID="panel_Form" runat="server">
        <div id="Share_Form">
            <h3>
                请选择一个儿童故事</h3>
            <div id="share_child">
                <Slider:JCarousel ID="Child_Slider" runat="server" />
            </div>
            <h3>
                请选择一段小区照片</h3>
            <div id="Share_Community_Pic">
                <Slider:JCarousel ID="Community_Pic_slider" runat="server" />
            </div>
            <h3>
                请选择一段小区Video</h3>
            <div id="Share_Community_Video">
                <Slider:JCarousel ID="Community_Video_slider" runat="server" />
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="panel_Preview" runat="server">
        <asp:Literal ID="lit_Preview" runat="server">
        </asp:Literal>
    </asp:Panel>
    <asp:Panel ID="panel_Share" runat="server">
    </asp:Panel>
    <hr />
    <div style="text-align: right;">
        <asp:Button ID="btn_Preview" runat="server" Text="下一步" CssClass="button green" OnClick="btn_Preview_Click" />
        <asp:Button ID="btn_Share" runat="server" Text="下一步" CssClass="button green" OnClick="btn_Share_Click" Visible="false" />
    </div>
</asp:Content>
