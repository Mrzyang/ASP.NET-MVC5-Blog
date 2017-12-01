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
    public class CateController : Controller
    {
        MyBlogEntities dbContext = new MyBlogEntities();
        // GET: Cate
        public ActionResult Index(int page = 1)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/Admin/Login");
            }
            var result = (from c in dbContext.cate
                          where c.catname!="未分类"
                          select c).ToList<cate>();
            int pageSize = 8;

            return View(result.ToPagedList<cate>(page, pageSize));
        }
        public ActionResult AddCate()
        {
            return View();
        }
        public JsonResult ProcessAdd(string cateName)
        {
            cate mycate = new cate();
            var result = from c in dbContext.cate
                         where c.catname == cateName
                         select c;
            if (result.Count() > 0) return Json(new { status = 0, data = "该分类已存在,请重新输入！" });
            else
            {
                mycate.catname = cateName;
                dbContext.cate.Add(mycate);
                if (dbContext.SaveChanges() != 0)
                    return Json(new { status = 1, data = "添加成功" });
                else return Json(new { status = 0, data = "添加失败" });
            }
        }

        public ActionResult UpdateCate(int id)
        {
            cate mycate = dbContext.cate.Find(id);
            ViewBag.id = mycate.id;
            ViewBag.catename = mycate.catname;
            return View();
        }
        public JsonResult ProcessUpdate(int cateId, string cateName)
        {
            var result = from c in dbContext.cate
                         where c.catname == cateName
                         select c;
            if (result.Count() > 0) return Json(new { status = 0, data = "该分类已存在,请重新输入！" });
            else
            {
                cate mycate = dbContext.cate.Find(cateId);
                mycate.catname = cateName;
                if (dbContext.SaveChanges() != 0)
                    return Json(new { status = 1, data = "修改成功" });
                else return Json(new { status = 0, data = "修改失败" });
            }
        }

        public void ProcessDelete(int id)
        {
            cate mycate = dbContext.cate.Find(id);
            var result = from a in dbContext.article
                         where a.cateid == id
                         select a;
            if (result.Count() > 0)     //如果要删除的分类下有文章，那么就把这些文章的cateid=1，也就是“未分类”
            {
                foreach (var a in result)
                    a.cateid = 1;
            }
            dbContext.cate.Remove(mycate);
            dbContext.SaveChanges();
        }

        public void ManyDelete(string idStr)
        {
            string str = idStr.Substring(0, idStr.LastIndexOf(","));
            string[] idTemp = str.Split(',');
            cate mycate;
            foreach (string s in idTemp)
            {
                Response.Write(int.Parse(s));
                mycate = dbContext.cate.Find(int.Parse(s));
                dbContext.cate.Remove(mycate);

            }
            dbContext.SaveChanges();
        }

    }
}