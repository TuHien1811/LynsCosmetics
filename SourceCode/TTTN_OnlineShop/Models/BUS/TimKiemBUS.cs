using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TTTN_OnlineShop.Models.BUS
{
    public class TimKiemBUS
    {
        public static IEnumerable<Table_SanPham> TimKiem(string timKiem)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_SanPham>("select * from Table_SanPham where TenSanPham like N'%" + timKiem + "%'");
        }
    }
}