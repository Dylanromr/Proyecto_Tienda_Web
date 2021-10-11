package modelo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entidad.Login;
import conexion.Conexion;

public class ModeloLogin 
{
	public Login iniciarSesion(String nombre, String clave) {
		Login login = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT cedula_usuario, nombre_usuario, password FROM usuarios U WHERE nombre_usuario = ? AND password = ?";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, nombre);
			pstm.setString(2, clave);
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				login = new Login();
				login.setIdUsuario(rs.getInt("cedula_usuario"));
				login.setNombre(rs.getString("nombre"));
				login.setClave(rs.getString("clave"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				
				if (pstm != null) {
					pstm.close();
				}
				
				if (cn != null) {
					cn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return login;
	}
}
