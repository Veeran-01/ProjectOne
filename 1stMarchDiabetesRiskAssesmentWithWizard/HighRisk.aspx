<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HighRisk.aspx.cs" Inherits="HighRisk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>High Risk</title>
    <link href="Content/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/css/ResultsCSS.css" rel="stylesheet" />
    
    <link rel="shortcut icon" href="Content/favicon.ico" type="image/x-icon"/>
    <link rel="icon" href="Content/favicon.ico" type="image/x-icon"/>
</head>
<body background="Content/ResultBackground.jpg">
    <form id="form1" runat="server">
    <div class="container">
        
			<div class="col-md-8 col-md-offset-2 text-center wrap_title">
                
                <div class="highResult">
                </br></br>
				<h2 class="text-danger" > High Risk</h2>
                </br></br>
                <p class="lead text-danger" style="margin-top:0">Your risk level is <b>'high risk'</b> and which means you need to see you GP  as soon as possible for a blood test</p>
			    </br></br>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
