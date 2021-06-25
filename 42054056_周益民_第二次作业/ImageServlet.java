package com.swufe.javaee.request_response;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@WebServlet(name = "ImageServlet", value = "/image")
public class ImageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        InputStream be = getServletContext().getResourceAsStream("/image/beer.jpeg");
        InputStream be2 = getClass().getClassLoader().getResourceAsStream("/cat.jpeg");
        response.setContentType("image/jpeg");
        byte[] buffer = new byte[1024];
        OutputStream resp = response.getOutputStream();
        int bytesRead = 0;
        while ((bytesRead = be2.read(buffer)) != -1 ) {
            resp.write(buffer, 0,  bytesRead);
        }
        resp.flush();
        resp.close();

    }

}
