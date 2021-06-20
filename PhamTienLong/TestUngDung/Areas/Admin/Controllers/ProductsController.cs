using ModelEF.DAO;
using ModelEF.Model;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestUngDung.Areas.Admin.Controllers
{
    public class ProductsController : BaseController
    {
        // GET: Admin/Products
        public ActionResult Index(int page = 1, int pagesize = 5)
        {
            var product = new ProductDAO();
            var model = product.getListProducts();
            return View(model.ToPagedList(page, pagesize));
        }

        ///////////////////////


        [HttpDelete]
        public ActionResult Delete(int id)
        {
            var dao = new ProductDAO().Delete(id);
            ModelState.AddModelError("", "Xóa sản phẩm thành công!");
            return RedirectToAction("Index");

        }

        //===================
        [HttpGet]
        public ActionResult Details()
        {
            String value = Request["idProduct"];
            int x = int.Parse(value);
            ViewBag.NameDetailProduct = value;
            var dao = new ProductDAO();
            var model = dao.FindOneById(x);

            return View(model);
        }

        //================
        [HttpGet]
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }
        //================
        [HttpPost]
        public ActionResult Create(Product model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var dao = new ProductDAO();
                    dao.Insert(model);
                    SetAlert("Thành công", "success");
                    return RedirectToAction("Index", "Products"); 
                }
                else
                {
                    SetViewBag();  ///
                }
            }
            catch (Exception ex)
            {
                Common.Common.WriteLog("Products", "Create-Post", ex.ToString());
            }
            
            return View();
        }
        ///====================
        ///
        public void SetViewBag(string selectedId=null)
        {
            var dao = new CategoryDAO();
            ViewBag.CategoryId = new SelectList(dao.ListAll(), "Id", "Name", selectedId);
        }
    }
}