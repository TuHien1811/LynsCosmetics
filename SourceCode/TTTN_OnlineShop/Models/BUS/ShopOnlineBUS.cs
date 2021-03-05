using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TTTN_OnlineShop.Models.BUS
{
    public class ShopOnlineBUS
    {

        public static IEnumerable<Table_SanPham> Danhsach() 
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_SanPham>("select * from Table_SanPham where TinhTrang =1");
        }
        public static Table_SanPham ChiTiet(int a)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.SingleOrDefault<Table_SanPham> ("select * from Table_SanPham where MaSanPham = @0",a);
        }

    }
}