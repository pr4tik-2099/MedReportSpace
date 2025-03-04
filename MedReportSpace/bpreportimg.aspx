<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="bpreportimg.aspx.cs" Inherits="MedReportSpace.bpreportimg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <asp:Image ID="Image1" ImageUrl='<%#Eval("img_link") %>' runat="server" />
                </ItemTemplate>
            </asp:DataList>

</asp:Content>
