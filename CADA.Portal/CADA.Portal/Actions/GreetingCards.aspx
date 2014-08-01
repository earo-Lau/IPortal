<%@ Page Title="" Language="C#" MasterPageFile="~/Actions/ActionSite.master" AutoEventWireup="true" CodeBehind="GreetingCards.aspx.cs" Inherits="CADA.Portal.Actions.GreetingCards" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
    <div id="Card_Form">
        <div id="child">
        </div>
        <div id="picture">
        </div>
        <div id="modal">
        </div>
        <div id="greeting">
        </div>
        <div id="preview">
        </div>
    </div>
    <hr />
    <div id="Card_Btn" class="clearfix">
        <asp:Button ID="btnPre" runat="server" CssClass="button yellow disabled pre" Text="上一步" />
        <asp:Button ID="btnNext" runat="server" CssClass="button yellow next" Text="下一步" />
    </div>
</asp:Content>
