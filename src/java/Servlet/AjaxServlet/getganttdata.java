/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet.AjaxServlet;
import Entity.Phase;
import Entity.Schedule;
import Entity.Task;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Krist
 */
public class getganttdata extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            ArrayList<Task> tasklist = new ArrayList<Task>();
            ArrayList<Schedule> tasklistSchedule = new ArrayList<Schedule>();
            ArrayList<Schedule> tasklistSchedule2 = new ArrayList<Schedule>();
            
            Task t1 = new Task();
            t1.setName("Task 1");
            Phase p1 = new Phase();
            p1.setPhaseNumber(1);
            t1.setPhase(p1);
            
            Schedule s = new Schedule();
            s.setStartdate("2015-01-02");
            s.setEnddate("2015-01-11");
            
            Schedule s1 = new Schedule();
            s1.setStartdate("2015-01-19");
            s1.setEnddate("2015-01-25");
            
            tasklistSchedule.add(s);
            tasklistSchedule.add(s1);
            t1.setSchedules(tasklistSchedule);
            tasklist.add(t1);
            
            
            Task t2 = new Task();
            t2.setName("Task 2");
            Phase p2 = new Phase();
            p2.setPhaseNumber(2);
            t2.setPhase(p2);
            
            Schedule s2 = new Schedule();
            s2.setStartdate("2015-01-11");
            s2.setEnddate("2015-01-14");
            
            Schedule s3 = new Schedule();
            s3.setStartdate("2015-01-25");
            s3.setEnddate("2015-01-29");
            
            tasklistSchedule2.add(s2);
            tasklistSchedule2.add(s3);
            t2.setSchedules(tasklistSchedule2);
            tasklist.add(t2);
            
            String json = new Gson().toJson(tasklist);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
             
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
