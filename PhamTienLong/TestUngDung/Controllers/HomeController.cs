using ModelEF.DAO;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestUngDung.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(int page = 1, int pagesize = 10)
        {
            var product = new ProductDAO();
            var model = product.ListAll();
            return View(model.ToPagedList(page, pagesize));
        }


    }
}