package net.javaguides.springboot.springsecurity.web;

import net.javaguides.springboot.springsecurity.model.User;
import net.javaguides.springboot.springsecurity.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.server.session.DefaultWebSessionManager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MainController {


    @Autowired
    UserService userService;


    @GetMapping("/")
    public String root(HttpSession httpSession) {
        httpSession.setAttribute("user", "username");
        return "index";
    }

    @GetMapping("/login")
    public String login(Model model, HttpServletRequest request) {
        String  st = request.getParameter("username");
        User user = userService.findByUserName(request.getParameter("username"));
        return "login/login";
    }

//    @Cacheable(key = "username")
    @GetMapping("/findUser")
    public String findUser(Model model, HttpServletRequest request) {
        String  st = request.getParameter("username");
        User user = userService.findByUserName(request.getParameter("username"));
        return "index";
    }

    @GetMapping("/success")
    public String userIndex() {
        return "success";
    }

    @GetMapping("/loginFailed")
    public String loginFailed() {
        return "failed";
    }
}
