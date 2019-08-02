package org.hui.service;

import org.hui.dao.BlogDao;
import org.hui.entity.Blog;

import java.sql.SQLException;
import java.util.List;

public class BlogService {
    private BlogDao blogDao = new BlogDao();

    public List<Blog> findAllBlog() {
        List<Blog> blogList = null;
        try {
            blogList = blogDao.findAllBlog();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return blogList;
    }
}
