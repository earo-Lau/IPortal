<%@ Page Title="" Language="C#" MasterPageFile="~/Actions/ActionSite.master" AutoEventWireup="true" CodeBehind="Volunteer.aspx.cs" Inherits="CADA.Portal.Actions.Volunteer" %>

<%@ MasterType VirtualPath="~/Actions/ActionSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        成为志愿者</h3>
    <section id="volunteer">
        <article id="detaile" class="row-form block-fluid">
            <div class="head">
                <h4>
                    志愿者需要</h4>
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
                    志愿者登记</h4>
            </div>
            <div class="data-fluid">
                <p>
                    多谢您抽空为集善残疾儿童助养项目以志愿者身份服务;为了方便我们日后能够与你联系，请填写以下数据以作记录。</p>
                <fieldset id="fil_1">
                    <div class="row-form">
                        <div class="span12">
                            <h5>
                                申请人资料</h5>
                        </div>
                    </div>
                    <div class="row-form">
                        <div class="span6">
                            <div class="span2">
                                中文姓名</div>
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
                </fieldset>
                <fieldset id="fil_2">
                    <div class="row-form">
                        <div class="span12">
                            <h5>
                                志愿者工作内容</h5>
                        </div>
                    </div>
                    <div class="row-form">
                        <div>
                            你对什么志愿工作有兴趣？</div>
                        <div>
                            <asp:TextBox ID="txt_Intrest" TextMode="MultiLine" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row-form">
                        <div>
                            你觉得你可以在什么方面为项目提供支持？</div>
                        <div>
                            <asp:TextBox ID="txt_Support" TextMode="MultiLine" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="tips" class="hightlight">
                    <p>
                        注：阁下的个人资料将用于处理您所参与的活动。未得到阁下的授权，数据不会被披露或转移。若有任何与你个人资料有关的问题，请在办公时间联络我们的客户服务部。</p>
                </fieldset>
            </div>
            <div style="text-align: right;">
                <asp:Button runat="server" ID="Submit" Text="提交申请 >" CssClass="btn" />
            </div>
        </article>
    </section>
</asp:Content>
