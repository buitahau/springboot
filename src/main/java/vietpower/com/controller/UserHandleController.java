package vietpower.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vietpower.com.model.Collection;
import vietpower.com.model.Formula;
import vietpower.com.model.Role;
import vietpower.com.model.User;
import vietpower.com.service.*;
import vietpower.com.utils.SecurityUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by HauKute on 1/4/2019.
 */
@Controller
@RequestMapping("/admin")
public class UserHandleController {
    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

    @Autowired
    MachineService machineService;

    @Autowired
    CompanyService companyService;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = {"/user/list" }, method = RequestMethod.GET)
    public String listUsers(ModelMap model) {
        List<User> users = userService.findAllUsers();
        model.addAttribute("users", users);
        model.addAttribute("loggedinuser", getPrincipal());
        Boolean isSuperAdmin = SecurityUtils.isUserHasRole("ROLE_SUPER_ADMIN");
        model.addAttribute("isSuperAdmin", isSuperAdmin);
        return "users/list";
    }

    /**
     * This method will provide the medium to add a new user.
     */
    @RequestMapping(value = {"/user/add" })
    public String newUser(ModelMap model) {
        User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("edit", false);
        model.addAttribute("loggedinuser", getPrincipal());
        model.addAttribute("listMachine", this.machineService.findAllMachine());
        model.addAttribute("listCompany", this.companyService.findAll());

        getRoleBaseUserLogin(model);
        return "users/add";
    }

    @RequestMapping(value = { "/user/edit/{userId}" })
    public String editUser(@PathVariable Long userId, ModelMap model) {
        User user = userService.findById(userId);
        model.addAttribute("user", user);
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        model.addAttribute("listMachine", this.machineService.findAllMachine());
        model.addAttribute("listCompany", this.companyService.findAll());
        getRoleBaseUserLogin(model);
        return "users/add";
    }

    @RequestMapping(value = { "/user/delete/{userId}" })
    public String deleteUser(@PathVariable Long userId, ModelMap model, RedirectAttributes redirectAttributes) {
        try{
            userService.deleteUserById(userId);
        }catch(Exception e){
            redirectAttributes.addFlashAttribute("messsage", "Cannot delete the user, please remove relative data before delete.");
        }
        return "redirect:/admin/user/list";
    }

    private void getRoleBaseUserLogin(ModelMap model){
        List<Role> roles = this.roleService.findAll();
        Boolean isSuperAdmin = SecurityUtils.userHasAuthority("ROLE_SUPER_ADMIN");

        if(! isSuperAdmin){
            List<Role> newRoles = new ArrayList<>();
            for(Role role : roles){
                if(! role.getRoleName().equalsIgnoreCase("ADMIN") &&  ! role.getRoleName().equalsIgnoreCase("SUPER_ADMIN")){
                    newRoles.add(role);
                }
            }
            model.addAttribute("roles", newRoles);
        } else {
            model.addAttribute("roles", roles);
        }
    }

    @RequestMapping(value = "/user/insert-or-update")
    public String insertOrUpdate(User user, ModelMap modelMap){
        if(user.getMachine() != null && user.getMachine().getMachineId() != null && user.getMachine().getMachineId() < 0){
            user.setMachine(null);
        }

        if(user.getCompany() != null && user.getCompany().getCompanyId() != null && user.getCompany().getCompanyId() < 0){
            user.setCompany(null);
        }

        if(user.getUserId() != null && user.getUserId() > 0){
            this.userService.updateUser(user);
        } else {
            this.userService.saveUser(user);
        }
        return "redirect:/admin/user/list";
    }

    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal instanceof UserDetails){
            userName = ((UserDetails)principal).getUsername();
        }else{
            userName = principal.toString();
        }
        return userName;
    }
}
