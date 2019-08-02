package org.hui.servlet;

import org.hui.entity.Blog;
import org.hui.service.BlogService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/index")
public class IndexServlet extends BeanServlet {
    public void findAllBlog(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BlogService blogService = new BlogService();
        List<Blog> blogList = blogService.findAllBlog();
        request.setAttribute("blogList",blogList);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}
