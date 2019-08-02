package org.hui.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.hui.entity.Blog;
import org.hui.utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.List;

public class BlogDao {
    private QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
    private String sql = null;

    //主页文章显示，按照时间排序
    public List<Blog> findAllBlog() throws SQLException {
        sql = "select * from blog GROUP BY createtime desc";
        return runner.query(sql,new BeanListHandler<>(Blog.class));
    }
}
