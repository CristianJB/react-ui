package br.ufsm.ceesp.controller;

import br.ufsm.ceesp.beans.PlanejDinamicoDAO;
import br.ufsm.ceesp.beans.ServicoDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String visualizaRotas(Long idEquipe, Long idRotaPlanejada, Long idRotaExecutada,Model model) {
//        model.addAttribute("rotaPlanejada", servicoDAO.findRotaById(idRotaPlanejada));
//        model.addAttribute("rotaExecutada", servicoDAO.findRotaById(idRotaExecutada));
        model.addAttribute("equipes", plaDinDAO.findEquipes());
        model.addAttribute("rotaEquipe", plaDinDAO.findRotasByEquipe(idEquipe));
        return "visualiza-rota";
    }

    @Transactional
    @RequestMapping("mapa-rotas.html")
    public String mapaRotas(Long idRotaPlanejada, Long idRotaExecutada,Model model) {
        //model.addAttribute("rotaPlanejada", servicoDAO.findRotaById(idRotaPlanejada));
        //model.addAttribute("rotaExecutada", servicoDAO.findRotaById(idRotaExecutada));
        return "mapa-rotas";
    }
}
