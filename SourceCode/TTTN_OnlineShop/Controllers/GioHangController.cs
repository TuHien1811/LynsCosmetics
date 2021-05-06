using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TTTN_OnlineShop.Models.BUS;

namespace TTTN_OnlineShop.Controllers
{
    public class GioHangController : Controller
    {
        // GET: GioHang
        public ActionResult Index()
        {
            ViewBag.TongTien = GioHangBUS.TongTien(User.Identity.GetUserId());
            return View(GioHangBUS.DanhSach(User.Identity.GetUserId()));
        }
        [HttpPost]
        public ActionResult Them(int maSanPham, int soLuongMua, int giaBan, string tenSanPham, string hinhMinhHoa)
        {
            try
            {
                GioHangBUS.ThemVaoGioHang(maSanPham, User.Identity.GetUserId(), soLuongMua, giaBan, tenSanPham, hinhMinhHoa);
                return RedirectToAction("index");
            }
            catch
            {
                return RedirectToAction("../Shop/index");
            }

        }
        [HttpPost]
        public ActionResult CapNhat(int maSanPham, int soLuongMua, int giaBan, string tenSanPham, string hinhMinhHoa)
        {
            try
            {
                GioHangBUS.CapNhatGioHang(maSanPham, User.Identity.GetUserId(), soLuongMua, giaBan, tenSanPham, hinhMinhHoa);
                return RedirectToAction("index");
            }
            catch
            {
                return RedirectToAction("../Shop/index");
            }

        }
        [HttpGet]
        public ActionResult Xoa(int maSanPham)
        {
            try
            {
                GioHangBUS.XoaGioHang(maSanPham, User.Identity.GetUserId());
                return RedirectToAction("index");
            }
            catch
            {
                return RedirectToAction("../Shop/index");
            }

        }

    }
}