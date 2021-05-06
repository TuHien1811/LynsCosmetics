using LynsCosmetics_Connection;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TTTN_OnlineShop.Models.BUS
{
    public class BinhLuanBUS
    {
        public static IEnumerable<Table_BinhLuan> LoadBinhLuan(int maTinTuc, int page = 1, int pagesize = 3)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_BinhLuan>("select * from Table_BinhLuan where MaTinTuc=" + maTinTuc + " ORDER BY NgayDang DESC").ToPagedList(page, pagesize);
        }
        public static void themBinhLuan(Table_BinhLuan binhLuan)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Insert(binhLuan);
        }
    }
}