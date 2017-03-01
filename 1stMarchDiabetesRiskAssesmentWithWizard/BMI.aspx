<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BMI.aspx.cs" Inherits="BMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>BMI Calculator</h1>
        <asp:Wizard ID="Wizard1" runat="server" Height="132px" StartNextButtonText="" StartNextButtonType="Link" Width="300px">
            <StepNavigationTemplate>
                <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
            </StepNavigationTemplate>
            <WizardSteps>
                <asp:WizardStep ID="WizardStepMetric" runat="server" Title="Metric">
                <asp:Label ID="LabelMetricWeight" runat="server" >Weight: </asp:Label>
                <asp:TextBox ID="TextBoxMetricWeight" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="LabelMetricHeight" runat="server" >Height: </asp:Label>
                <asp:TextBox ID="TextBoxMetricHeight" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="ButtonMetricBMI" runat="server" Text="Calculate" OnClick="ButtonMetricBMI_Click" />
                <asp:Label ID="LabelMetricBMI" runat="server" ></asp:Label>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Imperial"></asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>

    </div>
    </form>
</body>
</html>
