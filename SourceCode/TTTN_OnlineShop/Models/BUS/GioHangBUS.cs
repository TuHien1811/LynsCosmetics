using LynsCosmetics_Connection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TTTN_OnlineShop.Models.BUS
{
    [Authorize]
    public class GioHangBUS
    {
        public static void ThemVaoGioHang(int maSanPham, string idTaiKhoan, int soLuongMua, int giaBan, string tenSanPham, string hinhMinhHoa)
        {

            using (var db = new LynsCosmetics_ConnectionDB())
            {
                var x = db.Query<Table_GioHang>("select * from Table_GioHang Where Id = '" + idTaiKhoan + "' and MaSanPham = '" + maSanPham + "'").ToList();
                if (x.Count() > 0)
                {
                    // ham update so luong san pham
                    int a = (int)x.ElementAt(0).SoLuongMua + soLuongMua;
                    CapNhatGioHang(maSanPham, idTaiKhoan, a, giaBan, tenSanPham,hinhMinhHoa);
                }
                else
                {
                    Table_GioHang gioHang = new Table_GioHang()
                    {
                        MaSanPham = maSanPham,
                        Id = idTaiKhoan,
                        SoLuongMua = soLuongMua,
                        GiaBan = giaBan,
                        TenSanPham = tenSanPham,
                        HinhMinhHoa = hinhMinhHoa,
                        TongTien = giaBan * soLuongMua
                    };
                    db.Insert(gioHang);
                }

            }
        }
        public static IEnumerable<Table_GioHang> DanhSach(string idTaiKhoan)
        {
            using (var db = new LynsCosmetics_ConnectionDB())
            {
                return db.Query<Table_GioHang>("select * from Table_GioHang Where Id ='" + idTaiKhoan+"'");
            }
        }
        public static void CapNhatGioHang(int maSanPham, string idTaiKhoan, int soLuongMua, int giaBan, string tenSanPham, string hinhMinhHoa)
        {
            using (var db = new LynsCosmetics_ConnectionDB())
            {
                
                Table_GioHang giohang = new Table_GioHang()
                {
                    MaSanPham = maSanPham,
                    Id = idTaiKhoan,
                    SoLuongMua = soLuongMua,
                    GiaBan = giaBan,
                    TenSanPham = tenSanPham,
                    HinhMinhHoa = hinhMinhHoa,
                    TongTien = giaBan * soLuongMua
                };
                var tamp = db.Query<Table_GioHang>("Select IdGioHang from Table_GioHang Where Id = '" + idTaiKhoan + "' and MaSanPham = '" + maSanPham + "'").SingleOrDefault();
                db.Update(giohang, tamp.IdGioHang);
            }
        }
        public static void XoaGioHang(int maSanPham, string idTaiKhoan)
        {
            using (var db = new LynsCosmetics_ConnectionDB())
            {
                var a = db.Query<Table_GioHang>("select * from Table_GioHang where MaSanPham = '" + maSanPham + "' and Id ='" + idTaiKhoan + "'").FirstOrDefault();
                db.Delete(a);
            }
        }
        public static int TongTien(string idTaiKhoan)
        {
            using (var db = new LynsCosmetics_ConnectionDB())
            {
                List<Table_GioHang> a = DanhSach(idTaiKhoan).ToList();
                if (a.Count() == 0)
                {
                    return 0;
                }
                return db.Query<int>("select sum(TongTien) from Table_GioHang where Id = '" + idTaiKhoan + "' ").FirstOrDefault();

            }
        }

        public static void taoDonHang(string idTaiKhoan, string tenNguoiNhan, string soDienThoai, string diaChi)
        {
            int a = TongTien(idTaiKhoan);
            using (var db = new LynsCosmetics_ConnectionDB())
            {
                Table_DonHang donHang = new Table_DonHang()
                {
                    Id = idTaiKhoan,
                    TenNguoiNhan = tenNguoiNhan,
                    SoDienThoai = soDienThoai,
                    DiaChiGiaoHang = diaChi,
                    NgayTao = DateTime.Today,
                    ThanhTien = a,
                    TrangThaiDonHang = 0   
                };
                db.Insert(donHang);
            }      
            
        }
        public static void taoChiTietDH(string idTaiKhoan)
        {
            using (var db = new LynsCosmetics_ConnectionDB())
            {
                var tamp = db.Query<Table_GioHang>("Select * from Table_GioHang Where Id = '" + idTaiKhoan + "'").SingleOrDefault();
                Table_ChiTietDonHang chiTietDonHang = new Table_ChiTietDonHang()
                {
                    MaSanPham = tamp.MaSanPham,
                    SoLuongMua = tamp.SoLuongMua,
                    Gia = tamp.GiaBan
                };
                db.Insert(chiTietDonHang);
            }

        }

    }
}

