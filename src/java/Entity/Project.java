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
public class Project {

    private String id;
    private String name;
    private String description;
    private String type;
    private String status;
    private String foldername;
    private Employee employee;
    private String datesubmitted;
    private float budget;
    private String category;
    private Testimonial mainTestimonial;

    private ArrayList<Location> location;
    private ArrayList<Files> files;
    private ArrayList<Phase> phase;
    private Annotation annotation;
    private ArrayList<PComments> pComments;
    private ArrayList<Project> referredProjects;
    private ArrayList<Feedback> feedback;    
    private ArrayList<Project_Inspection> inspection;

    //BAC PART
    private int responses = 0;
    private int confirmed = 0;


    public Project() {
    }
    public Project(String id) {
        this.id = id;
    }

    public Project(String id, String name, String description, String type, String status, String foldername, Employee employee, String datesubmitted, float budget, String category, ArrayList<Location> location, ArrayList<Files> files, ArrayList<Phase> phase, Annotation annotation, ArrayList<PComments> pComments, ArrayList<Project> referredProjects, ArrayList<Feedback> feedback, ArrayList<Project_Inspection> inspection) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.type = type;
        this.status = status;
        this.foldername = foldername;
        this.employee = employee;
        this.datesubmitted = datesubmitted;
        this.budget = budget;
        this.category = category;
        this.location = location;
        this.files = files;
        this.phase = phase;
        this.annotation = annotation;
        this.pComments = pComments;
        this.referredProjects = referredProjects;
        this.feedback = feedback;
        this.inspection = inspection;
    }
    

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the foldername
     */
    public String getFoldername() {
        return foldername;
    }

    /**
     * @param foldername the foldername to set
     */
    public void setFoldername(String foldername) {
        this.foldername = foldername;
    }

    /**
     * @return the employee
     */
    public Employee getEmployee() {
        return employee;
    }

    /**
     * @param employee the employee to set
     */
    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    /**
     * @return the datesubmitted
     */
    public String getDatesubmitted() {
        return datesubmitted;
    }

    /**
     * @param datesubmitted the datesubmitted to set
     */
    public void setDatesubmitted(String datesubmitted) {
        this.datesubmitted = datesubmitted;
    }

    /**
     * @return the budget
     */
    public float getBudget() {
        return budget;
    }

    /**
     * @param budget the budget to set
     */
    public void setBudget(float budget) {
        this.budget = budget;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the location
     */
    public ArrayList<Location> getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(ArrayList<Location> location) {
        this.location = location;
    }

    /**
     * @return the files
     */
    public ArrayList<Files> getFiles() {
        return files;
    }

    /**
     * @param files the files to set
     */
    public void setFiles(ArrayList<Files> files) {
        this.files = files;
    }

    public ArrayList<Phase> getPhase() {
        return phase;
    }

    public void setPhase(ArrayList<Phase> phase) {
        this.phase = phase;
    }

    public Annotation getAnnotation() {
        return annotation;
    }

    public void setAnnotation(Annotation annotation) {
        this.annotation = annotation;
    }

    
    /**
     * @return the pComments
     */
    public ArrayList<PComments> getpComments() {
        return pComments;
    }

    /**
     * @param pComments the pComments to set
     */
    public void setpComments(ArrayList<PComments> pComments) {
        this.pComments = pComments;
    }

    /**
     * @return the referredProjects
     */
    public ArrayList<Project> getReferredProjects() {
        return referredProjects;
    }

    /**
     * @param referredProjects the referredProjects to set
     */
    public void setReferredProjects(ArrayList<Project> referredProjects) {
        this.referredProjects = referredProjects;
    }

    /**
     * @return the feedback
     */
    public ArrayList<Feedback> getFeedback() {
        return feedback;
    }

    /**
     * @param feedback the feedback to set
     */
    public void setFeedback(ArrayList<Feedback> feedback) {
        this.feedback = feedback;
    }

    /**
     * @return the inspection
     */
    public ArrayList<Project_Inspection> getInspection() {
        return inspection;
    }

    /**
     * @param inspection the inspection to set
     */
    public void setInspection(ArrayList<Project_Inspection> inspection) {
        this.inspection = inspection;
    }

    /**
     * @return the responses
     */
    public int getResponses() {
        return responses;
    }

    /**
     * @param responses the responses to set
     */
    public void setResponses(int responses) {
        this.responses = responses;
    }

    /**
     * @return the confirmed
     */
    public int getConfirmed() {
        return confirmed;
    }

    /**
     * @param confirmed the confirmed to set
     */
    public void setConfirmed(int confirmed) {
        this.confirmed = confirmed;
    }
    /**
     * @return the mainTestimonial
     */
    public Testimonial getMainTestimonial() {
        return mainTestimonial;
    }

    /**
     * @param mainTestimonial the mainTestimonial to set
     */
    public void setMainTestimonial(Testimonial mainTestimonial) {
        this.mainTestimonial = mainTestimonial;
    }
    
}
