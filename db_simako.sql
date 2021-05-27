/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : db_simako

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 27/05/2021 05:52:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bagian
-- ----------------------------
DROP TABLE IF EXISTS `bagian`;
CREATE TABLE `bagian`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_divisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pref_bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level_bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bagian
-- ----------------------------
INSERT INTO `bagian` VALUES (1, '0000', '0000', 'Semua Bagian (Khusus Admin PTPN VI)', 'Semua Bagian (Khusus Admin PTPN VI)', 'Korporat');
INSERT INTO `bagian` VALUES (2, 'N06.KD', 'N06.KD.01', 'Tanaman', 'TN06.01', 'Korporat');
INSERT INTO `bagian` VALUES (3, 'N06.KD', 'N06.KD.02', 'Teknik & Pengolahan', 'TK06.02', 'Korporat');
INSERT INTO `bagian` VALUES (4, 'N06.KD', 'N06.KD.03', 'Pembiayaan', 'PB06.03', 'Korporat');
INSERT INTO `bagian` VALUES (5, 'N06.KD', 'N06.KD.04', 'Pengadaan dan TI', 'KM06.04', 'Korporat');
INSERT INTO `bagian` VALUES (6, 'N06.KD', 'N06.KD.05', 'SDM', 'SD06.05', 'Korporat');
INSERT INTO `bagian` VALUES (7, 'N06.KD', 'N06.KD.06', 'Sekretariat Perusahaan', 'SU06.06', 'Korporat');
INSERT INTO `bagian` VALUES (8, 'N06.KD', 'N06.KD.07', 'SPI', 'SP06.07', 'Korporat');
INSERT INTO `bagian` VALUES (9, 'N06.KD', 'N06.KD.08', 'Perencanaan dan Sustainability', 'RB06.08', 'Korporat');
INSERT INTO `bagian` VALUES (10, 'N06.KD', 'N06.KD.09', 'Transformasi Bisnis', 'TB06.09', 'Korporat');
INSERT INTO `bagian` VALUES (11, 'N06.KD', 'N06.UUS.01', 'Unit Usaha Bunut', 'BNT06', 'Operasional');
INSERT INTO `bagian` VALUES (12, 'N06.KD', 'N06.UUS.02', 'Unit Usaha Tanjung Lebar', 'TLB06', 'Operasional');
INSERT INTO `bagian` VALUES (13, 'N06.KD', 'N06.UUS.03', 'Unit Usaha Batang Hari/ISS', 'BHR06', 'Operasional');
INSERT INTO `bagian` VALUES (14, 'N06.KD', 'N06.UUS.04', 'Unit Usaha Durian Luncuk', 'DRL06', 'Operasional');
INSERT INTO `bagian` VALUES (15, 'N06.KD', 'N06.UUS.05', 'Unit Usaha Bukit Cermin', 'BKC06', 'Operasional');
INSERT INTO `bagian` VALUES (16, 'N06.KD', 'N06.UUS.06', 'Unit Usaha Rimsa', 'RSA06', 'Operasional');
INSERT INTO `bagian` VALUES (17, 'N06.KD', 'N06.UUS.07', 'Unit Usaha Rimdu', 'RDU06', 'Operasional');
INSERT INTO `bagian` VALUES (18, 'N06.KD', 'N06.UUS.08', 'Unit Usaha Kayu Aro', 'ARO06', 'Operasional');
INSERT INTO `bagian` VALUES (19, 'N06.KD', 'N06.UUS.09', 'Unit Usaha Danau Kembar', 'DAR06', 'Operasional');
INSERT INTO `bagian` VALUES (20, 'N06.KD', 'N06.UUS.10', 'Unit Usaha Ophir', 'OPH06', 'Operasional');
INSERT INTO `bagian` VALUES (21, 'N06.KD', 'N06.UUS.11', 'Unit Usaha Solok Selatan', 'SSL06', 'Operasional');
INSERT INTO `bagian` VALUES (22, 'N06.KD', 'N06.UUS.12', 'Unit Usaha Pangkalan Lima Puluh Kota', 'PLK06', 'Operasional');
INSERT INTO `bagian` VALUES (23, '0000', 'N06.PKS.01', 'PKS Sungai Bahar', 'PSB06', 'Operasional');
INSERT INTO `bagian` VALUES (24, '0000', 'N06.PKS.02', 'PKS Pengabuan', 'PGB06', 'Operasional');
INSERT INTO `bagian` VALUES (25, '0000', 'N06.PKS.03', 'PKS Aur Gading', 'PAG06', 'Operasional');
INSERT INTO `bagian` VALUES (26, '0000', 'N06.HPS', 'Urusan Harga Perkiraan Sendiri (HPS)', 'HPS.06', 'Korporat');

