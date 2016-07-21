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
public class PWorks {
    
    private int id;
    private String name;
    private ArrayList<Component> components;
    private Phase phase;
    
    public PWorks() {
    }

    public PWorks(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public PWorks(int id, String name, ArrayList<Component> components, Phase phase) {
        this.id = id;
        this.name = name;
        this.components = components;
        this.phase = phase;
    }

    
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
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
     * @return the components
     */
    public ArrayList<Component> getComponents() {
        return components;
    }

    /**
     * @param components the components to set
     */
    public void setComponents(ArrayList<Component> components) {
        this.components = components;
    }

    public Phase getPhase() {
        return phase;
    }

    public void setPhase(Phase phase) {
        this.phase = phase;
    }
    
    
    
    
}
