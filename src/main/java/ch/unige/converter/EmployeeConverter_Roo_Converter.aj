// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ch.unige.converter;

import ch.unige.Employee;
import ch.unige.converter.EmployeeConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

privileged aspect EmployeeConverter_Roo_Converter {
    
    declare parents: EmployeeConverter implements Converter;
    
    declare @type: EmployeeConverter: @FacesConverter("ch.unige.converter.EmployeeConverter");
    
    public Object EmployeeConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Employee.findEmployee(id);
    }
    
    public String EmployeeConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Employee ? ((Employee) value).getId().toString() : "";
    }
    
}
