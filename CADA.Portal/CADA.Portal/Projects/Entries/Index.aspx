<%@ Page Title="" Language="C#" MasterPageFile="~/Projects/ProjectSite.master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CADA.Portal.Projects.Entries.Index" %>

<%@ MasterType VirtualPath="~/Projects/ProjectSite.master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="pro_HeadContent">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="pro_MainContent">
    <div class="row-form">
        <div class="span6">
            <div class="block">
                <div class="head">
                    <h4>
                        项目介绍VIDEO</h4>
                </div>
                <div class="data">
                    <video style="height: 100%; width: 100%;" controls>
                    </video>
                </div>
            </div>
        </div>
        <div id="pro_introduce" class="span6">
            <div class="block">
                <div class="head">
                    <h4>
                        一段人性化的项目介绍</h4>
                </div>
                <div class="data">
                    <p>
                        我很荣幸参与这个项目，令我得到机会去更多地帮助这些需要得到社会关注的残疾儿童...
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="clear">
        <div id="Porject_Tabs" class="tab-container" role="tablist">
            <ul class="nav nav-tabs">
                <li class="active"><a href='<%=GetRouteUrl("project", new{ id=currentID, entry="Entries/Info" }) %>'>地区现况介绍</a></li>
                <li><a href='<%=GetRouteUrl("project", new{ id=currentID, entry="Entries/Activities" }) %>'>项目活动</a></li>
                <li><a href='<%=GetRouteUrl("project", new{ id=currentID, entry="Entries/Report" }) %>'>项目年报</a></li>
            </ul>
            <div class="tab-wrap">
                <div id="tab-page" class="tab-page row-form">
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
</asp:Content>
