using ModelEF.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using TestUngDung.Common;
using ModelEF.Model;

namespace TestUngDung.Areas.Admin.Controllers
{
    public class UserAccountsController : BaseController
    {
        // GET: Admin/UserAccounts
        public ActionResult Index(int page = 1, int pagesize = 5)
        {
            var user = new UserDAO();
            var model = user.ListAll();
            return View(model.ToPagedList(page, pagesize));
        }
        /////////////////////////////

        [HttpPost]
        public ActionResult Index(string searchString, int page = 1, int pagesize = 5)
        {
            var user = new UserDAO();
            var model = user.ListWhereAll(searchString, page, pagesize);
            ViewBag.SearchString = searchString;
            return View(model);
        }

        ////////////////

        [HttpDelete]
        public ActionResult Delete(int id)
        {

            var dao = new UserDAO();
            bool rs = dao.Delete(id);

            if(rs == true)
            {
                SetAlert("Xóa thành công", "success");
            }
            else
            {
                SetAlert("k dc xoa", "success");
            }

            return RedirectToAction("Index");
        }
        ////////////
    }
}