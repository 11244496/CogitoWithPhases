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
    private Contractor contractor;
    private Contractor_User contractorUser;

    public Phase() {
    }

    public Phase(int id, int phaseNumber, String description, Project project, ArrayList<PWorks> pWorks, Contractor contractor, Contractor_User contractorUser) {
        this.id = id;
        this.phaseNumber = phaseNumber;
        this.description = description;
        this.project = project;
        this.pWorks = pWorks;
        this.contractor = contractor;
        this.contractorUser = contractorUser;
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

    public Contractor getContractor() {
        return contractor;
    }

    public void setContractor(Contractor contractor) {
        this.contractor = contractor;
    }

    public Contractor_User getContractorUser() {
        return contractorUser;
    }

    public void setContractorUser(Contractor_User contractorUser) {
        this.contractorUser = contractorUser;
    }
    

}
