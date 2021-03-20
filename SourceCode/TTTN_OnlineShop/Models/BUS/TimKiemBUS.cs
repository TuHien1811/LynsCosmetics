using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TTTN_OnlineShop.Models.BUS
{
    public class TimKiemBUS
    {
        //public static IEnumerable<Table_SanPham> TimKiem(string timKiem)
        //{
        //    var db = new LynsCosmetics_ConnectionDB();
        //    return db.Query<Table_SanPham>("select * from Table_SanPham where TenSanPham like N'%" + timKiem + "%'");
        //}

        public static IEnumerable<Table_SanPham> TimKiem(string timKiem)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_SanPham>("select MaSanPham, Table_SanPham.MaDanhMuc, Table_SanPham.MaThuongHieu, TenDanhMuc, TenThuongHieu, TenSanPham, GiaBan, MoTa, SoLuongDaBan, LuotView, TinhTrang, HinhMinhHoa, HinhNho1, HinhNho2, HinhNho3,GhiChu, GioiThieu from Table_SanPham inner join Table_ThuongHieu on Table_SanPham.MaThuongHieu = Table_ThuongHieu.MaThuongHieu inner join Table_DanhMuc on Table_SanPham.MaDanhMuc = Table_DanhMuc.MaDanhMuc where TenSanPham like N'%" + timKiem + "%' or TenThuongHieu like N'%"+ timKiem+ "%' or TenDanhMuc like N'%"+ timKiem +"%'");
        }
        //---------------------------Code Admin
        
        public static IEnumerable<Table_ThuongHieu> TimKiemTH(string timKiem)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_ThuongHieu>("select * from Table_ThuongHieu where TenThuongHieu like N'%" + timKiem + "%'");
        }
        public static IEnumerable<Table_DanhMuc> TimKiemDM(string timKiem)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_DanhMuc>("select * from Table_DanhMuc where TenDanhMuc like N'%" + timKiem + "%'");
        }
        public static IEnumerable<Table_TinTuc> TimKiemTT(string timKiem)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_TinTuc>("select * from Table_TinTuc where TieuDe like N'%" + timKiem + "%'");
        }
        public static IEnumerable<Table_DonHang> TimKiemDH(string timKiem)
        {
            var db = new LynsCosmetics_ConnectionDB();
            return db.Query<Table_DonHang>("select * from Table_DonHang where MaDonHang= '"+timKiem+ "'");
        }
    }
}