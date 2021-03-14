using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TTTN_OnlineShop.Models.BUS
{
    public class DanhMucBUS
    {
        //----------------------------/Code User\-------------------------------
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
        //----------------------------/Code Admin\-------------------------------
        public static IEnumerable<Table_DanhMuc> DanhsachFull()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_DanhMuc>("select * from Table_DanhMuc");
        }
        public static void themDanhMuc(Table_DanhMuc danhMuc)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Insert(danhMuc);
        }
        public static Table_DanhMuc ChiTietDanhMuc(int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.SingleOrDefault<Table_DanhMuc>("select * from Table_DanhMuc where MaDanhMuc =" + id);
        }
        public static void suaDanhMuc(Table_DanhMuc danhMuc, int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Update(danhMuc, id);
        }
        public static void xoaDanhMuc(int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Execute("Delete from Table_DanhMuc where MaDanhMuc =@0", id);
        }
        
    }
}