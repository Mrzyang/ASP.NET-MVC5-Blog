using MyBlog.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;

namespace MyBlog.Controllers
{
    public class ArticleController : Controller
    {
        MyBlogEntities dbContext = new MyBlogEntities();
        // GET: Article
        public ActionResult Index(int page = 1)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/Admin/Login");
            }
            int pageSize = 8;
            if (Session["username"].ToString() == "admin")
            {
                var result = (from a in dbContext.article
                              select a).ToList<article>();
                return View(result.ToPagedList<article>(page, pageSize));
            }
            else
            {
                string user = Session["username"].ToString();
                var result = (from a in dbContext.article
                              where a.admin.username == user
                              select a).ToList<article>();
                return View(result.ToPagedList<article>(page, pageSize));
            }


        }

        public ViewResult sortByUpdateTime(int page = 1)
        {
            int pageSize = 8;
            if (Session["username"].ToString() == "admin")
            {
                var result = (from a in dbContext.article
                              orderby a.time descending
                              select a).ToList<article>();
                return View("Index",result.ToPagedList<article>(page, pageSize));
            }
            else
            {
                string user = Session["username"].ToString();
                var result = (from a in dbContext.article
                              where a.admin.username == user
                              orderby a.time descending
                              select a).ToList<article>();
                return View("Index",result.ToPagedList<article>(page, pageSize));
            }
        }





        public ActionResult addArticle()
        {
            var result = (from c in dbContext.cate
                          select c).ToList<cate>();
            ViewBag.author = Session["username"].ToString();
            return View(result);
        }
        [HttpPost]
        [ValidateInput(false)]
        public JsonResult ProcessAdd(string title, int catid, string author, string desc, string content)
        {
            article myarticle = new article();
            myarticle.title = title;
            myarticle.cateid = catid;
            myarticle.content = content;
            myarticle.desc = desc;
            myarticle.time = DateTime.Now;
            var result = from a in dbContext.admin
                         where a.username == author
                         select a;
            foreach (var a in result)
            {
                myarticle.creator = a.id;
            }
            dbContext.article.Add(myarticle);
            if (dbContext.SaveChanges() != 0)
            {
                return Json(new { status = 1, data = "添加成功！" });
            }
            else
            {
                return Json(new { status = 0, data = "添加失败！" });
            }

        }

        public ActionResult UpdateArticle(int id)
        {
            article myarticle = dbContext.article.Find(id);
            ViewBag.id = myarticle.id;
            ViewBag.atitle = myarticle.title;
            ViewBag.author = myarticle.admin.username;
            ViewBag.cateName = myarticle.cate.catname;
            ViewBag.content = myarticle.content;
            ViewBag.desc = myarticle.desc;
            var result = (from c in dbContext.cate
                          select c).ToList<cate>();
            return View(result);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult ProcessUpdate(int id, string title, int catid, string author, string desc, string content)
        {
            article myarticle = dbContext.article.Find(id);
            myarticle.title = title;
            myarticle.cateid = catid;
            myarticle.content = content;
            myarticle.desc = desc;
            myarticle.time = DateTime.Now;
            if (dbContext.SaveChanges() != 0)
            {
                return Json(new { status = 1, data = "修改成功！" });
            }
            else
            {
                return Json(new { status = 0, data = "修改失败！" });
            }
        }

        public void ProcessDelete(int id)
        {
            article myarticle = dbContext.article.Find(id);
            dbContext.article.Remove(myarticle);
            dbContext.SaveChanges();
        }
        public void ManyDelete(string idStr)
        {
            string str = idStr.Substring(0, idStr.LastIndexOf(","));
            string[] idTemp = str.Split(',');
            article myarticle;
            foreach (string s in idTemp)
            {
                myarticle = dbContext.article.Find(int.Parse(s));
                dbContext.article.Remove(myarticle);

            }
            dbContext.SaveChanges();
        }

        public ViewResult Detail(int id)
        {
            article myarticle = dbContext.article.Find(id);
            ViewBag.atitle = myarticle.title;
            ViewBag.author = myarticle.admin.username;
            ViewBag.creatTime = myarticle.time;
            ViewBag.cateName = myarticle.cate.catname;
            ViewBag.content = myarticle.content;
            return View();
        }

    }
}