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
    public class DonHangAdminController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/DonHangAdmin
        public ActionResult Index(int page = 1, int pagesize = 10)
        {
            var ds = DonHangBUS.dsDonHangFull().ToPagedList(page, pagesize);
            //if (timKiem == "")
            //{
            //    return View(ds);
            //}
            //else if (timKiem != "")
            //{
            //    var db = TimKiemBUS.TimKiemDH(timKiem).ToPagedList(page, pagesize);
            //    return View(db);
            //}
            return View(ds);
        }

        // GET: Admin/DonHangAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/DonHangAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/DonHangAdmin/Create
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

        // GET: Admin/DonHangAdmin/Edit/5
        public ActionResult Edit(int id)
        {
            return View(DonHangBUS.chiTietDonHang(id));
        }

        // POST: Admin/DonHangAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, Table_DonHang donHang)
        {
            var tamp = DonHangBUS.chiTietDonHang(id);
            try
            {
                // TODO: Add update logic here
                donHang.Id = tamp.Id;
                donHang.TenTaiKhoan = tamp.TenTaiKhoan;
                donHang.TenNguoiNhan = tamp.TenNguoiNhan;
                donHang.SoDienThoai = tamp.SoDienThoai;
                donHang.DiaChiGiaoHang = tamp.DiaChiGiaoHang;
                donHang.ThanhTien = tamp.ThanhTien;
                donHang.NgayTao = tamp.NgayTao;
                DonHangBUS.suaDonHang(donHang, tamp.MaDonHang);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/DonHangAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/DonHangAdmin/Delete/5
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
