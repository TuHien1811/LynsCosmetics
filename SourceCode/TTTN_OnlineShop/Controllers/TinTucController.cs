using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TTTN_OnlineShop.Models.BUS;

namespace TTTN_OnlineShop.Controllers
{
    public class TinTucController : Controller
    {
        // GET: TinTuc
        public ActionResult Index(int page = 1, int pagesize = 6)
        {
            var ds = TinTucBUS.Danhsach().ToPagedList(page, pagesize);
            return View(ds);
        }

        // GET: TinTuc/Details/5
        public ActionResult Details(int id)
        {
            var db = TinTucBUS.ChiTiet(id);
            return View(db);
        }

        // GET: TinTuc/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TinTuc/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TinTuc/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: TinTuc/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TinTuc/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: TinTuc/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
