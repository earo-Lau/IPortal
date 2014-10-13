<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="CADA.Portal.Admin.Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--标题 开始 -->
    <div class="page-header">
        <div class="icon">
            <span class="ico-stack-3"></span>
        </div>
        <h1>
            项目年报 <small>
                <%=_Region %></small></h1>
    </div>
    <!--结束 标题-->
    <!--内容 开始 -->
    <div class="row-fluid">
        <div class="span12">
            <div class="block">
                <div class="head orange clearfix">
                    <div class="icon">
                        <i class="ico-stack-2"></i>
                    </div>
                    <h2>
                        项目介绍VIDEO</h2>
                    <div class="items">
                        <ul class="buttons">
                            <li><a href="#" class="btn">
                                <%--<div class="icon">
                                    <span class="ico-cog"></span>
                                </div>--%>
                                <asp:Label ID="lab_Report" runat="server" Text="2014年年报"></asp:Label>
                            </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Add new</a></li>
                                    <li><a href="#">Upload</a></li>
                                    <li><a href="#">Search</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Clear folder</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--结束 内容-->
</asp:Content>
