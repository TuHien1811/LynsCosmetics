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
        public ActionResult ThemDonHang(Table_DonHang donHang)
        {
            try
            {
                donHang.Id = User.Identity.GetUserId();
                donHang.NgayTao = DateTime.Now;
                donHang.ThanhTien = GioHangBUS.TongTien(User.Identity.GetUserId());
                donHang.TrangThaiDonHang = 0;
                GioHangBUS.taoDH(donHang);
                List<Table_GioHang> ds = GioHangBUS.DanhSach(User.Identity.GetUserId()).ToList();
                foreach (var item in ds)
                {
                    Table_ChiTietDonHang chiTietDonHang = new Table_ChiTietDonHang();
                    chiTietDonHang.MaDonHang = donHang.MaDonHang;
                    chiTietDonHang.MaSanPham = item.MaSanPham;
                    chiTietDonHang.SoLuongMua = item.SoLuongMua;
                    chiTietDonHang.Gia = item.GiaBan;
                    //luu thong tin san pham vao chi tiet don hang
                    GioHangBUS.taoChiTietDH(chiTietDonHang);
                    //int a = item.SoLuongMua;
                    //Table_SanPham sanPham = new Table_SanPham();
                    //sanPham.SoLuongDaBan = sanPham.SoLuongDaBan + a;
                    ////Cap nhat so luong da ban trong bang san pham
                    //ShopOnlineBUS.suaSanPham(sanPham,item.MaSanPham);
                }
                //Xoa thong tin san pham trong gio hang
                GioHangBUS.XoaCartList(User.Identity.GetUserId());
                return RedirectToAction("index");
            }
            catch
            {
                return RedirectToAction("../Shop/index"); ;
            }

        }
        

    }
}