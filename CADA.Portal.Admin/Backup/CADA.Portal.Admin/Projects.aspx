<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="CADA.Portal.Admin.Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="<%=ResolveClientUrl("~/Content/js/plugins/fancybox/jquery.fancybox.pack.js") %>"></script>
    <script type="text/javascript" charset="utf-8" src="<%=ResolveClientUrl("~/Content/ueditor/ueditor.config.js") %>"></script>
    <script type="text/javascript" charset="utf-8" src="<%=ResolveClientUrl("~/Content/ueditor/ueditor.all.js") %>"> </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--标题 开始 -->
    <div class="page-header">
        <div class="icon">
            <span class="ico-group"></span>
        </div>
        <h1>
            项目支持 <small>
                <%=_Region %></small></h1>
    </div>
    <!--结束 标题-->
    <!--内容 开始 -->
    <!--项目介绍 开始 -->
    <div class="block title">
        <div class="head">
            <h2>
                项目介绍</h2>
            <ul class="buttons">
                <li><a href="#_DIV_Project_Intro" class="cblock">
                    <div class="icon">
                        <span class="ico-sort"></span>
                    </div>
                </a></li>
            </ul>
        </div>
    </div>
    <div id="_DIV_Project_Intro" class="row-fluid">
        <div class="span4">
            <div class="block">
                <div class="head purple clearfix">
                    <div class="icon">
                        <i class="ico-film-2"></i>
                    </div>
                    <h2>
                        项目介绍VIDEO</h2>
                    <div class="items">
                        <asp:Button ID="btn_Project_Video_Edit" runat="server" CssClass="btn red" Text="编辑" OnClick="btn_Project_Video_Edit_Click" />
                    </div>
                </div>
                <div class="data">
                    <asp:Panel ID="panel_Project_Video" runat="server">
                        <video src="" controls>
                        </video>
                    </asp:Panel>
                    <asp:Panel ID="panel_Project_Video_Edit" runat="server" Visible="false">
                        <div class="row-form">
                            <div class="span12">
                                请选择上传的视频：
                                <div class="input-append file">
                                    <asp:FileUpload ID="file_Acitivities" runat="server" name="file" />
                                    <input type="text" />
                                    <button class="btn red" onclick="return false;">
                                        浏览</button>
                                </div>
                            </div>
                        </div>
                        <div class="row-form rightbtn">
                            <asp:Button ID="btn_Project_Video_Confirm" runat="server" Text="保存" CssClass="btn red" OnClick="btn_Project_Video_Confirm_Click" />
                            <asp:Button ID="btn_Project_Video_Cancel" runat="server" Text="取消" CssClass="btn red" OnClick="btn_Project_Video_Cancel_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
        <div class="span4">
            <div class="block">
                <div class="head purple dpurple clearfix">
                    <div class="icon">
                        <i class="ico-list"></i>
                    </div>
                    <h2>
                        项目介绍文本</h2>
                    <div class="items">
                        <asp:Button ID="btn_Project_Intro" runat="server" CssClass="btn red" Text="编辑" OnClick="btn_Project_Intro_Click" />
                    </div>
                </div>
                <div class="data">
                    <asp:Panel ID="panel_Project_Intro" runat="server">
                        <div class="block">
                            <div class="head">
                                <h4>
                                    <asp:Label ID="lab_Project_Intro_Title" runat="server" Text="项目介绍标题"></asp:Label></h4>
                            </div>
                            <div class="data">
                                <asp:Literal ID="lit_Project_Intro_Context" runat="server" Text="介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容"></asp:Literal>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="panel_Project_Intro_Edit" runat="server" Visible="false">
                        <div class="row-form">
                            <div class="span2">
                                标题
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Project_Intro_Title" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                内容
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Project_Intro_Context" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form rightbtn">
                            <asp:Button ID="btn_Project_Intro_Confirm" runat="server" Text="保存" CssClass="btn red" OnClick="btn_Project_Intro_Confirm_Click" />
                            <asp:Button ID="btn_Project_Intro_Cancel" runat="server" Text="取消" CssClass="btn red" OnClick="btn_Project_Intro_Cancel_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
        <div class="span4">
            <div class="block">
                <div class="head purple lpurple clearfix">
                    <div class="icon">
                        <i class="ico-list"></i>
                    </div>
                    <h2>
                        项目介绍文本(英文)</h2>
                    <div class="items">
                        <asp:Button ID="btn_Project_Intro_EN" runat="server" CssClass="btn red" Text="编辑" OnClick="btn_Project_Intro_EN_Click" />
                    </div>
                </div>
                <div class="data">
                    <asp:Panel ID="panel_Project_Intro_EN" runat="server">
                        <div class="block">
                            <div class="head">
                                <h4>
                                    <asp:Label ID="lab_Project_Intro_Title_EN" runat="server" Text="项目介绍标题"></asp:Label></h4>
                            </div>
                            <div class="data">
                                <asp:Literal ID="lit_Project_Intro_Context_EN" runat="server" Text="介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容介绍内容"></asp:Literal>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="panel_Project_Intro_Edit_EN" runat="server" Visible="false">
                        <div class="row-form">
                            <div class="span2">
                                标题
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Project_Intro_Title_EN" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                内容
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Project_Intro_Context_EN" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form rightbtn">
                            <asp:Button ID="btn_Project_Intro_Confirm_EN" runat="server" Text="保存" CssClass="btn red" OnClick="btn_Project_Intro_Confirm_EN_Click" />
                            <asp:Button ID="btn_Project_Intro_Cancel_EN" runat="server" Text="取消" CssClass="btn red" OnClick="btn_Project_Intro_Cancel_EN_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
    <!--结束 项目介绍 -->
    <!--项目情况 开始 -->
    <div class="block title">
        <div class="head">
            <h2>
                项目情况</h2>
            <ul class="buttons">
                <li><a href="#_DIV_Project_Info" class="cblock">
                    <div class="icon">
                        <span class="ico-sort"></span>
                    </div>
                </a></li>
            </ul>
        </div>
    </div>
    <div id="_DIV_Project_Info">
        <!--相片 开始-->
        <div class="row-fluid">
            <div class="span12">
                <div class="block">
                    <div class="head green">
                        <div class="icon">
                            <span class="ico-picture"></span>
                        </div>
                        <h2>
                            小区相片</h2>
                        <div class="items">
                            <a id="AddPhoto" href="Photos/<%=_Region_Id %>/Add" role="button" class="btn red">新增相片</a>
                        </div>
                    </div>
                    <div class="data-fluid">
                        <asp:ListView ID="lv_Community_Photo" runat="server">
                            <LayoutTemplate>
                                <table cellpadding="0" cellspacing="0" width="100%" class="table images lcnp">
                                    <thead>
                                        <tr>
                                            <th width="60">
                                                相片
                                            </th>
                                            <th>
                                                文字介绍
                                            </th>
                                            <th width="100">
                                                摄于
                                            </th>
                                            <th width="60">
                                                发布日期
                                            </th>
                                            <th width="80">
                                                操作
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                                    </tbody>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <a class="fb" rel="group" href="<%#Eval("Path") %>">
                                            <img src="<%#Eval("Path_Thumb") %>" class="img-polaroid" /></a>
                                    </td>
                                    <td class="info">
                                        <span>
                                            <%#Eval("Message") %></span>
                                    </td>
                                    <td>
                                        <span>
                                            <%#Eval("Produce_By") %></span>
                                    </td>
                                    <td>
                                        <span>
                                            <%#Eval("Publish_Day") %></span>
                                    </td>
                                    <td>
                                        <a href="Photos/<%=_Region_Id %>/Edit/<%#Eval("SID") %>" class="button green EditPhoto">
                                            <div class="icon">
                                                <span class="ico-pencil"></span>
                                            </div>
                                        </a>
                                        <asp:LinkButton ID="lnk_Del" runat="server" CssClass="button red">
                                        <div class="icon">
                                            <span class="ico-remove"></span>
                                        </div>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
        </div>
        <!--结束 相片-->
        <!--视频 开始-->
        <div class="row-fluid">
            <div class="span12">
                <div class="block">
                    <div class="head green dgreen">
                        <div class="icon">
                            <span class="ico-film"></span>
                        </div>
                        <h2>
                            小区视频</h2>
                        <div class="items">
                            <a id="AddVideo" href="Videos/<%=_Region_Id %>/Add" role="button" class="btn red">新增视频</a>
                        </div>
                    </div>
                    <div class="data-fluid">
                        <asp:ListView ID="lv_Community_Video" runat="server">
                            <LayoutTemplate>
                                <table cellpadding="0" cellspacing="0" width="100%" class="table images lcnp">
                                    <thead>
                                        <tr>
                                            <th width="60">
                                                视频
                                            </th>
                                            <th>
                                                文字介绍
                                            </th>
                                            <th width="100">
                                                摄于
                                            </th>
                                            <th width="60">
                                                发布日期
                                            </th>
                                            <th width="80">
                                                操作
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                                    </tbody>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <a class="fb" rel="group" href="<%#Eval("Path") %>">
                                            <img src="<%#Eval("Path_Thumb") %>" class="img-polaroid" /></a>
                                    </td>
                                    <td class="info">
                                        <span>
                                            <%#Eval("Message") %></span>
                                    </td>
                                    <td>
                                        <span>
                                            <%#Eval("Produce_By") %></span>
                                    </td>
                                    <td>
                                        <span>
                                            <%#Eval("Publish_Day") %></span>
                                    </td>
                                    <td>
                                        <a href="Videos/<%=_Region_Id %>/Edit/<%#Eval("SID") %>" class="button green EditVideo">
                                            <div class="icon">
                                                <span class="ico-pencil"></span>
                                            </div>
                                        </a>
                                        <asp:LinkButton ID="lnk_Del" runat="server" CssClass="button red">
                                        <div class="icon">
                                            <span class="ico-remove"></span>
                                        </div>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
        </div>
        <!--结束 视频-->
        <!--项目情况 描述 开始 -->
        <div class="row-fluid">
            <div class="span12">
                <div class="block">
                    <div class="head green ddgreen">
                        <div class="icon">
                            <span class="ico-indent-left"></span>
                        </div>
                        <h2>
                            项目情况描述</h2>
                        <div class="items">
                            <%--<a id="A1" href="Videos/<%=_Region_Id %>/Add" role="button" class="btn red">新增视频</a>--%>
                            <asp:Button ID="btn_Project_Info_Edit" runat="server" CssClass="btn red" Text="编辑" OnClick="btn_Project_Info_Edit_Click" />
                        </div>
                    </div>
                    <div class="data">
                        <asp:Panel ID="panel_Project_Info" runat="server">
                            <asp:Literal ID="lit_Project_Info" runat="server"></asp:Literal>
                        </asp:Panel>
                        <asp:Panel ID="panel_Project_Info_Edit" runat="server" Visible="false">
                            <script id="editor" name="Project_Info" type="text/plain" style="width: 100%; height: 500px;"></script>
                            <script type="text/javascript">
                                var ue = UE.getEditor('editor');
                                ue.ready(function () {
                                    ue.execCommand('inserthtml', '<%=_Project_Info %>');
                                });
                            </script>
                            <div class="row-form rightbtn">
                                <asp:Button ID="btn_Project_Info_Confirm" runat="server" Text="保存" CssClass="btn red" OnClientClick="UE.getEditor('editor').sync();" OnClick="btn_Project_Info_Confirm_Click" />
                                <asp:Button ID="btn_Project_Info_Cancel" runat="server" Text="取消" CssClass="btn red" OnClick="btn_Project_Info_Cancel_Click" />
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
        <!--结束 项目情况 描述 -->
    </div>
    <!--结束 项目情况-->
    <!--项目活动 开始 -->
    <div class="block title">
        <div class="head">
            <h2>
                项目活动</h2>
            <ul class="buttons">
                <li><a href="#_DIV_Project_Activity" class="cblock">
                    <div class="icon">
                        <span class="ico-sort"></span>
                    </div>
                </a></li>
            </ul>
        </div>
    </div>
    <div id="_DIV_Project_Activity" class="row-fluid">
        <!--项目活动 开始-->
        <div class="row-fluid">
            <div class="span12">
                <div class="block">
                    <div class="head red pink">
                        <div class="icon">
                            <span class="ico-tags"></span>
                        </div>
                        <h2>
                            项目活动</h2>
                        <div class="items">
                            <a id="AddActivities" href="Activities/<%=_Region_Id %>/Add" role="button" class="btn red">新增活动</a>
                        </div>
                    </div>
                    <div class="data-fluid">
                        <asp:ListView ID="lv_Activites" runat="server">
                            <LayoutTemplate>
                                <table cellpadding="0" cellspacing="0" width="100%" class="table images lcnp">
                                    <thead>
                                        <tr>
                                            <th width="60">
                                                相片
                                            </th>
                                            <th>
                                                标题
                                            </th>
                                            <th width="100">
                                                内容
                                            </th>
                                            <th width="60">
                                                链接
                                            </th>
                                            <th width="80">
                                                操作
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                                    </tbody>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <a class="fb" rel="group" href="<%#Eval("Path") %>">
                                            <img src="<%#Eval("Path_Thumb") %>" class="img-polaroid" /></a>
                                    </td>
                                    <td class="info">
                                        <span>
                                            <%#Eval("Title") %></span>
                                    </td>
                                    <td>
                                        <span>
                                            <%#Eval("Message") %></span>
                                    </td>
                                    <td>
                                        <span>
                                            <%#Eval("Link") %></span>
                                    </td>
                                    <td>
                                        <a href="Activities/<%=_Region_Id %>/Edit/<%#Eval("SID") %>" class="button green EditActivities">
                                            <div class="icon">
                                                <span class="ico-pencil"></span>
                                            </div>
                                        </a>
                                        <asp:LinkButton ID="lnk_Del" runat="server" CssClass="button red">
                                        <div class="icon">
                                            <span class="ico-remove"></span>
                                        </div>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
        </div>
        <!--结束 项目活动-->
    </div>
    <!--结束 项目活动-->
    <div id="editDialog" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    </div>
    <script type="text/javascript">
        $(function () {
            $('#AddPhoto, .EditPhoto, #AddVideo, .EditVideo, #AddActivities, .EditActivities').on('click', function (e) {
                e.preventDefault();

                $.get($(this).attr('href'), function (data) {

                    $("#editDialog").html(data);

                }).fail(function () {
                    $("#editDialog").html('Unknown document');
                });
                $("#editDialog").modal('show');
            });
        });
    </script>
    <!--结束 内容-->
</asp:Content>
