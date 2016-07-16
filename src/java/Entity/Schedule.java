/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.ArrayList;

/**
 *
 * @author RoAnn
 */
public class Schedule {

    private int id;
    private String event;
    private String startdate;
    private String enddate;
    private String status;
    private String dept;
    private String time;
    private String stage;
    private String projectID;
    private String actualenddate;
    private String remarks;
    private ArrayList<Task> tasks;
    private Project project;

    public Schedule() {
    }

    public Schedule(int id, String event, String startdate, String enddate, String status, String dept, String time, String stage, String projectID, String actualenddate, String remarks, ArrayList<Task> tasks, Project project) {
        this.id = id;
        this.event = event;
        this.startdate = startdate;
        this.enddate = enddate;
        this.status = status;
        this.dept = dept;
        this.time = time;
        this.stage = stage;
        this.projectID = projectID;
        this.actualenddate = actualenddate;
        this.remarks = remarks;
        this.tasks = tasks;
        this.project = project;
    }
    
    public Schedule(int id, String event, String startdate, String enddate, String status, String dept, String time, String stage, String projectID, String actualenddate, String remarks) {
        this.id = id;
        this.event = event;
        this.startdate = startdate;
        this.enddate = enddate;
        this.status = status;
        this.dept = dept;
        this.time = time;
        this.stage = stage;
        this.projectID = projectID;
        this.actualenddate = actualenddate;
        this.remarks = remarks;
    }


    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getStage() {
        return stage;
    }

    public void setStage(String stage) {
        this.stage = stage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public ArrayList<Task> getTasks() {
        return tasks;
    }

    public void setTasks(ArrayList<Task> tasks) {
        this.tasks = tasks;
    }

    public String getProjectID() {
        return projectID;
    }

    public void setProjectID(String projectID) {
        this.projectID = projectID;
    }

    public String getActualenddate() {
        return actualenddate;
    }

    public void setActualenddate(String actualenddate) {
        this.actualenddate = actualenddate;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    /**
     * @return the project
     */
    public Project getProject() {
        return project;
    }

    /**
     * @param project the project to set
     */
    public void setProject(Project project) {
        this.project = project;
    }
    
    

}
