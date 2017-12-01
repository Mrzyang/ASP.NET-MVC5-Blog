using MyBlog.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;

namespace MyBlog.Controllers
{
    public class AdminController : Controller
    {
        MyBlogEntities dbContext = new MyBlogEntities();
        // GET: Admin
        public ActionResult Index(int page = 1)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Admin/Login");
            }
            var result = (from u in dbContext.admin
                          where u.username!="admin"
                          select u).ToList<admin>();
            int pageSize = 8;
            ViewBag.user = Session["username"]; //前台权限判断
            return View(result.ToPagedList<admin>(page, pageSize));
        }
        public ActionResult Login()
        {
            if (Session["username"] != null)
            {
                Response.Redirect("Info");
            }
            return View();
        }
        public JsonResult CkeckLogin(string username, string password)
        {
            var result = from u in dbContext.admin
                         where u.username == username && u.password == password
                         select u;
            if (result.Count() > 0)
            {
                Session["username"] = username;
                return Json(new { status = 1, data = "登录成功！" });
            }
            else
            {
                return Json(new { status = 0, data = "登录失败！" });
            }
        }

        public ActionResult Logout()
        {
            Session["username"] = null;
            return View("Login");
        }
        public ActionResult ModifyPasswd()
        {
            ViewBag.user = Session["username"]; //传参给前端
            return View();
        }
        public JsonResult CheckModifyPasswd(string user, string pwd, string pwdd)
        {
            var result = from u in dbContext.admin
                         where u.username == user
                         select u;
            foreach (var u in result)
            {
                u.password = pwd;
            }
            if (dbContext.SaveChanges() != 0)
            {
                Session["username"] = null;
                return Json(new { status = 1, data = "修改成功" });
            }
            else return Json(new { status = 0, data = "修改失败" });
        }
        public ActionResult Info()
        {
            ViewBag.serverName = "http://" + Request.Url.Host;
            ViewBag.serverIP = Request.ServerVariables.Get("Local_Addr").ToString();
            ViewBag.serverIIS = Request.ServerVariables["SERVER_SOFTWARE"].ToString();
            ViewBag.serverDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            ViewBag.serverDoname = Request.ServerVariables["SERVER_NAME"].ToString();
            ViewBag.NETVersion = Environment.Version.Major;
            ViewBag.System = Environment.OSVersion.ToString();
            return View();
        }

        public ActionResult UserAdd()
        {
            return View();
        }

        public JsonResult ProcessAdd(string userName, string pwd, string pwdd)
        {
            admin myuser = new admin();
            var result = from u in dbContext.admin
                         where u.username == userName
                         select u;
            if (result.Count() > 0) return Json(new { status = 0, data = "该用户已存在,请重新输入！" });
            else
            {
                myuser.username = userName;
                myuser.password = pwd;
                dbContext.admin.Add(myuser);
                if (dbContext.SaveChanges() != 0)
                    return Json(new { status = 1, data = "添加成功" });
                else return Json(new { status = 0, data = "添加失败" });
            }
        }


        public ActionResult UpdateUser(int id)
        {
            admin myuser = dbContext.admin.Find(id);
            ViewBag.id = id;
            ViewBag.username = myuser.username;
            return View();
        }

        public JsonResult ProcessUpdate(int userId, string userName, string pwd, string pwdd)
        {


            admin myuser = dbContext.admin.Find(userId);
            myuser.password = pwd;
            if (dbContext.SaveChanges() != 0)
                return Json(new { status = 1, data = "修改成功" });
            else return Json(new { status = 0, data = "修改失败" });
        }

        public void ProcessDelete(int id)
        {
            admin myuser = dbContext.admin.Find(id);
            var result = from a in dbContext.article
                         where a.creator == id
                         select a;
            if (result.Count() > 0)  //如果要删除的user发表过文章，那么就把这些文章的creator=1，也就是“admin”
            {
                foreach (var a in result)
                    a.creator = 1;
            }
            dbContext.admin.Remove(myuser);
            dbContext.SaveChanges();
        }

        public void ManyDelete(string idStr)
        {
            string str = idStr.Substring(0, idStr.LastIndexOf(","));
            string[] idTemp = str.Split(',');
            admin myuser;
            foreach (string s in idTemp)
            {
                myuser = dbContext.admin.Find(int.Parse(s));
                dbContext.admin.Remove(myuser);
            }
            dbContext.SaveChanges();
        }
    }
}