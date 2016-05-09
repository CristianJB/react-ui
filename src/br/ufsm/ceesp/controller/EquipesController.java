package br.ufsm.ceesp.controller;


import br.ufsm.ceesp.beans.PlanejDinamicoDAO;
import br.ufsm.ceesp.util.CargaArquivos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 201420240 on 03/05/2016.
 */

@Controller
public class EquipesController {

    @Autowired
    private PlanejDinamicoDAO plaDinDAO;

    @Autowired
    private CargaArquivos cargaArquivos;

    @RequestMapping("mapa-equipes.html")
    public String visualiza(Model model) {
        model.addAttribute("equipes", plaDinDAO.findEquipes());
//        model.addAttribute("rotaEquipe", plaDinDAO.findRotasByEquipe(idEquipe));
        return "mapa-equipes";
    }
}
