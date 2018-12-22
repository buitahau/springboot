package vietpower.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import vietpower.com.model.MachineColourantLog;
import vietpower.com.service.MachineService;

import java.util.List;

/**
 * Created by HauKute on 12/20/2018.
 */
@Controller
public class MachineController {

    @Autowired
    MachineService machineService;

    @RequestMapping(value = "/machine/list")
    public String listMachine(ModelMap modelMap){
        modelMap.addAttribute("listMachines", machineService.findAllMachine());
        return "machine/list";
    }

    @RequestMapping(value = "/machine/{machineId}/colour")
    public String machineColour(@PathVariable Long machineId,  ModelMap modelMap){
        modelMap.addAttribute("machineColourants", machineService.getAllMachineColourant(machineId));
        return "machine/machine_colour";
    }

    @RequestMapping(value = "/machine/colour/detail/{machineColourId}")
    public String machineColourDetail(@PathVariable Long machineColourId,  ModelMap modelMap){
        List<MachineColourantLog> logs = machineService.getAllMachineColourantLog(machineColourId);
        modelMap.addAttribute("logs", logs);
        if(logs.size() > 0) {
            modelMap.addAttribute("machineId", logs.get(0).getMachineColourant().getMachine().getMachineId());
        }
        return "machine/machine_colour_detail";
    }

    @RequestMapping(value = "/machine/{machineId}/formula")
    public String machineFormula(@PathVariable Long machineId,  ModelMap modelMap){
        modelMap.addAttribute("machinefpbs", machineService.getAllMachineFormulaProductBase(machineId));
        return "machine/machine_formula";
    }
}
