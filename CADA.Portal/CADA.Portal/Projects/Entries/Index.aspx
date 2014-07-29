<%@ Page Title="" Language="C#" MasterPageFile="~/Projects/ProjectSite.master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CADA.Portal.Projects.Entries.Index" %>

<%@ MasterType VirtualPath="~/Projects/ProjectSite.master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="pro_HeadContent">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="pro_MainContent">
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
                    <li class="active"><a href='<%=GetRouteUrl("project", new{ id=currentID, entry="Entries/Info" }) %>'>地区现况介绍</a></li>
                    <li><a href='<%=GetRouteUrl("project", new{ id=currentID, entry="Entries/Activities" }) %>'>项目活动</a></li>
                    <li><a href='<%=GetRouteUrl("project", new{ id=currentID, entry="Entries/Report" }) %>'>项目年报</a></li>
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
                        $('#Porject_Tabs li.active a').click();
                    });
                </script>
            </div>
        </div>
    </div>
</asp:Content>
