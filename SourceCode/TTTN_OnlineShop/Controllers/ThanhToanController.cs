using LynsCosmetics_Connection;
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
    public class ThanhToanController : Controller
    {
        // GET: ThanhToan
        public ActionResult Index()
        {
            List<Table_GioHang> ds = GioHangBUS.DanhSach(User.Identity.GetUserId()).ToList();
            if (ds.Count() == 0)
            {
                return RedirectToAction("../Shop/index");
            }
            ViewBag.TongTien = GioHangBUS.TongTien(User.Identity.GetUserId());
            return View(ds);
        }
        [HttpPost]
        public ActionResult ThemDonHang(string tenNguoiNhan, string soDienThoai, string diaChi)
        {
            try
            {
                GioHangBUS.taoDonHang(User.Identity.GetUserId(),tenNguoiNhan, soDienThoai, diaChi);
                return RedirectToAction("index");
            }
            catch
            {
                return RedirectToAction("../Shop/index");
            }

        }
        [HttpPost]
        public ActionResult ThemChiTietDH()
        {
            try
            {
                GioHangBUS.taoChiTietDH(User.Identity.GetUserId());
                return RedirectToAction("index");
            }
            catch
            {
                return RedirectToAction("../Shop/index");
            }

        }

    }
}