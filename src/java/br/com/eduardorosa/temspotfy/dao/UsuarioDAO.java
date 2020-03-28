/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.eduardorosa.temspotfy.dao;

import br.com.eduardorosa.temspotfy.model.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author EduRosa
 */
public class UsuarioDAO implements GenericDAO {

    private DataSource dataSource;
    public UsuarioDAO(DataSource dataSource){
        this.dataSource = dataSource;
    }
    
    public void create(Object o){
        //Não vai fazer nada
    }
  
    public List<Object> read(Object o){
        try{
            if(o instanceof Usuario){
                Usuario incompleto = (Usuario)o;
                String SQL = "SELECT * FROM tblUsuario WHERE email = ? AND senha = ?";
                PreparedStatement stm = dataSource.getConnection().prepareStatement(SQL);
                stm.setString(1, incompleto.getEmail());
                stm.setString(2, incompleto.getSenha());
                ResultSet rs = stm.executeQuery();
                ArrayList<Object> result = new ArrayList<Object>();
                if(rs.next()){
                    Usuario usuario = new Usuario();
                    usuario.setId(rs.getInt("idUsuario"));
                    usuario.setNome(rs.getString("nome"));
                    usuario.setEmail(rs.getString("email"));
                    usuario.setSenha(rs.getString("senha"));
                    result.add(usuario);
                }
                stm.close();
                rs.close();
                return result;
                
            }else{
                throw new RuntimeException("invalid Object");
            }
        }catch(SQLException ex){
            System.out.println("Erro ao recuperar"+ex.getMessage());
        }
        return null;
        
    }
    
    public void update(Object o){
        //Não vai fazer nada
    }
    
    public void delete(Object o){
        //Não vai fazer nada
    }
}
