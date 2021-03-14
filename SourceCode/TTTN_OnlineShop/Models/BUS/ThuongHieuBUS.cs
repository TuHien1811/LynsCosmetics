using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace TTTN_OnlineShop.Models.BUS
{
    public class ThuongHieuBUS
    {
        //----------------------------/Code User\-------------------------------
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
        //----------------------------/Code Admin\-------------------------------
        public static IEnumerable<Table_ThuongHieu> DanhsachFull()
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_ThuongHieu>("select * from Table_ThuongHieu");
        }
        public static void themThuongHieu(Table_ThuongHieu thuongHieu)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Insert(thuongHieu);
        }
        public static Table_ThuongHieu ChiTietThuongHieu(int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.SingleOrDefault<Table_ThuongHieu>("select * from Table_ThuongHieu where MaThuongHieu ="+id);
        }
        public static void suaThuongHieu(Table_ThuongHieu thuongHieu, int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Update(thuongHieu,id);
        }
        public static void  xoaThuongHieu(int id)
        {
            var db = new LynsCosmetics_ConnectionDB();
            db.Execute("Delete from Table_ThuongHieu where MaThuongHieu =@0", id);
        }
        
    }
}