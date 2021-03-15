using LynsCosmetics_Connection;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TTTN_OnlineShop.Models.BUS;

namespace TTTN_OnlineShop.Areas.Admin.Controllers
{
    public class SanPhamAdminController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/SanPhamAdmin
        public ActionResult Index(int page = 1, int pagesize = 10)
        {
            var ds =ShopOnlineBUS.DanhsachFull().ToPagedList(page,pagesize);
            return View(ds);
        }

        // GET: Admin/SanPhamAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }
        [HttpGet]
        // GET: Admin/SanPhamAdmin/Create
        public ActionResult Create()
        {
            ViewBag.MaThuongHieu = new SelectList(ThuongHieuBUS.Danhsach(), "MaThuongHieu", "TenThuongHieu");
            ViewBag.MaDanhMuc = new SelectList(DanhMucBUS.Danhsach(), "MaDanhMuc", "TenDanhMuc");
            return View();
        }

        // POST: Admin/SanPhamAdmin/Create

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(Table_SanPham sanPham)
        {
            try
            {
                if (HttpContext.Request.Files.Count > 0)
                {
                    // Hinh Minh Hoa
                    var hpf = HttpContext.Request.Files[0];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        sanPham.HinhMinhHoa = fileName + ".jpg";
                    }
                    // Hinh 1
                    hpf = HttpContext.Request.Files[1];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        sanPham.HinhNho1 = fileName + ".jpg";
                    }
                    // Hinh 2
                    hpf = HttpContext.Request.Files[2];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        sanPham.HinhNho2 = fileName + ".jpg";
                    }
                    // Hinh 3
                    hpf = HttpContext.Request.Files[3];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        sanPham.HinhNho3 = fileName + ".jpg";
                    }
                }
                //sanPham.MaDanhMuc = 1;
                //sanPham.MaThuongHieu = 1;
                sanPham.LuotView = 0;
                sanPham.SoLuongDaBan = 0;
                ShopOnlineBUS.themSanPham(sanPham);
                return RedirectToAction("Index");


            }
            catch
            {
                return View();
            }

        }

        // GET: Admin/SanPhamAdmin/Edit/5
        public ActionResult Edit(int id)
        {
            ViewBag.MaThuongHieu = new SelectList(ThuongHieuBUS.Danhsach(), "MaThuongHieu", "TenThuongHieu", ShopOnlineBUS.ChiTiet(id).MaThuongHieu);
            ViewBag.MaDanhMuc = new SelectList(DanhMucBUS.Danhsach(), "MaDanhMuc", "TenDanhMuc", ShopOnlineBUS.ChiTiet(id).MaDanhMuc);
            return View(ShopOnlineBUS.ChiTiet(id));
        }

        // POST: Admin/SanPhamAdmin/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(int id, Table_SanPham sanPham)
        {
            var tam = ShopOnlineBUS.ChiTiet(id);
            try
            {
                // TODO: Add update logic here

                if (HttpContext.Request.Files.Count > 0)
                {
                    // Hinh Minh Hoa
                    var hpf = HttpContext.Request.Files[0];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        sanPham.HinhMinhHoa = fileName + ".jpg";
                    }
                    else
                    {
                        sanPham.HinhMinhHoa = tam.HinhMinhHoa;
                    }
                    // Hinh 1
                    hpf = HttpContext.Request.Files[1];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        sanPham.HinhNho1 = fileName + ".jpg";
                    }
                    else
                    {
                        sanPham.HinhNho1 = tam.HinhNho1;
                    }
                    // Hinh 2
                    hpf = HttpContext.Request.Files[2];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        sanPham.HinhNho2 = fileName + ".jpg";
                    }
                    else
                    {
                        sanPham.HinhNho2 = tam.HinhNho2;
                    }

                    // Hinh 3
                    hpf = HttpContext.Request.Files[3];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Assets/User/img/products/cosmetic/" + fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        sanPham.HinhNho3 = fileName + ".jpg";
                    }
                    else
                    {
                        sanPham.HinhNho3 = tam.HinhNho3;
                    }
                }
                sanPham.SoLuongDaBan = tam.SoLuongDaBan;
                sanPham.LuotView = tam.LuotView;
                ShopOnlineBUS.suaSanPham(sanPham,id);
                return RedirectToAction("Index");

            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPhamAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/SanPhamAdmin/Delete/5
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
        public ActionResult DeleteSanPham(int id)
        {
            try
            {
                // TODO: Add delete logic here
                ShopOnlineBUS.xoaSanPham(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
