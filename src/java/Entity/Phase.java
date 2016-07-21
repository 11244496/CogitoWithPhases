/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.ArrayList;

/**
 *
 * @author AdrianKyle
 */
public class Phase {
    
    private int id;
    private int phaseNumber;
    private String description;
    private Project project;
    private ArrayList<PWorks> pWorks;

    public Phase() {
    }

    public Phase(int id, int phaseNumber, String description, Project project, ArrayList<PWorks> pWorks) {
        this.id = id;
        this.phaseNumber = phaseNumber;
        this.description = description;
        this.project = project;
        this.pWorks = pWorks;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPhaseNumber() {
        return phaseNumber;
    }

    public void setPhaseNumber(int phaseNumber) {
        this.phaseNumber = phaseNumber;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public ArrayList<PWorks> getpWorks() {
        return pWorks;
    }

    public void setpWorks(ArrayList<PWorks> pWorks) {
        this.pWorks = pWorks;
    }
    
    
    
}
