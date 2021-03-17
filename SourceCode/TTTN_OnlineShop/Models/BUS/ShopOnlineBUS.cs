using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TTTN_OnlineShop.Models.BUS
{
    public class ShopOnlineBUS
    {
        //--------------------/Code Users\------------------------------------------
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

        public static IEnumerable<Table_SanPham> NewArrivalProducts()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_SanPham>("select * from Table_SanPham where GhiChu = N'new'");
        }
        public static IEnumerable<Table_SanPham> RelatedProducts(int catogeryCode, int brandCode, int productCode)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_SanPham>("select * from Table_SanPham where MaDanhMuc = " + catogeryCode + "and MaThuongHieu = " + brandCode+ "and MaSanPham != " +productCode);
        }
       
        //--------------------/Code Admin\------------------------------------------
        public static IEnumerable<Table_SanPham> DanhsachFull()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_SanPham>("select * from Table_SanPham");
        }
        public static void themSanPham(Table_SanPham sanPham)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Insert(sanPham);
        }
        public static void suaSanPham(Table_SanPham sanPham, int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Update(sanPham,id);
        }
        public static void xoaSanPham(int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Execute("Delete from Table_SanPham where MaSanPham =@0", id);
        }

    }
}