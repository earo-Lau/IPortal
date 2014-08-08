<%@ Page Title="" Language="C#" MasterPageFile="~/Actions/ActionSite.master" AutoEventWireup="true" CodeBehind="GreetingCards.aspx.cs" Inherits="CADA.Portal.Actions.GreetingCards" %>

<%@ MasterType VirtualPath="~/Actions/ActionSite.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="<%=ResolveUrl("~/Content/@Scripts/uploadify/jquery.uploadify.min.js")%>" type="text/javascript"></script>
    <link href="<%=ResolveUrl("~/Content/@Scripts/uploadify/uploadify.css")%>" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Cards_Process">
        <a data-toggle="modal" data-target="#Process">点我查看制作贺卡流程</a>
        <div id="Process" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="提示" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">
                            制作贺卡流程</h4>
                    </div>
                    <div class="modal-body">
                        <img src="xxx" />
                        <br />
                        <button type="button" class="button yellow " data-dismiss="modal">
                            我明白了，返回制作贺卡</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="Card_Progress" class="clearfix">
        <div class="one_fifth" style="background: #d4f2e;">
            1请选择一名儿童
        </div>
        <div class="one_fifth" style="background: #c0ebd7;">
            2请上传一张照片
        </div>
        <div class="one_fifth" style="background: #a4e2c6;">
            3请选择模板
        </div>
        <div class="one_fifth" style="background: #7bcfa6;">
            4添加贺语
        </div>
        <div class="one_fifth" style="background: #3de1ad;">
            5预览并发送
        </div>
    </div>
    <div id="Card_Form_wrap">
        <div id="Card_Form">
            <div id="child" class="sub_form current">
                <div class="chlid_wrap">
                    <asp:ListView ID="lv_children" runat="server">
                        <ItemTemplate>
                            <img src="~/Content/@images/test.jpg" />
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
            <div id="picture" class="sub_form">
                <div class="picture_wrap">
                    <div id="upload_pic" src="xxx" style="width: 200px; height: 280px; margin: 0 auto;">
                    </div>
                </div>
            </div>
            <div id="modal" class="sub_form">
                <div class="modal_wrap">
                    <div class="one_half modal_block" style="background-color: #ff3300;">
                        aaa
                    </div>
                    <div class="one_half_last modal_block" style="background-color: #0eb83a;">
                        vvv
                    </div>
                    <div class="one_half modal_block" style="background-color: #177CB0;">
                        aaa
                    </div>
                    <div class="one_half_last modal_block" style="background-color: #fff143;">
                        vvv
                    </div>
                </div>
            </div>
            <div id="greeting" class="sub_form">
                <div class="greeting_wrap">
                    <div class="card">
                        <img />
                        <div class="greeting_text">
                        </div>
                    </div>
                    <div class="greeting_form form-group">
                        <div class="one_half form-block">
                            <label class="control-label" for="<%=txtTo.ClientID %>">收件人</label>:<asp:TextBox ID="txtTo" runat="server" placeholder="例:萱萱" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="one_half_last form-block">
                            <label class="control-label" for="<%=txtFrom.ClientID %>">寄件人:</label>
                            <asp:TextBox ID="txtFrom" runat="server" placeholder="请签名" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="txtGreetings" runat="server" TextMode="MultiLine" placeholder="请填写你想寄予的祝福，我们将为你送达。字数65字以内。" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div id="preview" class="sub_form">
            </div>
        </div>
    </div>
    <hr />
    <div id="Card_Btn" class="clearfix">
        <asp:Button ID="btnPre" runat="server" CssClass="button yellow pre" Text="上一步" disabled="disabled" />
        <asp:Button ID="btnNext" runat="server" CssClass="button yellow next" Text="下一步" />
    </div>
    <script type="text/javascript">
        $(function () {
            $('#<%=btnNext.ClientID %>').on('click', function (e) {
                e.preventDefault();
                var current_form = $('.sub_form.current');
                var next = current_form.next();
                $('#Card_Form').animate({ left: '-=970' }, 500, function () {
                    current_form.removeClass('current');
                    next.addClass('current');

                    if (next.attr('id') == 'preview') {
                        $('#<%=btnNext.ClientID %>').attr('disabled', true);
                    }
                    if ($('#<%=btnPre.ClientID %>').attr('disabled')) {
                        $('#<%=btnPre.ClientID %>').attr('disabled', false);
                    }
                });
            });
            $('#<%=btnPre.ClientID %>').on('click', function (e) {
                e.preventDefault();
                var current_form = $('.sub_form.current');
                var prev = current_form.prev();
                $('#Card_Form').animate({ left: '+=970' }, 500, function () {
                    current_form.removeClass('current');
                    prev.addClass('current');
                    if (prev.attr('id') == 'child') {
                        $('#<%=btnPre.ClientID %>').attr('disabled', true);
                    }
                    if ($('#<%=btnNext.ClientID %>').attr('disabled')) {
                        $('#<%=btnNext.ClientID %>').attr('disabled', false);
                    }
                });
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
