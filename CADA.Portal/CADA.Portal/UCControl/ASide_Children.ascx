<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ASide_Children.ascx.cs" Inherits="CADA.Portal.UCControl.ASide_Children" %>


    <div id="asideBar" class="<%=CssClass %>">
        <h3 class="centerText">
            其他等待捐助的
        </h3>
        <div id="aSide_Child">
            <asp:ListView ID="lv_children" runat="server">
                <ItemTemplate>
                    <div class="childBlock">
                        <img src="xxx" />
                        <br />
                        <asp:Button ID="btn_Sponsor_Him" runat="server" Text="立即助养" CssClass="button blue" /></div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>