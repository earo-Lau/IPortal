<%@ Page Title="" Language="C#" MasterPageFile="~/Actions/ActionSite.master" AutoEventWireup="true" CodeBehind="Visit.aspx.cs" Inherits="CADA.Portal.Actions.Visit" %>

<%@ MasterType VirtualPath="~/Actions/ActionSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        申请探访</h3>
    <section id="visit">
        <article id="detaile" class="row-form block-fluid">
            <div class="head">
                <h4>
                    探访详情</h4>
            </div>
            <div class="data-fluid">
                <fieldset>
                    <div class="row-fluid">
                        <p>
                            宣明会定期举办探访团，让助养者亲自到贫困国家，实地了解本会工作及进一步了解当地人民的生活和需要。</p>
                        <p>
                            今期探访详情:</p>
                    </div>
                    <div class="row-fluid">
                        <div class="span1">
                            日期</div>
                        <div class="span11">
                            <asp:Label ID="lab_VisitDate" runat="server" CssClass="form-control-static" Text="xxxx年xx月xx日"></asp:Label>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span1">
                            地点</div>
                        <div class="span11">
                            <asp:Label ID="lab_VisitAddress" runat="server" CssClass="form-control-static" Text="甘肃省宝鸡市XXXXXX"></asp:Label>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span1">
                            人数</div>
                        <div class="span11">
                            <asp:Label ID="lab_VisitCount" runat="server" CssClass="form-control-static" Text="35人"></asp:Label>
                        </div>
                    </div>
                </fieldset>
            </div>
        </article>
        <article id="apply" class="row-form block-fluid">
            <div class="head">
                <h4>
                    探访者申请</h4>
            </div>
            <div class="data-fluid">
                <p>
                    多谢您申请探访集善残疾儿童助养项目;为了方便我们日后能够与你联系，请填写以下数据以作记录。</p>
                <fieldset id="fil_1">
                    <div class="row-form">
                        <div class="head span2">
                            <h5>
                                我想参与</h5>
                        </div>
                        <div class="data span4">
                            <asp:TextBox ID="txt_VisitorID" runat="server" CssClass="form-control input-sm" placeholder="请填写探访者参考编号"></asp:TextBox>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="fil_2">
                    <div class="row-form">
                        <div class="span12">
                            <h5>
                                申请人资料</h5>
                        </div>
                    </div>
                    <div>
                        <div class="row-form">
                            <div class="span6">
                                <div class="span2">
                                    中文姓名
                                </div>
                                <div class="span6 input-wrap">
                                    <asp:TextBox ID="txt_Name_CN" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="span6">
                                <div class="span2">
                                    英文姓名</div>
                                <div class="span6 input-wrap">
                                    <asp:TextBox ID="txt_Name_EN" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span6">
                                <div class="span2">
                                    身份证号码</div>
                                <div class="span6 input-wrap">
                                    <asp:TextBox ID="txt_IDCard" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="span6">
                                <div class="span2">
                                    出生年份</div>
                                <div class="span6 input-wrap">
                                    <asp:TextBox ID="txt_BirthYear" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span6">
                                <div class="span2">
                                    性别</div>
                                <div class="span6 input-wrap">
                                    <asp:DropDownList ID="ddl_Gender" runat="server" AutoPostBack="false" CssClass="form-control">
                                        <asp:ListItem Text="男" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="女" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="span6">
                                <div class="span2">
                                    联系电话</div>
                                <div class="span6 input-wrap">
                                    <asp:TextBox ID="txt_Phone" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span12">
                                <div class="span1">
                                    住址</div>
                                <div class="span2 input-wrap">
                                    <asp:DropDownList ID="ddl_Province" runat="server" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                                <div class="span2 input-wrap">
                                    <asp:DropDownList ID="ddl_City" runat="server" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                                <div class="span5 input-wrap">
                                    <asp:TextBox ID="txt_Address" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span6">
                                <div class="span2">
                                    邮箱地址</div>
                                <div class="span6 input-wrap">
                                    <asp:TextBox ID="txt_Mail" TextMode="Email" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="span6">
                                <div class="span2">
                                    紧急联络人</div>
                                <div class="span6 input-wrap">
                                    <asp:TextBox ID="txt_Emergency_Name" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row-form">
                            <div class="span6">
                                <div class="span2">
                                    联络人关系</div>
                                <div class="span6 input-wrap">
                                    <asp:TextBox ID="txt_Emergency_Relationship" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="span6">
                                <div class="span2">
                                    联络人电话</div>
                                <div class="span6 input-wrap">
                                    <asp:TextBox ID="txt_Emergency_Phone" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="fil_3">
                    <div class="row-form">
                        <div class="span12">
                            <h5>
                                探访者资料</h5>
                        </div>
                    </div>
                    <div class="row-form">
                        <div class="span12">
                            <div class="span2">
                                申请探访人数</div>
                            <div class="span4 input-wrap">
                                <asp:TextBox ID="txt_Visit_Count" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row-form">
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
                                        <asp:TextBox ID="txt_First_Name_1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Last_Name_1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Gender_1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_BirsthDay_1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Relationship_1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="control-label">
                                            探访者2</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_First_Name_2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Last_Name_2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Gender_2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_BirsthDay_2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Relationship_2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="control-label">
                                            探访者3</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_First_Name_3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Last_Name_3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Gender_3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_BirsthDay_3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Relationship_3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="control-label">
                                            探访者4</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_First_Name_4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Last_Name_4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Gender_4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_BirsthDay_4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Relationship_4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="control-label">
                                            探访者5</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_First_Name_5" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Last_Name_5" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Gender_5" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_BirsthDay_5" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_Relationship_5" runat="server" CssClass="form-control"></asp:TextBox>
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
            </div>
        <div style="text-align: right;">
            <asp:Button runat="server" ID="Submit" Text="提交申请 >" CssClass="btn btn-danger" />
        </div>
        </article>
    </section>
</asp:Content>
