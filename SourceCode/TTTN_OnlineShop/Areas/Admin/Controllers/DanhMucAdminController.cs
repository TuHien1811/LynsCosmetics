using LynsCosmetics_Connection;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TTTN_OnlineShop.Models.BUS;

namespace TTTN_OnlineShop.Areas.Admin.Controllers
{
    public class DanhMucAdminController : Controller
    {
        // GET: Admin/DanhMucAdmin
        public ActionResult Index(int page = 1, int pagesize = 8)
        {
            var ds = DanhMucBUS.DanhsachFull().ToPagedList(page, pagesize);
            return View(ds);
        }

        // GET: Admin/DanhMucAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/DanhMucAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/DanhMucAdmin/Create
        [HttpPost]
        public ActionResult Create(Table_DanhMuc danhMuc)
        {
            try
            {
                // TODO: Add insert logic here
                DanhMucBUS.themDanhMuc(danhMuc);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/DanhMucAdmin/Edit/5
        public ActionResult Edit(int id)
        {
            return View(DanhMucBUS.ChiTietDanhMuc(id));
        }

        // POST: Admin/DanhMucAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, Table_DanhMuc danhMuc)
        {
            try
            {
                // TODO: Add update logic here
                DanhMucBUS.suaDanhMuc(danhMuc, id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/DanhMucAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/DanhMucAdmin/Delete/5
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
        public ActionResult DeleteDanhMuc(int id)
        {
            try
            {
                // TODO: Add delete logic here
                DanhMucBUS.xoaDanhMuc(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
