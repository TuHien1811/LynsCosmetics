using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TTTN_OnlineShop.Models.BUS;

namespace TTTN_OnlineShop.Controllers
{
    [Authorize]
    public class DonHangController : Controller
    {
        // GET: DonHang

        public ActionResult Index()
        {
            var db = DonHangBUS.dsDonHang(User.Identity.GetUserId());
            return View(db);
        }

        // GET: DonHang/Details/5
        public ActionResult Details(int id)
        {
            var db = DonHangBUS.chiTietDonHang(id);
            return View(db);
        }

        // GET: DonHang/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DonHang/Create
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

        // GET: DonHang/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: DonHang/Edit/5
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

        // GET: DonHang/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: DonHang/Delete/5
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
