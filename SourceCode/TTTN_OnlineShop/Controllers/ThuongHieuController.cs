using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TTTN_OnlineShop.Models.BUS;

namespace TTTN_OnlineShop.Controllers
{
    public class ThuongHieuController : Controller
    {
        // GET: ThuongHieu
        public ActionResult Index(int id, int page = 1, int pagesize = 12)
        {
            var ds = ThuongHieuBUS.ChiTiet(id).ToPagedList(page,pagesize);
            return View(ds);
        }
    }
}