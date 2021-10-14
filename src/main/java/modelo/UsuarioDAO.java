package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;
import conexion.Conexion;
import entidad.UsuarioDTO;
//import sun.util.resources.cldr.ext.CurrencyNames_af_NA;

public class UsuarioDAO{ 

	Conexion con=new Conexion();
	Connection cnn =con.getConexion();
	PreparedStatement ps;
	ResultSet rs;
	UsuarioDTO usu;

	public String insertarusuario(UsuarioDTO us) {
		int x;
		String dat="";
		try {
			usu=consultarusuario(us);
			if(usu==null) {
				ps=cnn.prepareStatement("INSERT INTO usuarios VALUES(?,?,?,?,?)");
				ps.setInt(1, us.getDocumento());
				ps.setString(2, us.getRol());
				ps.setString(3, us.getEstado());
				ps.setString(4, us.getClave());
				ps.setString(5, us.getNomusuario());



				x=ps.executeUpdate();
					if(x>0) {
						dat="r";
					}
			}	
			else {
				dat="nr";
			}
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error al insertar"+e);
			
		}
		
		
		return dat;
	}


	public  UsuarioDTO consultarusuario(UsuarioDTO us) {
		
	try {
		ps=cnn.prepareStatement("SELECT * FROM usuarios WHERE cedula_usuario=?");
		ps.setInt(1, us.getDocumento());
		rs=ps.executeQuery();
		if(rs.next()) {
		   usu=new UsuarioDTO(rs.getInt(1), rs.getString(3), rs.getString(4), rs.getString(2), rs.getString(5));
					
		}
		
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}	
		
	return usu;
	}



	public int eliminar(UsuarioDTO us) {
		
		int x=0;
	  try {
		ps=cnn.prepareStatement("DELETE FROM usuarios WHERE cedula_usuario=?");
		ps.setInt(1, us.getDocumento());
		x=ps.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	 return x; 	
	}
		
	public boolean actualizar(UsuarioDTO us) {
		boolean dat=false;
		int x;
		try {
			ps=cnn.prepareStatement("UPDATE usuarios SET nombre_usuario=?,password=?,email_usuario=?,usuario=? WHERE cedula_usuario=?");
			ps.setString(1, us.getNomusuario());
			ps.setString(2, us.getClave());
			ps.setString(3, us.getRol());
			ps.setString(4, us.getEstado());
			ps.setInt(5, us.getDocumento());

				x=ps.executeUpdate();
					if(x>0) {
						dat=true;
					}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			JOptionPane.showMessageDialog(null, "ERROR AL ACTUALIZAR"+e);
			
		}
		
		return dat;
	}
	
	public ArrayList<UsuarioDTO> consultar(){
		ArrayList<UsuarioDTO> lista=new  ArrayList<UsuarioDTO>();
		try {
			ps=cnn.prepareStatement("SELECT * FROM usuarios");
			rs=ps.executeQuery();
			while(rs.next()) {
				usu=new UsuarioDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
			   lista.add(usu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lista;
	}


	   
}
