package br.ufsm.ceesp.controller;

import br.ufsm.ceesp.beans.PlanejDinamicoDAO;
import br.ufsm.ceesp.model.Base;
import br.ufsm.ceesp.model.Equipe;
import br.ufsm.ceesp.model.Rota;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collection;

/**
 * Created with IntelliJ IDEA.
 * User: Rafael
 * Date: 29/04/16
 * Time: 10:17
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class RotaController {


    @Autowired
    private PlanejDinamicoDAO plaDinDAO;

    @Transactional
    @RequestMapping("visualiza-rota.html")
    public String visualizaRotas(Long idEquipe, Long idRota, Long idBase,Model model) {
        model.addAttribute("equipes", plaDinDAO.findEquipes());
        model.addAttribute("rotas", plaDinDAO.findRotasByEquipe(idEquipe));
        model.addAttribute("rotaEquipe", plaDinDAO.findRotaById(idRota));
        return "visualiza-rota";
    }

    @Transactional
    @RequestMapping("mapa-rotas.html")
    public String mapaRotas(Long idRotaPlanejada, Long idRotaExecutada,Model model) {
        //model.addAttribute("rotaPlanejada", servicoDAO.findRotaById(idRotaPlanejada));
        //model.addAttribute("rotaExecutada", servicoDAO.findRotaById(idRotaExecutada));
        return "mapa-rotas";
    }

    @RequestMapping("teste.json")
    public String testeJSON(Long idEquipe, Long idBase, Model model) {
        Gson gson = new Gson();
        Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();

        Collection<Equipe> equipes = plaDinDAO.findEquipes();
        Collection<Equipe> equipesPorBase = plaDinDAO.findEquipesByIdBase(idBase);
        Collection<Base> bases = plaDinDAO.findBases();
        Collection<Rota> rotasByEquipe = plaDinDAO.findRotasByEquipe(idEquipe);

        model.addAttribute("equipes", gson.toJson(equipes));
        model.addAttribute("equipesPorBase", g.toJson(equipesPorBase));
        model.addAttribute("bases", gson.toJson(bases));
        model.addAttribute("rotasByEquipe", g.toJson(rotasByEquipe));
        return "testeJSON";
    }
}