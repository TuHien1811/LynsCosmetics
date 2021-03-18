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
    public class ThuongHieuAdminController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/ThuongHieuAdmin
        public ActionResult Index(int page =1, int pagesize=8)
        {
            var ds = ThuongHieuBUS.DanhsachFull().ToPagedList(page, pagesize);
            return View(ds);
        }

        // GET: Admin/ThuongHieuAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/ThuongHieuAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ThuongHieuAdmin/Create
        [HttpPost]
        public ActionResult Create(Table_ThuongHieu thuongHieu)
        {
            try
            {
                if (HttpContext.Request.Files.Count > 0)
                {
                    // logo thuong hieu
                    var hpf = HttpContext.Request.Files[0];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        thuongHieu.LogoTH = fileName + ".jpg";
                    }
                }
                    // TODO: Add insert logic here
                ThuongHieuBUS.themThuongHieu(thuongHieu);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/ThuongHieuAdmin/Edit/5
        public ActionResult Edit(int id)
        {
            return View(ThuongHieuBUS.ChiTietThuongHieu(id));
        }

        // POST: Admin/ThuongHieuAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, Table_ThuongHieu thuongHieu)
        {
            var tam = ThuongHieuBUS.ChiTietThuongHieu(id);
            try
            {
                // TODO: Add update logic here
                if (HttpContext.Request.Files.Count > 0)
                {
                    // logo thuong hieu
                    var hpf = HttpContext.Request.Files[0];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        thuongHieu.LogoTH = fileName + ".jpg";
                    }
                    else
                    {
                        thuongHieu.LogoTH = tam.LogoTH;
                    }
                }
               
                ThuongHieuBUS.suaThuongHieu(thuongHieu,id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/ThuongHieuAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            
                return View();
        

            
        }

        // POST: Admin/ThuongHieuAdmin/Delete/5
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

        public ActionResult DeleteThuongHieu(int id)
        {
            try
            {
                // TODO: Add delete logic here
                ThuongHieuBUS.xoaThuongHieu(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
