package com.github.kazuki43zoo.app.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("admin/h2Console")
@Controller
public class H2ConsoleController {
    @RequestMapping(method = RequestMethod.GET)
    public String showH2Console() {
        return "admin/h2Console";
    }
}
