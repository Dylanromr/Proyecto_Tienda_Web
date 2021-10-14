package entidad;

public class Login 
{
	private int cedula_usuario;
	private String nombre;
	private String password;

	public int getCedula_usuario() {
		return cedula_usuario;
	}

	public void setCedula_usuario(int cedula_usuario) {
		this.cedula_usuario = cedula_usuario;
	}

	public String getNombre_usuario() {
		return nombre;
	}

	public void setNombre_usuario(String nombre) {
		this.nombre = nombre;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
