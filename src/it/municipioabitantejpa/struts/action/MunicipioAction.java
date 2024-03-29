package it.municipioabitantejpa.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import it.municipioabitantejpa.model.Municipio;
import it.municipioabitantejpa.service.MyServiceFactory;
import it.municipioabitantejpa.service.municipio.MunicipioService;
import it.municipioabitantejpa.struts.form.MunicipioForm;

public class MunicipioAction extends DispatchAction {

	public ActionForward list(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setAttribute("municipiList", MyServiceFactory.getMunicipioServiceInstance().listAllMunicipi());
		return mapping.findForward("list");
	}
	
	public ActionForward show(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		MunicipioForm municipioForm = (MunicipioForm) form;
		Municipio municipioInstance = MyServiceFactory.getMunicipioServiceInstance()
				.caricaSingoloMunicipio(municipioForm.getId());
		BeanUtils.copyProperties(municipioForm, municipioInstance);

		return mapping.findForward("show");
	}

	public ActionForward create(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		return mapping.findForward("create");
	
	}

	public ActionForward save(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		MunicipioForm municipioForm = (MunicipioForm) form;

		try {
			Municipio municipioDaInserire = new Municipio();
			BeanUtils.copyProperties(municipioDaInserire, municipioForm);
			// questa va fatta altrimenti il copyProperties ci mette 0
			municipioDaInserire.setId(null);
			MyServiceFactory.getMunicipioServiceInstance().inserisciNuovo(municipioDaInserire);

		} catch (Exception e) {
			throw e;
		}

		return mapping.findForward("home");
	}

	public ActionForward edit(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		MunicipioForm municipioForm = (MunicipioForm) form;
		Municipio municipioInstance = MyServiceFactory.getMunicipioServiceInstance()
				.caricaSingoloMunicipio(municipioForm.getId());
		BeanUtils.copyProperties(municipioForm, municipioInstance);

		return mapping.findForward("edit");
	}
	
	public ActionForward update(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		MunicipioForm municipioForm = (MunicipioForm) form;
		Municipio municipioInstance = new Municipio();
		System.out.println(municipioInstance+ "\n");
		BeanUtils.copyProperties(municipioInstance, municipioForm);
		System.out.println(municipioInstance);
		MyServiceFactory.getMunicipioServiceInstance().aggiorna(municipioInstance);

		request.setAttribute("municipiList", MyServiceFactory.getMunicipioServiceInstance().listAllMunicipi());
		return mapping.findForward("list");
	}
	
	public ActionForward delete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String idMunicipioParam = request.getParameter("idMunicipio");
		long idMunicipio = Long.parseLong(idMunicipioParam);

		MunicipioService municipioServiceInstance = MyServiceFactory.getMunicipioServiceInstance();

		try {
			municipioServiceInstance.rimuovi(municipioServiceInstance.caricaSingoloMunicipio(idMunicipio));
		} catch (Exception e) {
			throw e;
		}

		return mapping.findForward("home");
	}

}