-- ----------------------------
-- Table structure for bidang
-- ----------------------------
DROP TABLE IF EXISTS `bidang`;
CREATE TABLE `bidang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_katalog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_bidang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_bidang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bidang
-- ----------------------------
INSERT INTO `bidang` VALUES (1, '002', 'KM.06', 'PEMASARAN KELAPA SAWIT', NULL, NULL);
INSERT INTO `bidang` VALUES (2, '002', 'KM.07', 'PEMASARAN TEH', NULL, NULL);
INSERT INTO `bidang` VALUES (3, '002', 'KM.08', 'PEMASARAN TEH KEMASAN', NULL, NULL);
INSERT INTO `bidang` VALUES (4, '002', 'KM.09', 'PEMASARAN KARET', NULL, NULL);
INSERT INTO `bidang` VALUES (5, '002', 'KM.10', 'PENGADAAN', NULL, NULL);
INSERT INTO `bidang` VALUES (6, '002', 'KM.11', 'HARGA KOMODITI', NULL, NULL);
INSERT INTO `bidang` VALUES (7, '002', 'KM.12', 'PENETAPAN HARGA PERKIRAAN SENDIRI (HPS)', NULL, NULL);
INSERT INTO `bidang` VALUES (8, '001', 'PB.06', 'KEUANGAN', NULL, NULL);
INSERT INTO `bidang` VALUES (9, '001', 'PB.07', 'AKUNTANSI', NULL, NULL);
INSERT INTO `bidang` VALUES (10, '001', 'PB.08', 'VERIFIKASI', NULL, NULL);
INSERT INTO `bidang` VALUES (11, '001', 'PB.09', 'ANGGARAN', NULL, NULL);
INSERT INTO `bidang` VALUES (12, '006', 'RB.06', 'PENGKAJIAN & PENGEMBANGAN TANAMAN', NULL, NULL);
INSERT INTO `bidang` VALUES (13, '006', 'RB.07', 'LINGKUNGAN, PROPER', NULL, NULL);
INSERT INTO `bidang` VALUES (14, '006', 'RB.08', 'IMPLEMENTASI ISPO', NULL, NULL);
INSERT INTO `bidang` VALUES (15, '006', 'RB.09', 'SMK3', NULL, NULL);

-- ----------------------------
-- Table structure for divisi
-- ----------------------------
DROP TABLE IF EXISTS `divisi`;
CREATE TABLE `divisi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_divisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_divisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pref_divisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of divisi
-- ----------------------------
INSERT INTO `divisi` VALUES (1, '0000', 'Semua Divisi (Khusus Admin Utama)', 'Semua Divisi (Khusus Admin Utama)', 'PT PERKEBUNAN NUSANTARA VI', NULL, NULL);
INSERT INTO `divisi` VALUES (2, 'N06', 'PTPN 6', 'N06', 'PT PERKEBUNAN NUSANTARA VI', NULL, NULL);
INSERT INTO `divisi` VALUES (3, 'N06.KD', 'KANTOR DIREKSI', 'KD', 'PT PERKEBUNAN NUSANTARA VI', NULL, NULL);
INSERT INTO `divisi` VALUES (4, 'N06.UUS', 'UNIT USAHA', 'UUS', 'PT PERKEBUNAN NUSANTARA VI', NULL, NULL);
INSERT INTO `divisi` VALUES (5, 'N06.PKS', 'PABRIK KELAPA SAWIT', 'PKS', 'PT PERKEBUNAN NUSANTARA VI', NULL, NULL);

-- ----------------------------
-- Table structure for katalog
-- ----------------------------
DROP TABLE IF EXISTS `katalog`;
CREATE TABLE `katalog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_katalog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_katalog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of katalog
-- ----------------------------
INSERT INTO `katalog` VALUES (1, '001', 'KATALOG RISIKO KEUANGAN DAN PASAR', NULL, NULL);
INSERT INTO `katalog` VALUES (2, '002', 'KATALOG RISIKO KEPUASAN PELANGGAN', NULL, NULL);
INSERT INTO `katalog` VALUES (3, '003', 'KATALOG RISIKO EFEKTIVITAS PRODUKSI DAN PROSES', NULL, NULL);
INSERT INTO `katalog` VALUES (4, '004', 'KATALOG RISIKO TENAGA KERJA', NULL, NULL);
INSERT INTO `katalog` VALUES (5, '005', 'KATALOG RISIKO KEPEMIMPINAN, TATA KELOLA & TANGGUNG JAWAB KEMASYARAKATAN', NULL, NULL);
INSERT INTO `katalog` VALUES (6, '006', 'KATALOG RISIKO PENGEMBANGAN PERUSAHAAN', NULL, NULL);

-- ----------------------------
-- Table structure for risiko
-- ----------------------------
DROP TABLE IF EXISTS `risiko`;
CREATE TABLE `risiko`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomor_bidang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `risiko` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_register` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `usulan_mitigasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `likelihood` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `impact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `triwulan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tahun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pemilik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of risiko
-- ----------------------------
INSERT INTO `risiko` VALUES (2, 'KM.06', 'ABC', 'ABC', 'ABC', '1', '3', '3', 'sedang', '1', '2020', 'N06.UUS.02', 'ABC', '2021-05-25 17:13:42', '2021-05-25 17:13:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (6, 'admin', 'admin', '$2y$10$ns7TNh.b4nA9tXQ.NxREhe5wTDSV92IZPGp/KLmFYgYv4cyIyJUIy', NULL, '2021-05-18 05:59:39', '2021-05-18 05:59:39');

SET FOREIGN_KEY_CHECKS = 1;
