using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TTTN_OnlineShop.Models.BUS;

namespace TTTN_OnlineShop.Controllers
{
    public class TimKiemController : Controller
    {
        // GET: TimKiem
        public ActionResult Index(string timKiem, int page = 1, int pagesize = 12)
        {
            var db = TimKiemBUS.TimKiem(timKiem).ToPagedList(page, pagesize);
            if (timKiem == "")
            {
                return RedirectToAction("../Shop/index"); ;
            }
            else
            {
                return View(db);
            }   
            
        }
    }
}