﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Globalization;
using DTO;
using BUS;

namespace WindowsFormsApp1
{
    public partial class frmDoanhThu : Form
    {
        public frmDoanhThu()
        {
            InitializeComponent();
        }

        private void frmDoanhThu_Load(object sender, EventArgs e)
        {
            LayDanhSachHoaDon();
        }
        List<QuanLiHoaDon_DTO> lstHoaDon;
        void LayDanhSachHoaDon()
        {
            lstHoaDon = HoaDon_BUS.DanhSachHoaDon();
            dgvDanhSachHoaDon.DataSource = lstHoaDon;

            if (lstHoaDon == null)
                return;

            dgvDanhSachHoaDon.Columns["IDHoaDon"].HeaderText = "Mã Hóa Đơn";
            dgvDanhSachHoaDon.Columns["TenBan"].HeaderText = "Tên Bàn";
            dgvDanhSachHoaDon.Columns["TinhTrangThanhToan"].HeaderText = "Tình Trạng Thanh Toán";
            dgvDanhSachHoaDon.Columns["NgayThanhToan"].HeaderText = "Ngày Thanh Toán";
            dgvDanhSachHoaDon.Columns["SoTien"].HeaderText = "Số Tiền";

            dgvDanhSachHoaDon.Columns["IDHoaDon"].Width = 50;
            dgvDanhSachHoaDon.Columns["TenBan"].Width = 150;
            dgvDanhSachHoaDon.Columns["TinhTrangThanhToan"].Width = 150;
            dgvDanhSachHoaDon.Columns["NgayThanhToan"].Width = 150;
            dgvDanhSachHoaDon.Columns["SoTien"].Width = 125;
        }


        //---------------------- lọc hóa đơn -----------------------------
        private void btnLoc_Click(object sender, EventArgs e)
        {
            //string tuNgay = dtpTuNgay.Text;
            //string denNgay = dtpDenNgay.Text;

            //List<QuanLiHoaDon_DTO> lstHoaDon;
            //lstHoaDon = HoaDon_BUS.LocHoaDon(tuNgay,denNgay);
            //if (lstHoaDon == null)
            //{
            //    MessageBox.Show("Không có kết quả nào");
            //    return;
            //}
            //dgvDanhSachHoaDon.DataSource = lstHoaDon;
        }



        //--------------------  show all ----------------------------
        private void btnHienThiTatCa_Click(object sender, EventArgs e)
        {
            LayDanhSachHoaDon();
        }



        //--------------------- lấy 1 dòng đc chọn----------------------
        DataGridViewRow dr;
        private void dgvDanhSachHoaDon_Click(object sender, EventArgs e)
        {
            try
            {
                dr = dgvDanhSachHoaDon.SelectedRows[0];
            }
            catch(Exception)
            {
                return;
            }
        }


        //----------------- xóa 1 hóa đơn ---------------------------
        private void btnXoa_Click(object sender, EventArgs e)
        {
            if(dr == null)
            {
                MessageBox.Show("Chọn hóa đơn muốn xóa");
                return;
            }
            if(MessageBox.Show("Xác nhận xóa","Thông Báo",MessageBoxButtons.YesNo,MessageBoxIcon.Information)== DialogResult.Yes)
            {
                if (HoaDon_BUS.XoaHoaDon(int.Parse(dr.Cells["IDHoaDon"].Value.ToString())))
                {
                    dr = null;
                    LayDanhSachHoaDon();
                    MessageBox.Show("Xóa thành công");
                    return;
                }
            }
            else
                MessageBox.Show("Xóa thất bại");
        }


        //----------- xóa tất cả hóa đơn ------------------------------
        private void btnXoaTatCa_Click(object sender, EventArgs e)
        {
            if (lstHoaDon == null)
                return;
            if(MessageBox.Show("Xóa toàn bộ hóa đơn","Thông báo",MessageBoxButtons.YesNo,MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                HoaDon_BUS.XoaToanBoHoaDon();
                MessageBox.Show("Đã xóa");
                LayDanhSachHoaDon();
                return;
            }
        }

      
    }
}
