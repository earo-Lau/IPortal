<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CADA.Portal.Admin.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
        <div class="icon">
            <span class="ico-home"></span>
        </div>
        <h1>
            首页 <small>我的主页</small></h1>
    </div>
    <%--<div class="row-fluid">
        <div class="span12">
            <div class="block">
                <div class="head green">
                    <div class="icon">
                        <i class="ico-comments-2"></i>
                    </div>
                    <h2>
                        收件箱</h2>
                </div>
                <div class="data-fluid">
                    <asp:ListView ID="lv_MessageBox" runat="server">
                        <LayoutTemplate>
                            <table class="table dtable lcnp" cellpadding="0" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th width="16%">
                                            标题
                                        </th>
                                        <th width="16%">
                                            内容
                                        </th>
                                        <th width="10%">
                                            状态
                                        </th>
                                        <th width="10%">
                                            创建日期
                                        </th>
                                        <th width="10%">
                                            创建人
                                        </th>
                                        <th width="10%">
                                            最后修改人
                                        </th>
                                        <th width="80" class="TAC">
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
                                    <%#Eval("Title") %>
                                </td>
                                <td>
                                    <%#Eval("Context") %>
                                </td>
                                <td>
                                    <%#Eval("Status") %>
                                </td>
                                <td>
                                    <%#Eval("CreateDate") %>
                                </td>
                                <td>
                                    <%#Eval("CreateBy") %>
                                </td>
                                <td>
                                    <%#Eval("ModifyBy") %>
                                </td>
                                <td>
                                    <a href="#" class="button green">
                                        <div class="icon">
                                            <span class="ico-pencil"></span>
                                        </div>
                                    </a><a href="#" class="button red">
                                        <div class="icon">
                                            <span class="ico-remove"></span>
                                        </div>
                                    </a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="row-fluid">
        <div class="span6">
            <div class="block">
                <div class="head blue clearfix">
                    <div class="icon">
                        <i class="ico-cloud-2"></i>
                    </div>
                    <h2>
                        最新活动信息</h2>
                    <div class="items">
                        <asp:Button ID="btn_Activities_Edit" runat="server" CssClass="btn btn-primary" Text="编辑" OnClick="btn_Activities_Edit_Click" />
                    </div>
                </div>
                <div class="data dark">
                    <asp:Panel ID="panel_Activities" runat="server">
                        <asp:Image ID="img_Activities" runat="server" />
                        <h2>
                            <asp:Literal ID="lit_Activities_Title" runat="server" Text="标题"></asp:Literal></h2>
                        <h2>
                            <asp:Literal ID="lit_Activities_Title_EN" runat="server" Text="标题(英文)"></asp:Literal></h2>
                        <p>
                            <asp:Literal ID="lit_Activities_Content" runat="server" Text="内容"></asp:Literal>
                        </p>
                        <p>
                            <asp:Literal ID="lit_Activities_Content_EN" runat="server" Text="内容(英文)"></asp:Literal>
                        </p>
                    </asp:Panel>
                    <asp:Panel ID="panel_Activities_Edit" runat="server" Visible="false">
                        <div class="row-form">
                            <div class="span2">
                                活动图片
                            </div>
                            <div class="span10">
                                <asp:Image ID="Img_Activities_Edit" runat="server" CssClass="thumbs" ImageUrl="~/Content/img/examples/photo/example_2s.jpg" />
                                <div class="input-append file">
                                    <%--<input type="file" name="file" />--%>
                                    <asp:FileUpload ID="file_Acitivities" runat="server" name="file" />
                                    <input type="text" />
                                    <button class="btn btn-primary" onclick="return false;">
                                        浏览</button>
                                </div>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                活动标题
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Activities_Title" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                活动标题(英文)
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Activities_Title_en" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                活动内容
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Activities_Context" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                活动内容(英文)
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Activities_Context_en" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form rightbtn">
                            <asp:Button ID="btn_Actitvities_Confirm" runat="server" Text="保存" CssClass="btn btn-primary" OnClick="btn_Actitvities_Confirm_Click" />
                            <asp:Button ID="btn_Activities_Cancel" runat="server" Text="取消" CssClass="btn btn-primary" OnClick="btn_Activities_Cancel_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
        <div class="span6">
            <div class="block">
                <div class="head orange clearfix">
                    <div class="icon">
                        <i class="ico-cloud-2"></i>
                    </div>
                    <h2>
                        最新项目进展</h2>
                    <div class="items">
                        <asp:Button ID="btn_Project_Edit" runat="server" CssClass="btn" Text="编辑" OnClick="btn_Project_Edit_Click" />
                    </div>
                </div>
                <div class="data dark">
                    <asp:Panel ID="panel_Project" runat="server">
                        <asp:Image ID="Img_Project" runat="server" />
                        <h2>
                            <asp:Literal ID="lit_Project_Title" runat="server" Text="标题"></asp:Literal></h2>
                        <h2>
                            <asp:Literal ID="lit_Project_Title_EN" runat="server" Text="标题(英文)"></asp:Literal></h2>
                        <p>
                            <asp:Literal ID="lit_Project_Context" runat="server" Text="内容"></asp:Literal>
                        </p>
                        <p>
                            <asp:Literal ID="lit_Project_Context_EN" runat="server" Text="内容(英文)"></asp:Literal>
                        </p>
                    </asp:Panel>
                    <asp:Panel ID="panel_Project_Edit" runat="server" Visible="false">
                        <div class="row-form">
                            <div class="span2">
                                活动图片
                            </div>
                            <div class="span10">
                                <asp:Image ID="Img_Project_Edit" runat="server" CssClass="thumbs" ImageUrl="~/Content/img/examples/photo/example_2s.jpg" />
                                <div class="input-append file">
                                    <input type="file" name="file" /><input type="text" />
                                    <button class="btn" onclick="return false;">
                                        浏览</button>
                                </div>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                活动标题
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Project_Title" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                活动标题(英文)
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Project_Title_EN" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                活动内容
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Project_Context" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span2">
                                活动内容(英文)
                            </div>
                            <div class="span10">
                                <asp:TextBox ID="txt_Project_Context_EN" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row-form rightbtn">
                            <asp:Button ID="btn_Project_Confirm" runat="server" Text="保存" CssClass="btn" OnClick="btn_Project_Confirm_Click" />
                            <asp:Button ID="btn_Project_Cancel" runat="server" Text="取消" CssClass="btn" OnClick="btn_Project_Cancel_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
