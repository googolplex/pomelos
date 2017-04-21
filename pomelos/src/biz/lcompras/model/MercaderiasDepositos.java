package biz.lcompras.model;

import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;
import org.openxava.util.*;

@Entity
@Table(name="KAN_Depositos"
 , uniqueConstraints={
         @UniqueConstraint(name="KAN_DEPOSITO_DUPLICADA", columnNames={"KAN_NOMBREDEPOSITO"})        
 }
)

public class MercaderiasDepositos extends SuperClaseFeliz {

	@Required
	@Column(length=80,nullable=false,name="KAN_NOMBREDeposito")
	private String nombreDeposito;

	
	
	public String getNombreDeposito() {
		return nombreDeposito;
	}



	public void setNombreDeposito(String nombreDeposito) {
		this.nombreDeposito = nombreDeposito.toUpperCase().trim();
	}



	@PreUpdate
	private void ultimoPaso() {
			Date mifechora = new java.util.Date() ;
			super.setModificadoPor(Users.getCurrent()) ;
			super.setFchUltMod(mifechora)  ;
	}		
	
}