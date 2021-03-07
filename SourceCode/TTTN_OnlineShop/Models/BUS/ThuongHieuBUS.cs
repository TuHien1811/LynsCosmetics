using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TTTN_OnlineShop.Models.BUS
{
    public class ThuongHieuBUS
    {
        public static IEnumerable<Table_ThuongHieu> Danhsach()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_ThuongHieu>("select * from Table_ThuongHieu where TinhTrangTH = 0");
        }
        public static IEnumerable<Table_SanPham> ChiTiet(int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_SanPham>("select * from Table_SanPham where MaThuongHieu = "+id);
        }
    }
}