/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Entidades.Anuncio;
import Entidades.Apoderado;
import Entidades.Paciente;
import Entidades.Profesional;
import Models.AnuncioDAO;
import Models.ApoderadoDAO;
import Models.PacienteDAO;
import Models.ProfesionalDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginApoderado", urlPatterns = {"/LoginApoderado"})
public class LoginApoderado extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginApoderado</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginApoderado at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        int login;

        try {

            login = new ApoderadoDAO().buscar(usuario, password);

            if (login == 1) {
                Apoderado apoderado = new ApoderadoDAO().obtener(usuario);
                LinkedList<Profesional> profesionales = new ProfesionalDAO().obtenerLista();

                HttpSession sesion = request.getSession();
                sesion.setAttribute("idApoderado", apoderado.getIdApoderado());
                sesion.setAttribute("apoderado", apoderado);
                sesion.setAttribute("profesionales", profesionales);

                String JSON = new Gson().toJson(apoderado);
                response.getWriter().write(JSON);

            } else {
                response.getWriter().write("NULL");
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginApoderado.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(LoginApoderado.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(LoginApoderado.class.getName()).log(Level.SEVERE, null, ex);
        }

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
