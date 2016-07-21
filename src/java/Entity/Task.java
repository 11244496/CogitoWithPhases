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
public class Task {

    private int id;
    private String name;
    private Project project;
    private ArrayList<Schedule> schedules;
    private Phase phase;
    private User user;

    public Task() {
    }

    public Task(int id, String name, Project project, ArrayList<Schedule> schedules, Phase phase, User user) {
        this.id = id;
        this.name = name;
        this.project = project;
        this.schedules = schedules;
        this.phase = phase;
        this.user = user;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public ArrayList<Schedule> getSchedules() {
        return schedules;
    }

    public void setSchedules(ArrayList<Schedule> schedules) {
        this.schedules = schedules;
    }

    public Phase getPhase(){
        return phase;
    }
    
    public void setPhase (Phase phase){
        this.phase = phase;
    }
    
    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }


}
