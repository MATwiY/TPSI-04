package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {
    
    protected int timer = 0;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
       
        
        List<Person> personList = new ArrayList<>();
        Person p1 = new Person("Jan", "Kowalski", "janKowalski@poczta.pl");
        Person p2 = new Person("Marek", "Kowalski", "marekKowalski@poczta.pl");
        Person p3 = new Person("Mateusz", "Kowalski", "mateuszKowalski@poczta.pl");
        Person p4 = new Person("Kuba", "Kowalski", "kubaKowalski@poczta.pl");
        Person p5 = new Person("Andrzej", "Kowalski", "andrzejKowalski@poczta.pl");
        
        personList.add(p1);
        personList.add(p2);
        personList.add(p3);
        personList.add(p4);
        personList.add(p5);
        

        request.setAttribute("personList", personList);
        request.getRequestDispatcher("personList.jsp").forward(request, response);
        
    }
    
    public int getTimer(){
        return timer;
    }
    public void setTimer(){
        timer++;
    }
}