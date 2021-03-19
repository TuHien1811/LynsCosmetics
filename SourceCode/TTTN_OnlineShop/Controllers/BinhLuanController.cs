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
    public class BinhLuanController : Controller
    {
        // GET: BinhLuan
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Create(Table_BinhLuan binhLuan)
        {
            binhLuan.Id = User.Identity.GetUserId();
            binhLuan.TenTaiKhoan = User.Identity.Name;
            binhLuan.NgayDang = DateTime.Now;
            binhLuan.TinhTrang = 0;
            BinhLuanBUS.themBinhLuan(binhLuan);
            return RedirectToAction("Details", "TinTuc", new { id = binhLuan.MaTinTuc });
        }
    }
}