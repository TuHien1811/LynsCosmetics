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
    public class TinTucAdminController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/TinTucAdmin
        public ActionResult Index(int page = 1, int pagesize = 8)
        {
            var ds = TinTucBUS.DanhsachFull().ToPagedList(page, pagesize);
            return View(ds);
        }

        // GET: Admin/TinTucAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/TinTucAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/TinTucAdmin/Create
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(Table_TinTuc tinTuc)
        {
            try
            {
                // TODO: Add insert logic here
                if (HttpContext.Request.Files.Count > 0)
                {
                    // Anh bia
                    var hpf = HttpContext.Request.Files[0];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/tintuc/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        tinTuc.AnhBia = fileName + ".jpg";
                    }
                    // Anh tin tuc
                    hpf = HttpContext.Request.Files[1];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/tintuc/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        tinTuc.AnhTinTuc = fileName + ".jpg";
                    }
                }
                    tinTuc.NgayDang = DateTime.Now;
                    TinTucBUS.themTinTuc(tinTuc);
                    return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/TinTucAdmin/Edit/5
        public ActionResult Edit(int id)
        {
            return View(TinTucBUS.ChiTiet(id));
        }

        // POST: Admin/TinTucAdmin/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(int id, Table_TinTuc tinTuc)
        {
            var tam = TinTucBUS.ChiTiet(id);
            try
            {
                // TODO: Add update logic here
                if (HttpContext.Request.Files.Count > 0)
                {
                    // Anh bia
                    var hpf = HttpContext.Request.Files[0];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/tintuc/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        tinTuc.AnhBia = fileName + ".jpg";
                    }
                    else
                    {
                        tinTuc.AnhBia = tam.AnhBia;
                    }
                    // Anh tin tuc
                    hpf = HttpContext.Request.Files[1];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/tintuc/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        tinTuc.AnhTinTuc = fileName + ".jpg";
                    }
                    else
                    {
                        tinTuc.AnhTinTuc = tam.AnhTinTuc;
                    }
                }
                tinTuc.NgayDang = tam.NgayDang;
                TinTucBUS.suaTinTuc(tinTuc,id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/TinTucAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/TinTucAdmin/Delete/5
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
        public ActionResult DeleteTinTuc(int id)
        {
            try
            {
                // TODO: Add delete logic here
                TinTucBUS.xoaTinTuc(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
