<%@ Page Title="" Language="C#" MasterPageFile="~/Actions/ActionSite.master" AutoEventWireup="true" CodeBehind="Visit.aspx.cs" Inherits="CADA.Portal.Actions.Visit" %>

<%@ MasterType VirtualPath="~/Actions/ActionSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        申请探访</h2>
    <section id="visit">
        <article id="detaile">
            <h3>
                探访详情</h3>
            <fieldset>
                <div class="form-group">
                    <p>
                        宣明会定期举办探访团，让助养者亲自到贫困国家，实地了解本会工作及进一步了解当地人民的生活和需要。</p>
                    <p>
                        今期探访详情:</p>
                </div>
                <div class="form-group">
                    <label class="control-label">
                        日期</label>
                    <asp:Label ID="lab_VisitDate" runat="server" CssClass="form-control-static" Text="xxxx年xx月xx日"></asp:Label>
                </div>
                <div class="form-group">
                    <label class="control-label">
                        地点</label>
                    <asp:Label ID="lab_VisitAddress" runat="server" CssClass="form-control-static" Text="甘肃省宝鸡市XXXXXX"></asp:Label>
                </div>
                <div class="form-group">
                    <label class="control-label">
                        人数</label>
                    <asp:Label ID="lab_VisitCount" runat="server" CssClass="form-control-static" Text="35人"></asp:Label>
                </div>
            </fieldset>
        </article>
        <article id="apply">
            <h3>
                探访者申请</h3>
            <p>
                多谢您申请探访集善残疾儿童助养项目;为了方便我们日后能够与你联系，请填写以下数据以作记录。</p>
            <fieldset id="fil_1" class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-1 control-label">
                        我想参与</label>
                    <div class="input-wrap">
                        <asp:TextBox ID="txt_VisitorID" runat="server" CssClass="form-control input-sm" placeholder="请填写探访者参考编号"></asp:TextBox>
                    </div>
                </div>
            </fieldset>
            <fieldset id="fil_2" class="form-horizontal">
                <h4>
                    申请人资料</h4>
                <div class="form-group">
                    <div class="one_half">
                        <label class="col-sm-2 control-label">
                            中文姓名</label>
                        <div class="input-wrap">
                            <asp:TextBox ID="txt_Name_CN" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="one_half_last">
                        <label class="col-sm-2 control-label">
                            英文姓名</label>
                        <div class="input-wrap">
                            <asp:TextBox ID="txt_Name_EN" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="one_half">
                        <label class="col-sm-2 control-label">
                            身份证号码</label>
                        <div class="input-wrap">
                            <asp:TextBox ID="txt_IDCard" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="one_half_last">
                        <label class="col-sm-2 control-label">
                            出生年份</label>
                        <div class="input-wrap">
                            <asp:TextBox ID="txt_BirthYear" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="one_half">
                        <label class="col-sm-2 control-label">
                            性别</label>
                        <div class="input-wrap">
                            <%--<DDL:DropdownButton runat="server">
                                <asp:ListItem Text="男" Value="1" />
                                <asp:ListItem Text="女" Value="0" />
                            </DDL:DropdownButton>--%>
                            <asp:DropDownList ID="ddl_Gender" runat="server" AutoPostBack="false" CssClass="form-control">
                                <asp:ListItem Text="男" Value="1"></asp:ListItem>
                                <asp:ListItem Text="女" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="one_half_last">
                        <label class="col-sm-2 control-label">
                            联系电话</label>
                        <div class="input-wrap">
                            <asp:TextBox ID="txt_Phone" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="fullwidth" style="margin-bottom: 0;">
                        <label class="col-sm-2 control-label" style="width: 80px;">
                            住址</label>
                        <div class="input-wrap" style="width: 120px; margin-right: 40px;">
                            <asp:DropDownList ID="ddl_Province" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                        <div class="input-wrap" style="width: 120px; margin-right: 20px;">
                            <asp:DropDownList ID="ddl_City" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                        <div class="input-wrap col-sm-4">
                            <asp:TextBox ID="txt_Address" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="one_half">
                        <label class="col-sm-2 control-label">
                            邮箱地址</label>
                        <div class="input-wrap">
                            <asp:TextBox ID="txt_Mail" TextMode="Email" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="one_half_last">
                        <label class="col-sm-2 control-label">
                            紧急联络人</label>
                        <div class="input-wrap">
                            <asp:TextBox ID="txt_Emergency_Name" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="one_half">
                        <label class="col-sm-2 control-label">
                            联络人关系</label>
                        <div class="input-wrap">
                            <asp:TextBox ID="txt_Emergency_Relationship" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="one_half_last">
                        <label class="col-sm-2 control-label">
                            联络人电话</label>
                        <div class="input-wrap">
                            <asp:TextBox ID="txt_Emergency_Phone" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="fil_3" class="form-horizontal">
                <h4>
                    探访者资料</h4>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        申请探访人数</label>
                    <div class="input-wrap">
                        <asp:TextBox ID="txt_Visit_Count" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <table id="visitor_table" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>
                                </th>
                                <th>
                                    姓氏
                                </th>
                                <th>
                                    名字
                                </th>
                                <th>
                                    性别
                                </th>
                                <th>
                                    出生年份
                                </th>
                                <th>
                                    与申请人关系
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <label class="control-label">
                                        探访者1</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_First_Name_1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Last_Name_1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Gender_1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_BirsthDay_1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Relationship_1" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="control-label">
                                        探访者2</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_First_Name_2" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Last_Name_2" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Gender_2" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_BirsthDay_2" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Relationship_2" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="control-label">
                                        探访者3</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_First_Name_3" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Last_Name_3" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Gender_3" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_BirsthDay_3" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Relationship_3" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="control-label">
                                        探访者4</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_First_Name_4" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Last_Name_4" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Gender_4" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_BirsthDay_4" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Relationship_4" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="control-label">
                                        探访者5</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_First_Name_5" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Last_Name_5" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Gender_5" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_BirsthDay_5" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_Relationship_5" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </fieldset>
            <fieldset id="tips" class="hightlight">
                <p>
                    注：阁下的个人资料将用于处理您所参与的活动。未得到阁下的授权，数据不会被披露或转移。若有任何与你个人资料有关的问题，请在办公时间联络我们的客户服务部。</p>
            </fieldset>
        </article>
        <div style="text-align: right;">
            <asp:Button runat="server" ID="Submit" Text="提交申请 >" CssClass="button magenta" />
        </div>
    </section>
</asp:Content>
