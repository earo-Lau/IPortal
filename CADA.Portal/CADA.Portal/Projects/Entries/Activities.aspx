<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="CADA.Portal.Projects.Entries.Activities" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--<head runat="server">
    <title></title>
    <link href="../../Content/@Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
</head>--%>
<body>
    <div id="pro_act" class="clearfix">
        <a id="btnViewAll" class="button red">查看所有项目活动 ›</a>
        <div class="clear_placeholder">
        </div>
        <asp:ListView runat="server" ID="lit_Activities" GroupItemCount="3">
            <GroupTemplate>
                <div class="clearfix">
                    <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                </div>
            </GroupTemplate>
            <LayoutTemplate>
                <div id="activities_wrap">
                    <asp:PlaceHolder runat="server" ID="groupPlaceholder"></asp:PlaceHolder>
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <div class="one_third acitivites">
                    <a>
                        <img src="<%#Eval("img_Path") %>" />
                        <h4>
                            <%#Eval("Title") %></h4>
                        <p>
                            <%#Eval("Content") %></p>
                    </a>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</body>
