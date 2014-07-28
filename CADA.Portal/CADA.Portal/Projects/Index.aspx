<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CADA.Portal.Projects.Index" %>

<%@ MasterType VirtualPath="~/MySite.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="<%=ResolveClientUrl("~/Content/@Scripts/prefix/js/prefixfree.min.js") %>" type="text/javascript"></script>
    <link href="<%=ResolveClientUrl("~/Content/@Scripts/prefix/css/style.css") %>" rel="stylesheet" type="text/css" />
    <style>
        #menu
        {
            width: 430px;
        }
        #menu li.second:hover ~ .current
        {
            left: 145px;
        }
        #menu li.third:hover ~ .current
        {
            left: 253px;
        }
        #menu li.fourth:hover ~ .current
        {
            left: 356px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="menu_wrap">
        <nav id="menu">
            <ul>
                <li class="first"><a href="#">项目介绍</a></li>
                <li class="second"><a href="#">甘肃宝鸡</a></li>
                <li class="third"><a href="#">陕西定西</a></li>
                <li class="fourth last"><a href="#">湖北荆州</a></li>
                <div class="current">
                    <div class="current-back">
                    </div>
                    <div class="bottom-arrow">
                    </div>
                </div>
            </ul>
        </nav>
    </div>
    <hr />
    <div>
        <div class="one_third">
            <video>
            </video>
        </div>
        <div class="two_third_last" style="height: 160px; background: #ca6924;">
            <asp:Literal ID="txtLetter" runat="server"></asp:Literal>
            <p>
                项目经理的信</p>
        </div>
        <div class="clear">

        <div id="Porject_Tabs" class="tab-container" role="tablist">
            <ul class="nav nav-tabs">
                <li class="active"><a href="">地区现况介绍</a></li>
                <li><a href="">项目活动</a></li>
                <li><a href="">项目年报</a></li>
            </ul>
            <div class="tab-wrap">
            <div id="tab-page" class="tab-page">
                
            </div>
            </div>
            <script type="text/javascript">
                $(function () {

                    $('#Porject_Tabs a').click(function (e) {
                        e.preventDefault();
                        $('#Porject_Tabs .nav-tabs li').removeClass('active');
                        $(this).parent().addClass('active');
                        $.ajax({
                            url: $(this).attr("href"),
                            type: 'GET',
                            success: function (data) {
                                $('#tab-page').html(data);
                            }
                        });
                    })
                    //$('#Porject_Tabs li.active a').click();
                });
            </script>
        </div>
        </div>
    </div>
</asp:Content>
