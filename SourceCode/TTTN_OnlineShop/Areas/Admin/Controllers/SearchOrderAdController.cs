using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TTTN_OnlineShop.Models.BUS;

namespace TTTN_OnlineShop.Areas.Admin.Controllers
{
    public class SearchOrderAdController : Controller
    {
        // GET: Admin/SearchOrderAd
        public ActionResult Index(string timKiem, int page=1, int pagesize=10)
        {
            if(timKiem=="")
            {
                return RedirectToAction("../DonHangAdmin/index");
            }
            else
            {
                var db = TimKiemBUS.TimKiemDH(timKiem).ToPagedList(page, pagesize);
                return View(db);
            }
            
        }
    }
}