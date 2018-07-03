<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index3.aspx.cs" Inherits="Övning30.Index3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.0.0.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <table>
        <tr>
            <td>
                <table style="width: 1000px" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Firstname</th>
                        </tr>
                    </thead>
                    <tbody id="tableBody"></tbody>
                </table>
            </td>
            <td style:>
                <label for="usr">Firstname:</label>
                <input style="width: 200px" type="text" class="form-control" id="firstname" />
                <label for="usr">Lastname:</label>
                <input style="width: 200px" type="text" class="form-control" id="lastname" />
                <label for="usr">SSN:</label>
                <input style="width: 200px" type="text" class="form-control" id="ssn" />
                <input type="button" id="myButton2" value="Add new contact!" />
            </td>
        </tr>
    </table>

    <input type="button" id="myButton" value="Click me, click me!" />

    <script>
        $(document).ready(function () {

            $("#myButton").click(function () {
                $.get("/svc/contact.aspx")
                    .done(function (data) {
                        console.log("cdfvgbnhjm")
                        var myJSON = JSON.parse(data);

                        for (var i = 0; i < myJSON.length; i++) {
                            $("#tableBody").append("<tr><td>" + myJSON[i].ID + "</td><td>" + myJSON[i].FirstName + "</td></tr>");
                        }
                    });
            });
        });

        /*function AddNewContact({
               var firstName = $("#firstName").val();
               $.get("/svc/contact.aspx?action=addNewContact&firtsName" + firstName)
               */
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
