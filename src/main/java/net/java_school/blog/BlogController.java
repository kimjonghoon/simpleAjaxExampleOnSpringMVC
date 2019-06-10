package net.java_school.blog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BlogController {

    @RequestMapping(method=RequestMethod.GET)
    public String home() {
        return "index";
    }
    
    @RequestMapping(value="java", method=RequestMethod.GET)
    public String javaIndex() {
        return "java/index";
    }

    @RequestMapping(value="java/{id}", method=RequestMethod.GET)
    @ResponseBody
    public Post getPost(@PathVariable String id) {
        Post post = new Post();

        switch (id) {
        case "jdk-install":
            post.setTitle("Java Install");
            post.setKeywords("JDK,Java 8");
            post.setDescription("This article covers Install Java 8");
            post.setContent("visit http://www.oracle.com...");
            break;
        default:
            post.setTitle("No such document.");
            post.setKeywords("No such document.");
            post.setDescription("No such document.");
            post.setContent("No such document.");
        }

        return post;
    }

}
