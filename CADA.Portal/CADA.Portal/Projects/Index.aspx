<%@ Page Title="" Language="C#" MasterPageFile="~/Projects/ProjectSite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CADA.Portal.Projects.Index" %>

<%@ MasterType VirtualPath="~/Projects/ProjectSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pro_HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pro_MainContent" runat="server">
    <div class="clearfix project_wrap">
        <div id="pro_Map" class="row-form">
            <asp:Literal ID="lit_map" runat="server"></asp:Literal>
            项目地图
            <hr />
        </div>
        <div class="row-form">
            <Project:Target CssClass="span6 pro_target" ID="target1" runat="server" />
            <Project:Target CssClass="span6 pro_target" ID="target2" runat="server" />
        </div>
        <div class="row-form">
            <Project:Target CssClass="span6 pro_target" ID="target3" runat="server" />
            <Project:Target CssClass="span6 pro_target" ID="target4" runat="server" />
        </div>
        <div id="pro_intro" class="row-form">
            <hr class="clear" />
            <asp:Literal ID="pro_Content" runat="server"></asp:Literal>
            <p>
                图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍</p>
            <p>
                图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍</p>
            <p>
                图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍图文介绍</p>
        </div>
    </div>
</asp:Content>
