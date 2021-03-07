using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TTTN_OnlineShop.Models.BUS
{
    public class DanhMucBUS
    {
        public static IEnumerable<Table_DanhMuc> Danhsach()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_DanhMuc>("select * from Table_DanhMuc where TinhTrangDM = 0");
        }
        public static IEnumerable<Table_SanPham> ChiTiet(int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_SanPham>("select * from Table_SanPham where MaDanhMuc = " + id);
        }
    }
}