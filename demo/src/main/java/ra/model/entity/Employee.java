package ra.model.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column
    private String employeeName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date employeeDate;
    private String employeeDescriptions;
    private boolean employeeStatus;

    public Employee() {
    }

    public Employee(int id, String employeeName, Date employeeDate, String employeeDescriptions, boolean employeeStatus) {
        this.id = id;
        this.employeeName = employeeName;
        this.employeeDate = employeeDate;
        this.employeeDescriptions = employeeDescriptions;
        this.employeeStatus = employeeStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public Date getEmployeeDate() {
        return employeeDate;
    }

    public void setEmployeeDate(Date employeeDate) {
        this.employeeDate = employeeDate;
    }

    public String getEmployeeDescriptions() {
        return employeeDescriptions;
    }

    public void setEmployeeDescriptions(String employeeDescriptions) {
        this.employeeDescriptions = employeeDescriptions;
    }

    public boolean isEmployeeStatus() {
        return employeeStatus;
    }

    public void setEmployeeStatus(boolean employeeStatus) {
        this.employeeStatus = employeeStatus;
    }
}
