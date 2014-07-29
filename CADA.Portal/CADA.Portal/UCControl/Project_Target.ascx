<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Project_Target.ascx.cs" Inherits="CADA.Portal.UCControl.Project_Target" %>
<div class="<%=CssClass %>">
    <img id="pic" runat="server" src="<%=Pic_Path %>" />
    <h4>
        <%=Title %></h4>
    <asp:Literal ID="lit_Target_Content" runat="server"></asp:Literal>
</div>
