using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using MyBlog.Models;

namespace MyBlog.Controllers
{
    public class HomeController : Controller
    {
        MyBlogEntities dbContext = new MyBlogEntities();
        public ActionResult Index(int page = 1)
        {
            int pageSize = 6;
            var result = (from a in dbContext.article
                          orderby a.time descending
                          select a).ToList<article>();
            return View(result.ToPagedList<article>(page, pageSize));
        }
        [HttpGet]
        public ActionResult ArticlesOfCate(int id,int page=1)
        {
            var articleResult = (from a in dbContext.article
                                 where a.cateid==id
                                 select a).ToList<article>();
            int pageSize = 6;
            return View("Index", articleResult.ToPagedList<article>(page, pageSize));
        }
        public ActionResult articleDetail(int id)  //显示一篇文章的详细内容
        {
            return View();
        }

        public PartialViewResult showCates()
        {
            var result = (from c in dbContext.cate where c.catname != "未分类" select c).ToList<cate>();
            return PartialView(result);
        }
        public PartialViewResult showLastest()
        {
            var result = (from a in dbContext.article
                          orderby a.time descending
                          select a).Take<article>(8).ToList<article>();  //取最新的8篇文章
            return PartialView(result);
        }

        public PartialViewResult showLinks()
        {
            var result = (from l in dbContext.link select l).ToList<link>();
            return PartialView(result);
        }

    }
}