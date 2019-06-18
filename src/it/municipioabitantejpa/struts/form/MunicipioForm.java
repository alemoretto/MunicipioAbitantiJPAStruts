package it.municipioabitantejpa.struts.form;

import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import it.municipioabitantejpa.model.Abitante;

public class MunicipioForm extends ActionForm {

	private static final long serialVersionUID = -5829818823998598284L;

	private Long id;
	private String descrizione;
	private String codice;
	private String ubicazione;
	private Set<Abitante> abitanti = new HashSet<>();
	
//	@Override
//	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
//		// TODO Auto-generated method stub
//		return super.validate(mapping, request);
//	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

	public String getUbicazione() {
		return ubicazione;
	}

	public void setUbicazione(String ubicazione) {
		this.ubicazione = ubicazione;
	}

	public Set<Abitante> getAbitanti() {
		return abitanti;
	}

	public void setAbitanti(Set<Abitante> abitanti) {
		this.abitanti = abitanti;
	}

}
