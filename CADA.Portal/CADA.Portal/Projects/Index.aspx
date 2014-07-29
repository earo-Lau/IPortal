<%@ Page Title="" Language="C#" MasterPageFile="~/Projects/ProjectSite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CADA.Portal.Projects.Index" %>

<%@ MasterType VirtualPath="~/Projects/ProjectSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pro_HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pro_MainContent" runat="server">
    <div class="clearfix">
        <div id="pro_Map" style="height: 200px; background: #70f3ff;">
            <asp:Literal ID="lit_map" runat="server"></asp:Literal>
            项目地图
        </div>
        <hr />
        <div id="pro_target">
            <Project:Target ID="target1" runat="server" />
            <Project:Target ID="target2" runat="server" />
            <Project:Target ID="target3" runat="server" />
            <Project:Target ID="target4" runat="server" />
        </div>
        <hr class="clear" />
        <div id="pro_intro" style="background:#4c8dae;">
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
