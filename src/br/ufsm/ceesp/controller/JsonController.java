package br.ufsm.ceesp.controller;

import br.ufsm.ceesp.beans.PlanejDinamicoDAO;
import br.ufsm.ceesp.model.Base;
import br.ufsm.ceesp.model.DespachoOrdemServico;
import br.ufsm.ceesp.model.Equipe;
import br.ufsm.ceesp.model.Rota;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collection;

/**
 * Created by 201420240 on 07/06/2016.
 */
@Controller
public class JsonController {

    @Autowired
    private PlanejDinamicoDAO plaDinDAO;

    @RequestMapping("bases.json")
    public String bases(Model model) {
        Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
        Collection<Base> bases = plaDinDAO.findBases();
        model.addAttribute("json", gson.toJson(bases));
        return "arquivoJSON";
    }

    @RequestMapping("equipes.json")
    public String equipes(Long idBase, Model model) {
        Gson gson = new Gson();
        Collection<Equipe> equipes = plaDinDAO.findEquipesByIdBase(idBase);
        model.addAttribute("json", gson.toJson(equipes));
        return "arquivoJSON";
    }


    @RequestMapping("rotas.json")
    public String rotas(Long idEquipe, Model model) {
        Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
        Collection<Rota> rotas = plaDinDAO.findRotasByEquipe(idEquipe);
        model.addAttribute("json", gson.toJson(rotas));
        return "arquivoJSON";
    }

    @RequestMapping("ordens.json")
    public String ordens(Long idRota, Model model) {
        Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
        Collection<DespachoOrdemServico> ordens = plaDinDAO.findOrdens(idRota);
        model.addAttribute("json", gson.toJson(ordens));
        return "arquivoJSON";
    }

}
