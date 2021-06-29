package com.swufe.javaee.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = "/hobbyFind")
public class HobbyServlet extends HttpServlet {
    private Map<String, List<String>> Hobby;
    @Override
    public void init() {
        Hobby = new HashMap<>();
        List<String> bob=new ArrayList<>();
        bob.add("skiing");
        bob.add("extreme");

        List<String> jim=new ArrayList<>();
        jim.add("skiing");
        jim.add("dating");

        List<String> james=new ArrayList<>();
        james.add("dating");
        james.add("extreme");

        List<String> tom=new ArrayList<>();
        tom.add("scuba");
        tom.add("extreme");

        List<String> fei=new ArrayList<>();
        fei.add("scuba");
        fei.add("extreme");

        List<String> jone=new ArrayList<>();
        jone.add("scuba");
        jone.add("skiing");

        List<String> fred=new ArrayList<>();
        fred.add("dating");
        fred.add("scuba");

        List<String> pradeep=new ArrayList<>();
        pradeep.add("dating");
        pradeep.add("extreme");

        List<String> philippe=new ArrayList<>();
        philippe.add("skiing");
        philippe.add("dating");

        Hobby.put("Bob", bob);
        Hobby.put("Jim", jim);
        Hobby.put("James", james);
        Hobby.put("Tom", tom);
        Hobby.put("Fei", fei);
        Hobby.put("Jone", jone);
        Hobby.put("Fred", fred);
        Hobby.put("Pradeep", pradeep);
        Hobby.put("Philippe", philippe);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hobby = request.getParameter("hobby");
        List<String> names = new ArrayList<>();
        Hobby.forEach((k, v) -> {
            for(int i=0;i<v.size();i++){
                if(v.get(i).equals(hobby)){
                    names.add(k);

                }
            }
        });
        request.setAttribute("names", names);
        request.setAttribute("hobby", hobby);
        request.getRequestDispatcher("hobbyResult.jsp").forward(request, response);
    }

}
