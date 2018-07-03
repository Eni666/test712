<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Övning30.Index" %>

<asp:Content ContentPlaceHolderID="main" runat="server">
    <div>
        <table class="table">
            <thead>
                <tr>
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>SSN</td>
                </tr>
            </thead>
            <tbody>
                <asp:Literal ID="LiteralContacts" runat="server"></asp:Literal>
            </tbody>
        </table>
       
    </div>
</asp:Content>







