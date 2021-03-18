using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TTTN_OnlineShop.Models.BUS
{
    public class TinTucBUS
    {
        //--------------------/Code Users\------------------------------------------
        public static IEnumerable<Table_TinTuc> Danhsach()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_TinTuc>("select * from Table_TinTuc where TinhTrangTT =1 ORDER BY NgayDang DESC");
        }
        public static Table_TinTuc ChiTiet(int a)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.SingleOrDefault<Table_TinTuc>("select * from Table_TinTuc where MaTinTuc ="+ a);
        }
        public static IEnumerable<Table_TinTuc> LastestBlog()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_TinTuc>("SELECT TOP 4 * FROM Table_TinTuc WHERE NgayDang < GETDATE() ORDER BY NgayDang DESC");
        }
        public static IEnumerable<Table_TinTuc> RecentBlog(int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_TinTuc>("SELECT TOP 4 * FROM Table_TinTuc WHERE NgayDang < GETDATE() and MaTinTuc <> "+id+" ORDER BY NgayDang DESC");
        }
        //----------------------------/Code Admin\-------------------------------
        public static IEnumerable<Table_TinTuc> DanhsachFull()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_TinTuc>("select * from Table_TinTuc");
        }
        public static void themTinTuc(Table_TinTuc tinTuc)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Insert(tinTuc);
        }
        public static void suaTinTuc(Table_TinTuc tinTuc, int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Update(tinTuc, id);
        }
        public static void xoaTinTuc(int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Execute("Delete from Table_TinTuc where MaTinTuc =@0", id);
        }

    }
}