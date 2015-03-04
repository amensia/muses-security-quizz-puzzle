// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ch.unige;

import ch.unige.Employee;
import ch.unige.EmployeeBean;
import ch.unige.util.MessageFactory;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.component.spinner.Spinner;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect EmployeeBean_Roo_ManagedBean {
    
    declare @type: EmployeeBean: @ManagedBean(name = "employeeBean");
    
    declare @type: EmployeeBean: @SessionScoped;
    
    private String EmployeeBean.name = "Employees";
    
    private Employee EmployeeBean.employee;
    
    private List<Employee> EmployeeBean.allEmployees;
    
    private boolean EmployeeBean.dataVisible = false;
    
    private List<String> EmployeeBean.columns;
    
    private HtmlPanelGrid EmployeeBean.createPanelGrid;
    
    private HtmlPanelGrid EmployeeBean.editPanelGrid;
    
    private HtmlPanelGrid EmployeeBean.viewPanelGrid;
    
    private boolean EmployeeBean.createDialogVisible = false;
    
    @PostConstruct
    public void EmployeeBean.init() {
        columns = new ArrayList<String>();
        columns.add("firstname");
        columns.add("lastname");
        columns.add("email");
        columns.add("password");
        columns.add("job");
    }
    
    public String EmployeeBean.getName() {
        return name;
    }
    
    public List<String> EmployeeBean.getColumns() {
        return columns;
    }
    
    public List<Employee> EmployeeBean.getAllEmployees() {
        return allEmployees;
    }
    
    public void EmployeeBean.setAllEmployees(List<Employee> allEmployees) {
        this.allEmployees = allEmployees;
    }
    
    public String EmployeeBean.findAllEmployees() {
        allEmployees = Employee.findAllEmployees();
        dataVisible = !allEmployees.isEmpty();
        return null;
    }
    
    public boolean EmployeeBean.isDataVisible() {
        return dataVisible;
    }
    
    public void EmployeeBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid EmployeeBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void EmployeeBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid EmployeeBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void EmployeeBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid EmployeeBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void EmployeeBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid EmployeeBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel firstnameCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        firstnameCreateOutput.setFor("firstnameCreateInput");
        firstnameCreateOutput.setId("firstnameCreateOutput");
        firstnameCreateOutput.setValue("Firstname:");
        htmlPanelGrid.getChildren().add(firstnameCreateOutput);
        
        InputText firstnameCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        firstnameCreateInput.setId("firstnameCreateInput");
        firstnameCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.firstname}", String.class));
        firstnameCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(firstnameCreateInput);
        
        Message firstnameCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        firstnameCreateInputMessage.setId("firstnameCreateInputMessage");
        firstnameCreateInputMessage.setFor("firstnameCreateInput");
        firstnameCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(firstnameCreateInputMessage);
        
        OutputLabel lastnameCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        lastnameCreateOutput.setFor("lastnameCreateInput");
        lastnameCreateOutput.setId("lastnameCreateOutput");
        lastnameCreateOutput.setValue("Lastname:");
        htmlPanelGrid.getChildren().add(lastnameCreateOutput);
        
        InputText lastnameCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        lastnameCreateInput.setId("lastnameCreateInput");
        lastnameCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.lastname}", String.class));
        lastnameCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(lastnameCreateInput);
        
        Message lastnameCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        lastnameCreateInputMessage.setId("lastnameCreateInputMessage");
        lastnameCreateInputMessage.setFor("lastnameCreateInput");
        lastnameCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(lastnameCreateInputMessage);
        
        OutputLabel emailCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        emailCreateOutput.setFor("emailCreateInput");
        emailCreateOutput.setId("emailCreateOutput");
        emailCreateOutput.setValue("Email:");
        htmlPanelGrid.getChildren().add(emailCreateOutput);
        
        InputText emailCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        emailCreateInput.setId("emailCreateInput");
        emailCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.email}", String.class));
        emailCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(emailCreateInput);
        
        Message emailCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        emailCreateInputMessage.setId("emailCreateInputMessage");
        emailCreateInputMessage.setFor("emailCreateInput");
        emailCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(emailCreateInputMessage);
        
        OutputLabel passwordCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        passwordCreateOutput.setFor("passwordCreateInput");
        passwordCreateOutput.setId("passwordCreateOutput");
        passwordCreateOutput.setValue("Password:");
        htmlPanelGrid.getChildren().add(passwordCreateOutput);
        
        InputText passwordCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        passwordCreateInput.setId("passwordCreateInput");
        passwordCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.password}", String.class));
        passwordCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(passwordCreateInput);
        
        Message passwordCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        passwordCreateInputMessage.setId("passwordCreateInputMessage");
        passwordCreateInputMessage.setFor("passwordCreateInput");
        passwordCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(passwordCreateInputMessage);
        
        OutputLabel jobCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        jobCreateOutput.setFor("jobCreateInput");
        jobCreateOutput.setId("jobCreateOutput");
        jobCreateOutput.setValue("Job:");
        htmlPanelGrid.getChildren().add(jobCreateOutput);
        
        InputText jobCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        jobCreateInput.setId("jobCreateInput");
        jobCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.job}", String.class));
        jobCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(jobCreateInput);
        
        Message jobCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        jobCreateInputMessage.setId("jobCreateInputMessage");
        jobCreateInputMessage.setFor("jobCreateInput");
        jobCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(jobCreateInputMessage);
        
        OutputLabel experienceCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        experienceCreateOutput.setFor("experienceCreateInput");
        experienceCreateOutput.setId("experienceCreateOutput");
        experienceCreateOutput.setValue("Experience:");
        htmlPanelGrid.getChildren().add(experienceCreateOutput);
        
        Spinner experienceCreateInput = (Spinner) application.createComponent(Spinner.COMPONENT_TYPE);
        experienceCreateInput.setId("experienceCreateInput");
        experienceCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.experience}", Integer.class));
        experienceCreateInput.setRequired(true);
        
        htmlPanelGrid.getChildren().add(experienceCreateInput);
        
        Message experienceCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        experienceCreateInputMessage.setId("experienceCreateInputMessage");
        experienceCreateInputMessage.setFor("experienceCreateInput");
        experienceCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(experienceCreateInputMessage);
        
        OutputLabel ageCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        ageCreateOutput.setFor("ageCreateInput");
        ageCreateOutput.setId("ageCreateOutput");
        ageCreateOutput.setValue("Age:");
        htmlPanelGrid.getChildren().add(ageCreateOutput);
        
        Spinner ageCreateInput = (Spinner) application.createComponent(Spinner.COMPONENT_TYPE);
        ageCreateInput.setId("ageCreateInput");
        ageCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.age}", Integer.class));
        ageCreateInput.setRequired(true);
        
        htmlPanelGrid.getChildren().add(ageCreateInput);
        
        Message ageCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        ageCreateInputMessage.setId("ageCreateInputMessage");
        ageCreateInputMessage.setFor("ageCreateInput");
        ageCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(ageCreateInputMessage);
        
        OutputLabel sexCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        sexCreateOutput.setFor("sexCreateInput");
        sexCreateOutput.setId("sexCreateOutput");
        sexCreateOutput.setValue("Sex:");
        htmlPanelGrid.getChildren().add(sexCreateOutput);
        
        InputText sexCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        sexCreateInput.setId("sexCreateInput");
        sexCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.sex}", String.class));
        sexCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(sexCreateInput);
        
        Message sexCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        sexCreateInputMessage.setId("sexCreateInputMessage");
        sexCreateInputMessage.setFor("sexCreateInput");
        sexCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(sexCreateInputMessage);
        
        OutputLabel myQuizzesCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        myQuizzesCreateOutput.setFor("myQuizzesCreateInput");
        myQuizzesCreateOutput.setId("myQuizzesCreateOutput");
        myQuizzesCreateOutput.setValue("My Quizzes:");
        htmlPanelGrid.getChildren().add(myQuizzesCreateOutput);
        
        InputText myQuizzesCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        myQuizzesCreateInput.setId("myQuizzesCreateInput");
        myQuizzesCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.myQuizzes}", List.class));
        myQuizzesCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(myQuizzesCreateInput);
        
        Message myQuizzesCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        myQuizzesCreateInputMessage.setId("myQuizzesCreateInputMessage");
        myQuizzesCreateInputMessage.setFor("myQuizzesCreateInput");
        myQuizzesCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(myQuizzesCreateInputMessage);
        
        OutputLabel myQuizResultsCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        myQuizResultsCreateOutput.setFor("myQuizResultsCreateInput");
        myQuizResultsCreateOutput.setId("myQuizResultsCreateOutput");
        myQuizResultsCreateOutput.setValue("My Quiz Results:");
        htmlPanelGrid.getChildren().add(myQuizResultsCreateOutput);
        
        InputText myQuizResultsCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        myQuizResultsCreateInput.setId("myQuizResultsCreateInput");
        myQuizResultsCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.myQuizResults}", List.class));
        myQuizResultsCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(myQuizResultsCreateInput);
        
        Message myQuizResultsCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        myQuizResultsCreateInputMessage.setId("myQuizResultsCreateInputMessage");
        myQuizResultsCreateInputMessage.setFor("myQuizResultsCreateInput");
        myQuizResultsCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(myQuizResultsCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid EmployeeBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel firstnameEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        firstnameEditOutput.setFor("firstnameEditInput");
        firstnameEditOutput.setId("firstnameEditOutput");
        firstnameEditOutput.setValue("Firstname:");
        htmlPanelGrid.getChildren().add(firstnameEditOutput);
        
        InputText firstnameEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        firstnameEditInput.setId("firstnameEditInput");
        firstnameEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.firstname}", String.class));
        firstnameEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(firstnameEditInput);
        
        Message firstnameEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        firstnameEditInputMessage.setId("firstnameEditInputMessage");
        firstnameEditInputMessage.setFor("firstnameEditInput");
        firstnameEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(firstnameEditInputMessage);
        
        OutputLabel lastnameEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        lastnameEditOutput.setFor("lastnameEditInput");
        lastnameEditOutput.setId("lastnameEditOutput");
        lastnameEditOutput.setValue("Lastname:");
        htmlPanelGrid.getChildren().add(lastnameEditOutput);
        
        InputText lastnameEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        lastnameEditInput.setId("lastnameEditInput");
        lastnameEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.lastname}", String.class));
        lastnameEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(lastnameEditInput);
        
        Message lastnameEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        lastnameEditInputMessage.setId("lastnameEditInputMessage");
        lastnameEditInputMessage.setFor("lastnameEditInput");
        lastnameEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(lastnameEditInputMessage);
        
        OutputLabel emailEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        emailEditOutput.setFor("emailEditInput");
        emailEditOutput.setId("emailEditOutput");
        emailEditOutput.setValue("Email:");
        htmlPanelGrid.getChildren().add(emailEditOutput);
        
        InputText emailEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        emailEditInput.setId("emailEditInput");
        emailEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.email}", String.class));
        emailEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(emailEditInput);
        
        Message emailEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        emailEditInputMessage.setId("emailEditInputMessage");
        emailEditInputMessage.setFor("emailEditInput");
        emailEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(emailEditInputMessage);
        
        OutputLabel passwordEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        passwordEditOutput.setFor("passwordEditInput");
        passwordEditOutput.setId("passwordEditOutput");
        passwordEditOutput.setValue("Password:");
        htmlPanelGrid.getChildren().add(passwordEditOutput);
        
        InputText passwordEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        passwordEditInput.setId("passwordEditInput");
        passwordEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.password}", String.class));
        passwordEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(passwordEditInput);
        
        Message passwordEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        passwordEditInputMessage.setId("passwordEditInputMessage");
        passwordEditInputMessage.setFor("passwordEditInput");
        passwordEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(passwordEditInputMessage);
        
        OutputLabel jobEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        jobEditOutput.setFor("jobEditInput");
        jobEditOutput.setId("jobEditOutput");
        jobEditOutput.setValue("Job:");
        htmlPanelGrid.getChildren().add(jobEditOutput);
        
        InputText jobEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        jobEditInput.setId("jobEditInput");
        jobEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.job}", String.class));
        jobEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(jobEditInput);
        
        Message jobEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        jobEditInputMessage.setId("jobEditInputMessage");
        jobEditInputMessage.setFor("jobEditInput");
        jobEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(jobEditInputMessage);
        
        OutputLabel experienceEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        experienceEditOutput.setFor("experienceEditInput");
        experienceEditOutput.setId("experienceEditOutput");
        experienceEditOutput.setValue("Experience:");
        htmlPanelGrid.getChildren().add(experienceEditOutput);
        
        Spinner experienceEditInput = (Spinner) application.createComponent(Spinner.COMPONENT_TYPE);
        experienceEditInput.setId("experienceEditInput");
        experienceEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.experience}", Integer.class));
        experienceEditInput.setRequired(true);
        
        htmlPanelGrid.getChildren().add(experienceEditInput);
        
        Message experienceEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        experienceEditInputMessage.setId("experienceEditInputMessage");
        experienceEditInputMessage.setFor("experienceEditInput");
        experienceEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(experienceEditInputMessage);
        
        OutputLabel ageEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        ageEditOutput.setFor("ageEditInput");
        ageEditOutput.setId("ageEditOutput");
        ageEditOutput.setValue("Age:");
        htmlPanelGrid.getChildren().add(ageEditOutput);
        
        Spinner ageEditInput = (Spinner) application.createComponent(Spinner.COMPONENT_TYPE);
        ageEditInput.setId("ageEditInput");
        ageEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.age}", Integer.class));
        ageEditInput.setRequired(true);
        
        htmlPanelGrid.getChildren().add(ageEditInput);
        
        Message ageEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        ageEditInputMessage.setId("ageEditInputMessage");
        ageEditInputMessage.setFor("ageEditInput");
        ageEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(ageEditInputMessage);
        
        OutputLabel sexEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        sexEditOutput.setFor("sexEditInput");
        sexEditOutput.setId("sexEditOutput");
        sexEditOutput.setValue("Sex:");
        htmlPanelGrid.getChildren().add(sexEditOutput);
        
        InputText sexEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        sexEditInput.setId("sexEditInput");
        sexEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.sex}", String.class));
        sexEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(sexEditInput);
        
        Message sexEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        sexEditInputMessage.setId("sexEditInputMessage");
        sexEditInputMessage.setFor("sexEditInput");
        sexEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(sexEditInputMessage);
        
        OutputLabel myQuizzesEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        myQuizzesEditOutput.setFor("myQuizzesEditInput");
        myQuizzesEditOutput.setId("myQuizzesEditOutput");
        myQuizzesEditOutput.setValue("My Quizzes:");
        htmlPanelGrid.getChildren().add(myQuizzesEditOutput);
        
        InputText myQuizzesEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        myQuizzesEditInput.setId("myQuizzesEditInput");
        myQuizzesEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.myQuizzes}", List.class));
        myQuizzesEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(myQuizzesEditInput);
        
        Message myQuizzesEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        myQuizzesEditInputMessage.setId("myQuizzesEditInputMessage");
        myQuizzesEditInputMessage.setFor("myQuizzesEditInput");
        myQuizzesEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(myQuizzesEditInputMessage);
        
        OutputLabel myQuizResultsEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        myQuizResultsEditOutput.setFor("myQuizResultsEditInput");
        myQuizResultsEditOutput.setId("myQuizResultsEditOutput");
        myQuizResultsEditOutput.setValue("My Quiz Results:");
        htmlPanelGrid.getChildren().add(myQuizResultsEditOutput);
        
        InputText myQuizResultsEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        myQuizResultsEditInput.setId("myQuizResultsEditInput");
        myQuizResultsEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.myQuizResults}", List.class));
        myQuizResultsEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(myQuizResultsEditInput);
        
        Message myQuizResultsEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        myQuizResultsEditInputMessage.setId("myQuizResultsEditInputMessage");
        myQuizResultsEditInputMessage.setFor("myQuizResultsEditInput");
        myQuizResultsEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(myQuizResultsEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid EmployeeBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText firstnameLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        firstnameLabel.setId("firstnameLabel");
        firstnameLabel.setValue("Firstname:");
        htmlPanelGrid.getChildren().add(firstnameLabel);
        
        HtmlOutputText firstnameValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        firstnameValue.setId("firstnameValue");
        firstnameValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.firstname}", String.class));
        htmlPanelGrid.getChildren().add(firstnameValue);
        
        HtmlOutputText lastnameLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        lastnameLabel.setId("lastnameLabel");
        lastnameLabel.setValue("Lastname:");
        htmlPanelGrid.getChildren().add(lastnameLabel);
        
        HtmlOutputText lastnameValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        lastnameValue.setId("lastnameValue");
        lastnameValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.lastname}", String.class));
        htmlPanelGrid.getChildren().add(lastnameValue);
        
        HtmlOutputText emailLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        emailLabel.setId("emailLabel");
        emailLabel.setValue("Email:");
        htmlPanelGrid.getChildren().add(emailLabel);
        
        HtmlOutputText emailValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        emailValue.setId("emailValue");
        emailValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.email}", String.class));
        htmlPanelGrid.getChildren().add(emailValue);
        
        HtmlOutputText passwordLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        passwordLabel.setId("passwordLabel");
        passwordLabel.setValue("Password:");
        htmlPanelGrid.getChildren().add(passwordLabel);
        
        HtmlOutputText passwordValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        passwordValue.setId("passwordValue");
        passwordValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.password}", String.class));
        htmlPanelGrid.getChildren().add(passwordValue);
        
        HtmlOutputText jobLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        jobLabel.setId("jobLabel");
        jobLabel.setValue("Job:");
        htmlPanelGrid.getChildren().add(jobLabel);
        
        HtmlOutputText jobValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        jobValue.setId("jobValue");
        jobValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.job}", String.class));
        htmlPanelGrid.getChildren().add(jobValue);
        
        HtmlOutputText experienceLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        experienceLabel.setId("experienceLabel");
        experienceLabel.setValue("Experience:");
        htmlPanelGrid.getChildren().add(experienceLabel);
        
        HtmlOutputText experienceValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        experienceValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.experience}", String.class));
        htmlPanelGrid.getChildren().add(experienceValue);
        
        HtmlOutputText ageLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        ageLabel.setId("ageLabel");
        ageLabel.setValue("Age:");
        htmlPanelGrid.getChildren().add(ageLabel);
        
        HtmlOutputText ageValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        ageValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.age}", String.class));
        htmlPanelGrid.getChildren().add(ageValue);
        
        HtmlOutputText sexLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        sexLabel.setId("sexLabel");
        sexLabel.setValue("Sex:");
        htmlPanelGrid.getChildren().add(sexLabel);
        
        HtmlOutputText sexValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        sexValue.setId("sexValue");
        sexValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.sex}", String.class));
        htmlPanelGrid.getChildren().add(sexValue);
        
        HtmlOutputText myQuizzesLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        myQuizzesLabel.setId("myQuizzesLabel");
        myQuizzesLabel.setValue("My Quizzes:");
        htmlPanelGrid.getChildren().add(myQuizzesLabel);
        
        HtmlOutputText myQuizzesValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        myQuizzesValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.myQuizzes}", String.class));
        htmlPanelGrid.getChildren().add(myQuizzesValue);
        
        HtmlOutputText myQuizResultsLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        myQuizResultsLabel.setId("myQuizResultsLabel");
        myQuizResultsLabel.setValue("My Quiz Results:");
        htmlPanelGrid.getChildren().add(myQuizResultsLabel);
        
        HtmlOutputText myQuizResultsValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        myQuizResultsValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{employeeBean.employee.myQuizResults}", String.class));
        htmlPanelGrid.getChildren().add(myQuizResultsValue);
        
        return htmlPanelGrid;
    }
    
    public Employee EmployeeBean.getEmployee() {
        if (employee == null) {
            employee = new Employee();
        }
        return employee;
    }
    
    public void EmployeeBean.setEmployee(Employee employee) {
        this.employee = employee;
    }
    
    public String EmployeeBean.onEdit() {
        return null;
    }
    
    public boolean EmployeeBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void EmployeeBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String EmployeeBean.displayList() {
        createDialogVisible = false;
        findAllEmployees();
        return "employee";
    }
    
    public String EmployeeBean.displayCreateDialog() {
        employee = new Employee();
        createDialogVisible = true;
        return "employee";
    }
    
    public String EmployeeBean.persist() {
        String message = "";
        if (employee.getId() != null) {
            employee.merge();
            message = "message_successfully_updated";
        } else {
            employee.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Employee");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllEmployees();
    }
    
    public String EmployeeBean.delete() {
        employee.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Employee");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllEmployees();
    }
    
    public void EmployeeBean.reset() {
        employee = null;
        createDialogVisible = false;
    }
    
    public void EmployeeBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
