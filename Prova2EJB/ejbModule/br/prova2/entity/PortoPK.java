package br.prova2.entity;

import java.io.Serializable;
import java.lang.String;

/**
 * ID class for entity: Porto
 *
 */ 
public class PortoPK  implements Serializable {   
   
	         
	private String idNavio;         
	private int sequencial;
	private static final long serialVersionUID = 1L;

	public PortoPK() {}

	

	public String getIdNavio() {
		return this.idNavio;
	}

	public void setIdNavio(String idNavio) {
		this.idNavio = idNavio;
	}
	

	public int getSequencial() {
		return this.sequencial;
	}

	public void setSequencial(int sequencial) {
		this.sequencial = sequencial;
	}
	
   
	/*
	 * @see java.lang.Object#equals(Object)
	 */	
	public boolean equals(Object o) {
		if (o == this) {
			return true;
		}
		if (!(o instanceof PortoPK)) {
			return false;
		}
		PortoPK other = (PortoPK) o;
		return true
			&& (getIdNavio() == null ? other.getIdNavio() == null : getIdNavio().equals(other.getIdNavio()))
			&& getSequencial() == other.getSequencial();
	}
	
	/*	 
	 * @see java.lang.Object#hashCode()
	 */	
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (getIdNavio() == null ? 0 : getIdNavio().hashCode());
		result = prime * result + getSequencial();
		return result;
	}
   
   
}
