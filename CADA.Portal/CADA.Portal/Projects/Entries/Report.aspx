<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="CADA.Portal.Projects.Entries.Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<body>
    <div id="pro_Report" class="clearfix row-form">
        <div id="Manager_Video" class="row-fluid">
            <div class="row-fluid">
                <div class="span4">
                    <h4>
                        项目经理的VIDEO</h4>
                </div>
                <div class="span2 offset6">
                    <div id="ddl_Year" class="dropdown">
                        <button class="btn dropdown-toggle" data-toggle="dropdown">
                            <span id="ddl_select_text">请选择年报年份</span>&nbsp;&nbsp;<span class="caret"></span></button>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="ddl_Year">
                            <asp:ListView ID="lit_Reports" runat="server">
                                <ItemTemplate>
                                    <li role="presentation"><a role="menuitem" href="<%#Eval("Report_Url") %>">
                                        <%#Eval("Report_Name") %></a></li>
                                </ItemTemplate>
                            </asp:ListView>
                        </ul>
                    </div>
                    <script type="text/javascript">
                        $(function () {
                            $('#ddl_Year li a[role="menuitem"]').on('click', function (e) {
                                e.preventDefault();

                                $('#ddl_Year #ddl_select_text').html($(this).text());
                                $('#report_video').attr('src', $(this).attr('href'));
                            })
                        });
                    </script>
                </div>
            </div>
            <div class="video_Content">
                <video id="report_video" controls style="height: 100%; width: 100%;">
                </video>
            </div>
        </div>
        <div class="clear">
        </div>
        <hr />
        <div id="Activities_Content" class="row-fluid">
            <div class="span12">
                <asp:Literal ID="lit_Content" runat="server"></asp:Literal>
                <img class="img-polaroid" align="left" src="xxx" />
                <p>
                    文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容
                </p>
            </div>
        </div>
    </div>
</body>
