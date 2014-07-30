<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="CADA.Portal.Projects.Entries.Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head runat="server">
    <title></title>
    <link href="../../Content/@Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="pro_Report" class="clearfix">
        <div id="Manager_Video">
            <h4 style="float: left;">
                项目年报</h4>
            <div class="dropdown" style="float: right;">
                <a class="btn btn-default dropdown-toggle" id="ddl_Year" data-toggle="dropdown">请选择年报年份&nbsp;&nbsp;<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="ddl_Year">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">2014年年报</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">2015年年报</a></li>
                </ul>
            </div>
            <div class="clear_placeholder">
            </div>
            <div class="video_Content">
                <h4>
                    项目经理的VIDEO</h4>
                <video>
                </video>
            </div>
        </div>
        <div class="clear">
            <hr />
        </div>
        <div id="Activities_Content">
            <asp:Literal ID="lit_Content" runat="server"></asp:Literal>
            <div class="one_fourth">
                <img src="xxx" />
            </div>
            <div class="three_fourth_last">
                文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容
            </div>
        </div>
    </div>
</body>
