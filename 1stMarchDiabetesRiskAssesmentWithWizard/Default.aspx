<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DiabetesRiskAssesment</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <%--<link href="Content/css/bootstrap.min.css" rel="stylesheet" />--%>
    <link rel="shortcut icon" href="Content/favicon.ico" type="image/x-icon"/>
    <link rel="icon" href="Content/favicon.ico" type="image/x-icon"/>
    
</head>
<body background="Content/doctor.jpg" >
    <div id="page" class="container">
    <form id="form1" runat="server">
    <div class="center">
        <br /><br /><br />
        <h1 id="LabelStart" class="headerStart" runat="server">Click Start to begin</h1>
        <br /> <br /> <br /> <br />
        <asp:LinkButton ID="LinkButton1" Class="button" runat="server" PostBackUrl="~/Quiz.aspx" >Start</asp:LinkButton>
    
        </div>
    </form>
        </div>
    <script src="Content/js/bootstrap.min.js"></script>
   

</body>
</html>
