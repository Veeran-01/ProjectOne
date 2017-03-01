<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DiabetesRiskAssesment</title>
    
    <link href="Content/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/css/StyleSheet2.css" rel="stylesheet" />

    <link rel="shortcut icon" href="Content/favicon.ico" type="image/x-icon"/>
    <link rel="icon" href="Content/favicon.ico" type="image/x-icon"/>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="page-header">
    <h1>Diabetes risk assesment tool</h1>
            </div>
         <div align = "center" >
        <asp:Wizard class="wizard" ID="Wizard1"  runat="server" ActiveStepIndex="7" Height="298px" Width="910px" OnFinishButtonClick="Wizard1_FinishButtonClick" DisplaySideBar="False" Font-Bold="True" BorderStyle="None" Font-Names="Arial" Font-Overline="False" Font-Size="Larger" ForeColor="#333333">
            <StartNextButtonStyle CssClass="nextButton" />
            <StepStyle HorizontalAlign="Left" />
            <WizardSteps >
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Age">
                    <h1>Question One</h1>
                    <asp:Label ID="LabelQ1" runat="server">Please select your age range from the list below: </asp:Label>
                    <asp:RadioButtonList class="list-group" ID="RadioButtonList1" runat="server">
                    <asp:ListItem class="list-group-item">  49 or younger</asp:ListItem>
                    <asp:ListItem class="list-group-item">  50-59</asp:ListItem>
                    <asp:ListItem class="list-group-item">  60-69</asp:ListItem>
                    <asp:ListItem class="list-group-item">  70 or older</asp:ListItem>
                    </asp:RadioButtonList>
                    </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Gender">
                    <h1>Question Two</h1>
                    <asp:Label ID="LabelQ2" runat="server">Are you male or female?</asp:Label>
                    <asp:RadioButtonList class="list-group" ID="RadioButtonListQ2" runat="server"  >
                    <asp:ListItem class="list-group-item">  Male</asp:ListItem>
                    <asp:ListItem class="list-group-item">  Female</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Ethnicity">
                    <h1>Question Three</h1>
                    <asp:Label class="list-group" ID="LabelQ3" runat="server" >What is your ethinc background? </asp:Label>
                    <asp:RadioButtonList ID="RadioButtonListQ3" runat="server" >
                    <asp:ListItem class="list-group-item">  Only White European</asp:ListItem>
                    <asp:ListItem class="list-group-item">  Other</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" Title="Family">
                    <h1>Question 4</h1>
                    <asp:Label class="list-group" ID="LabelQ4" runat="server"> Do you have a father, mother, brother, sister and/or child with Type 1 or Type 2 diabetes?</asp:Label>
                    <asp:RadioButtonList ID="RadioButtonListQ4" runat="server" >
                    <asp:ListItem class="list-group-item">  No</asp:ListItem>
                    <asp:ListItem class="list-group-item">  Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep5" runat="server" Title="Waist" >
                    <h1>Question Five</h1>
                    <asp:Label class="list-group" ID="LabelQ5" runat="server" >What is your waist circumference?</asp:Label>
                    <asp:RadioButtonList ID="RadioButtonListQ5" runat="server" >
                    <asp:ListItem class="list-group-item">  Less than 90cm (35.3in)</asp:ListItem>
                    <asp:ListItem class="list-group-item">  90–99.9cm (35.4–39.3in)</asp:ListItem>
                    <asp:ListItem class="list-group-item">  100–109.9cm (39.4–42.9in)</asp:ListItem>
                    <asp:ListItem class="list-group-item">  110cm (43in) or above</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep6" runat="server" Title="BMI" >
                    <h1>Question Six</h1>
                    <asp:Label class="list-group" ID="LabelQ6" runat="server">What is your BMI?</asp:Label>
                    <asp:RadioButtonList ID="RadioButtonListQ6" runat="server">
                    <asp:ListItem class="list-group-item">  Less than 25</asp:ListItem>
                    <asp:ListItem class="list-group-item">  25–29.9</asp:ListItem>
                    <asp:ListItem class="list-group-item">  30–34.9</asp:ListItem>
                    <asp:ListItem class="list-group-item">  35 or above </asp:ListItem>
                    </asp:RadioButtonList>
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" onClientClick="window.open('BMI.aspx')">If you do not know your BMI click here.</asp:LinkButton>--%>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep7" runat="server" Title="Blood pressure">
                    <h1>Question Seven</h1>
                    <asp:Label class="list-group" ID="LabelQ7" runat="server" >Have you been given medicine for high blood pressure OR been told that you have high blood pressure by you doctor?</asp:Label>
                    <asp:RadioButtonList ID="RadioButtonListQ7" runat="server" >
                    <asp:ListItem class="list-group-item">  Yes</asp:ListItem>
                    <asp:ListItem class="list-group-item">  No</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>

                <asp:WizardStep runat="server" Title="Result">
                    <div align = "center">
                    <asp:Literal Mode="Encode" ID="LabelResult" runat="server" Text="Click Finish to get result"></asp:Literal>
                    <%--<asp:Label  ID="LabelResult" runat="server" >Click Finish to get result</asp:Label>--%>
                    </div>
                </asp:WizardStep>

            </WizardSteps>
            <HeaderTemplate>
               <ul id="wizHeader">
                   <asp:Repeater ID="SideBarList" runat="server">
                       <ItemTemplate>
                           <li><a class="<%# GetClassForWizardStep(Container.DataItem) %>" title="<%#Eval("Name")%>">
                               <%# Eval("Name")%></a> </li>
                       </ItemTemplate>
                   </asp:Repeater>
               </ul>
           </HeaderTemplate>
        </asp:Wizard>
            </div>
    </div>
    </form>
    <script src="Content/js/bootstrap.min.js"></script>
</body>
</html>
