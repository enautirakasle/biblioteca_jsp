package modelo;

import java.util.ArrayList;
import java.util.Iterator;

public class Libro {
	private int id;
	private String titulo;
	private String autor;
	private ArrayList<Prestamo> prestamos;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}
	
	public ArrayList<Prestamo> getPrestamos() {
		return prestamos;
	}

	public void setPrestamos(ArrayList<Prestamo> prestamos) {
		this.prestamos = prestamos;
	}

	public boolean estaPrestado(){
		Iterator<Prestamo> i = this.prestamos.iterator();
		Prestamo prestamo;
		
		while(i.hasNext()){
			prestamo = i.next();
			if(!prestamo.isEntregado()){
				return true;
			}
		}
		return false;
	}
	
	public boolean estaDisponible(){
		Iterator<Prestamo> i = this.prestamos.iterator();
		Prestamo prestamo;
		
		while(i.hasNext()){
			prestamo = i.next();
			if(!prestamo.isEntregado()){
				
				return false;
			}
		}
		//todos los prestamos estan entregados
		return true;
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
