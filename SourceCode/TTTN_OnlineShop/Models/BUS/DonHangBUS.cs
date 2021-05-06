using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TTTN_OnlineShop.Models.BUS
{
    [Authorize]
    public class DonHangBUS
    {
        //---------------------------/Code User\-----------------------------------------------------
        public static IEnumerable<Table_DonHang> dsDonHang(string idTaiKhoan)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_DonHang>("select * from Table_DonHang where Id ='" + idTaiKhoan + "'");
        }
        public static IEnumerable<Table_ChiTietDonHang> chiTiet(int maDonHang)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_ChiTietDonHang>("SELECT * FROM Table_ChiTietDonHang where MaDonHang = " + maDonHang);
        }
        public static Table_DonHang chiTietDonHang(int maDonHang)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.SingleOrDefault<Table_DonHang>("SELECT * from Table_DonHang where MaDonHang = " + maDonHang);
        }
        //---------------------------/Code Admin\-----------------------------------------------------
        public static IEnumerable<Table_DonHang> dsDonHangFull()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_DonHang>("select * from Table_DonHang");
        }
        public static void suaDonHang(Table_DonHang donHang, int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Update(donHang, id);
        }
    }
}