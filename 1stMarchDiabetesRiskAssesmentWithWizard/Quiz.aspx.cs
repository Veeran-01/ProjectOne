using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Quiz : System.Web.UI.Page
{
    public int total;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Wizard1.PreRender += new EventHandler(Wizard1_PreRender);

     
        //foreach(ListItem li in RadioButtonList1.Items)
        //{
        //    li.Attributes.Add("onmouseover", "this.style.backgroundColor='red';");
        //    li.Attributes.Add("onmouseout", "this.style.backgroundColor='white';");
        //}

    }
    protected void Wizard1_PreRender(object sender, EventArgs e)
    {
        Repeater SideBarList = Wizard1.FindControl("HeaderContainer").FindControl("SideBarList") as Repeater;
        SideBarList.DataSource = Wizard1.WizardSteps;
        SideBarList.DataBind();

    }

    protected string GetClassForWizardStep(object wizardStep)
    {
        WizardStep step = wizardStep as WizardStep;

        if (step == null)
        {
            return "";
        }
        int stepIndex = Wizard1.WizardSteps.IndexOf(step);

        if (stepIndex < Wizard1.ActiveStepIndex)
        {
            return "prevStep";
        }
        else if (stepIndex > Wizard1.ActiveStepIndex)
        {
            return "nextStep";
        }
        else
        {
            return "currentStep";
        }
    }

    

protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        switch (RadioButtonList1.SelectedIndex)
        {
            case 0:
                //if 49 or younger
                total += 0;
                break;
            case 1:
                //50-59
                total += 5;
                break;
            case 2:
                //60-69
                total += 9;
                break;
            case 3:
                //70 or older
                total += 13;
                break;

        }

        switch (RadioButtonListQ2.SelectedIndex)
        {
            case 0:
                //if male
                total += 1;
                break;
            case 1:
                //if male
                total += 0;
                break;
        }

        switch (RadioButtonListQ3.SelectedIndex)
        {
            case 0:
                //if white
                total += 0;
                break;
            case 1:
                //other
                total += 6;
                break;
        }

        switch (RadioButtonListQ4.SelectedIndex)
        {
            case 0:
                //if no
                total += 0;
                break;
            case 1:
                //if diabetes in family
                total += 5;
                break;
        }

        switch (RadioButtonListQ5.SelectedIndex)
        {
            case 0:
                //if waist less than 90
                total += 0;
                break;
            case 1:
                //90-99
                total += 4;
                break;
            case 2:
                //100-109
                total += 6;
                break;
            case 3:
                //over 110
                total += 9;
                break;

        }

        switch (RadioButtonListQ6.SelectedIndex)
        {
            case 0:
                //bmi<25
                total += 0;
                break;
            case 1:
                //25-29
                total += 3;
                break;
            case 2:
                //30-34
                total += 5;
                break;
            case 3:
                //35 and above
                total += 8;
                break;
        }

        switch (RadioButtonListQ7.SelectedIndex)
        {
            case 0:
                //yes to blood pressure
                total += 5;
                break;
            case 1:
                total += 0;
                break;
        }

        //LabelResult.Text = "Your total score is " + total;
        Response.BufferOutput = true;
        if (total <= 6)
        {
            Response.Redirect("LowRisk.aspx");
            //LabelResult.Text = "Your risk level is 'low' and which means you need to keep up \n the good work and make lifestyle adjustments to further reduce the risk";
            
        }
        else if (total >= 7 && total <= 15)
        {
            Response.Redirect("IncreasedRisk.aspx");
            //LabelResult.Text = "Your risk level is 'increased risk' and which means you need to \n make lifestyle adjustments to reduce the risk";
        }
        else if (total >= 16 && total <= 24)
        {
            Response.Redirect("ModerateRisk.aspx");
            //LabelResult.Text = "Your risk level is 'moderate risk' and which means you need to see you \n GP to discuss how to reduce the risk";
        }
        else
        {
            Response.Redirect("HighRisk.aspx");
            //LabelResult.Text = "Your risk level is 'high risk' and which means you need to see you GP \n as soon as possible tofor a blood test";
        }
    }





    
}