<%@ Page Title="" Language="C#" MasterPageFile="~/Actions/ActionSite.master" AutoEventWireup="true" CodeBehind="GreetingCards.aspx.cs" Inherits="CADA.Portal.Actions.GreetingCards" %>

<%@ MasterType VirtualPath="~/Actions/ActionSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="<%=ResolveUrl("~/Content/@Scripts/uploadify/uploadify.css")%>" rel="stylesheet" type="text/css" />
    <link href="<%=ResolveUrl("~/Content/Aries/css/stepywizard/jquery.stepy.css") %>" rel="stylesheet" type="text/css" />
    <script src="<%=ResolveUrl("~/Content/Aries/js/plugins/stepywizard/jquery.stepy.js") %>" type="text/javascript"></script>
    <script src="<%=ResolveUrl("~/Content/@Scripts/uploadify/jquery.uploadify.min.js")%>" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Cards_Process" class="row-form">
        <a data-toggle="modal" role="button" class="btn btn-info" href="#Process">点我查看制作贺卡流程</a>
        <div id="Process" class="modal fade hide" role="dialog" aria-labelledby="提示">
            <div class="modal-header">
                <%--<button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>--%>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="margin-top: 2px;">
                    ×</button>
                <h3 class="modal-title" id="H1">
                    制作贺卡流程</h3>
            </div>
            <div class="modal-body">
                <img src="xxx" />
                <br />
                <button type="button" class="btn btn-info " data-dismiss="modal">
                    我明白了，返回制作贺卡</button>
            </div>
        </div>
    </div>
    <div id="Card_Form_wrap">
        <div id="Card_Form">
            <fieldset title="Step 1">
                <legend>请选择一名儿童</legend>
                <div id="child" class="row-form">
                    <div class="chlid_wrap">
                        <asp:ListView ID="lv_children" runat="server">
                            <ItemTemplate>
                                <img src="~/Content/@images/test.jpg" />
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </fieldset>
            <fieldset title="Step 2">
                <legend>请选择上传一张照片</legend>
                <div id="picture" class="row-form">
                    <div class="picture_wrap">
                        <div id="upload_pic" src="xxx" style="width: 200px; height: 280px; margin: 0 auto;">
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset title="Step 3">
                <legend>请选择模板 </legend>
                <div id="modal" class="row-form">
                    <div class="modal_wrap">
                        <div class="row-fluid">
                            <div class="span6 modal_block" style="background-color: #ff3300;">
                                aaa
                            </div>
                            <div class="span6 modal_block" style="background-color: #0eb83a;">
                                vvv
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="span6 modal_block" style="background-color: #177CB0;">
                                aaa
                            </div>
                            <div class="span6 modal_block" style="background-color: #fff143;">
                                vvv
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset title="Step 4">
                <legend>添加贺语</legend>
                <div id="greeting" class="row-form">
                    <div class="greeting_wrap">
                        <div class="card row-form">
                            <img />
                            <div class="greeting_text">
                            </div>
                        </div>
                        <div class="greeting_form">
                            <div class="row-form">
                                <div class="span6">
                                    <div class="span3">
                                        收件人:</div>
                                    <div class="span9">
                                        <asp:TextBox ID="txtTo" runat="server" placeholder="例:萱萱" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="span6">
                                    <div class="span3" >
                                        寄件人:</div>
                                    <div class="span9">
                                        <asp:TextBox ID="txtFrom" runat="server" placeholder="请签名" CssClass="form-control input-sm"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row-form">
                                <asp:TextBox ID="txtGreetings" runat="server" TextMode="MultiLine" placeholder="请填写你想寄予的祝福，我们将为你送达。字数65字以内。" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset title="Step 5">
                <legend>预览并发送</legend>
                <div id="preview" class="row-form">
                </div>
            </fieldset>
            <button type="submit" class="btn btn-info finish">
                Submit</button>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('#Card_Form').stepy({
                legend: false,
                transition: 'slide',
                backLabel: '上一步',
                nextLabel: '下一步',
                nextClass: 'btn btn-info button-next',
                backClass: 'btn btn-info button-back'
            });
            $('#upload_pic').uploadify({
                'uploader': '<%=GetRouteUrl("upload", new { id="111" })%>',
                'swf': '<%=ResolveUrl("~/Content/@Scripts/uploadify/uploadify.swf") %>',
                'buttonImage': '<%=ResolveUrl("~/Content/@Scripts/uploadify/uploadify-upload.png") %>',
                'auto': true,
                'multi': false,
                width: '400',
                height: '270',
                onUploadError: function (file, errorCode, errorMsg, errorString) {
                    console.info({ 'file': file, 'errorCode': errorCode, 'errorMsg': errorMsg, 'errorString': errorString });
                }
            });
        });
    </script>
</asp:Content>
