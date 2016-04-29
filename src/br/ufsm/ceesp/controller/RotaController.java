package br.ufsm.ceesp.controller;

import br.ufsm.ceesp.beans.ServicoDAO;
import br.ufsm.ceesp.model.OrdemServicoRota;
import br.ufsm.ceesp.model.Rota;
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
    private ServicoDAO servicoDAO;

    @Transactional
    @RequestMapping(name = "visualiza-rota.html")
    public String visualizaRotas(Long idRota, Model model) {
        Rota rota = servicoDAO.findRotaById(idRota);
        for (OrdemServicoRota ord : rota.getOrdems()) {
            ord.getCusto();
        }
        model.addAttribute("rota", rota);
        return "rota";
    }

}
