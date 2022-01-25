package com.example.cafe.controller;

import com.example.cafe.model.User;
import com.example.cafe.repository.UserRepository;
import com.example.cafe.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
//@PreAuthorize("hasAuthority('ADMIN')")
@RequestMapping("/admin")
@AllArgsConstructor
public class UserController {
    private final UserService service;
    private final UserRepository userRepository;

    @GetMapping
    public String userList(Model model, User user) {
//        userRepository.findByRole(user.getRole());
//        if(user.getRole().equals("ADMIN")) {
        model.addAttribute("users", userRepository.findAll());
        return "userList";
//        }
//        return "redirect:/login";
    }

    @GetMapping("{user}")
    public String userEdit(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
//        model.addAttribute("roles", Role.values());
        return "userEdit";
    }
}
