package it.municipioabitantejpa.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import it.municipioabitantejpa.model.Abitante;
import it.municipioabitantejpa.service.MyServiceFactory;
import it.municipioabitantejpa.service.abitante.AbitanteService;
import it.municipioabitantejpa.struts.form.AbitanteForm;

public class AbitanteAction extends DispatchAction {

	public ActionForward list(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setAttribute("abitantiList", MyServiceFactory.getAbitanteServiceInstance().listAllAbitanti());
		return mapping.findForward("list");
	}
	
//	public ActionForward show(ActionMapping mapping, ActionForm form, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//
//		String idMunicipioParam = request.getParameter("idMunicipio");
//		long idMunicipio = Long.parseLong(idMunicipioParam);
//		Municipio municipioInstance = MyServiceFactory.getMunicipioServiceInstance()
//				.caricaSingoloMunicipio(idMunicipio);
//		request.setAttribute("MunicipioForm", municipioInstance);
//
//		return mapping.findForward("show");
//	}

//	public ActionForward create(ActionMapping mapping, ActionForm form, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//
//		return mapping.findForward("create");
//	
//	}

//	public ActionForward save(ActionMapping mapping, ActionForm form, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//
//		MunicipioForm municipioForm = (MunicipioForm) form;
//
//		try {
//			Municipio municipioDaInserire = new Municipio();
//			BeanUtils.copyProperties(municipioDaInserire, municipioForm);
//			// questa va fatta altrimenti il copyProperties ci mette 0
//			municipioDaInserire.setId(null);
//			MyServiceFactory.getMunicipioServiceInstance().inserisciNuovo(municipioDaInserire);
//
//		} catch (Exception e) {
//			throw e;
//		}
//
//		return mapping.findForward("home");
//	}

//	public ActionForward edit(ActionMapping mapping, ActionForm form, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//
//		MunicipioForm municipioForm = (MunicipioForm) form;
//
//		try {
//			Municipio municipioDaInserire = new Municipio();
//			BeanUtils.copyProperties(municipioDaInserire, municipioForm);
//			// questa va fatta altrimenti il copyProperties ci mette 0
//			municipioDaInserire.setId(null);
//			MyServiceFactory.getMunicipioServiceInstance().aggiorna(municipioDaInserire);
//
//		} catch (Exception e) {
//			throw e;
//		}
//
//		return mapping.findForward("home");
//	}
	
//	public ActionForward delete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
//			HttpServletResponse response) throws Exception {
//
//		String idMunicipioParam = request.getParameter("idMunicipio");
//		long idMunicipio = Long.parseLong(idMunicipioParam);
//
//		MunicipioService municipioServiceInstance = MyServiceFactory.getMunicipioServiceInstance();
//
//		try {
//			municipioServiceInstance.rimuovi(municipioServiceInstance.caricaSingoloMunicipio(idMunicipio));
//		} catch (Exception e) {
//			throw e;
//		}
//
//		return mapping.findForward("home");
//	}

}
