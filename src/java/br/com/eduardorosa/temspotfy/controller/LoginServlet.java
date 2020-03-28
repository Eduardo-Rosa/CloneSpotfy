/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.eduardorosa.temspotfy.controller;

import br.com.eduardorosa.temspotfy.dao.DataSource;
import br.com.eduardorosa.temspotfy.dao.UsuarioDAO;
import br.com.eduardorosa.temspotfy.model.Usuario;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EduRosa
 */
public class LoginServlet extends HttpServlet {

    
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
    String email = request.getParameter("txtEmail");
    String senha = request.getParameter("txtSenha");
    Usuario incompleto = new Usuario();
    incompleto.setEmail(email);
    incompleto.setSenha(senha);
    
    String pagina = "/myaccount.jsp";
    
    try{
        DataSource ds = new DataSource();
        UsuarioDAO userDAO = new UsuarioDAO(ds);
        List<Object> res = userDAO.read(incompleto);
        if(res != null &&res.size() > 0){
            pagina = "/myaccount";
            request.getSession().setAttribute("usuario", res.get(0));
        }else{
            request.setAttribute("ErroSTR", "usuario/Senha Invalidos");
        }
        ds.getConnection().close();
    }catch(Exception ex){
        request.setAttribute("erroSTR","Erro ao recuperar"); 
    }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pagina) ;
        dispatcher.forward(request,response);
    
    
    }
}
