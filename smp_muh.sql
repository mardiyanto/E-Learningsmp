-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2023 pada 15.46
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smp_muh`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `tahun_ajar` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tlp` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `isi` text NOT NULL,
  `akabest` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `tahun_ajar`, `nama`, `tlp`, `alias`, `alamat`, `isi`, `akabest`) VALUES
(1, '2023/2024', 'SMP MUHAMADIYAH  2 SENDANG AGUNG', '+62 7292-1124', 'SMP', 'Jalan Hermana, Sendang Mukti, Kec. Sendang Agung, Kabupaten Lampung Tengah, Lampung 34174', '<p>Program Studi :<br />\r\nProgram Studi Sistem Informasi (S1)<br />\r\nProgram Studi Manajemen Informatika (D3)<br />\r\nWaktu Pendaftaran:<br />\r\nPeriode 1 : 1 Januari &ndash; 5 Mei 2018<br />\r\nPeriode 1 : 6 Mei &ndash; 31 September 2018<br />\r\nTempat Pendaftaran:<br />\r\nJalan Wisma Rini No 09 Pringsewu Lampung (Kampus Pringsewu)<br />\r\nJalan Raya Wonokriyo Gading Rejo (Kampus Gading)<br />\r\nProgram KHUSUS KELAS XII&nbsp; *Bebas Biaya Sarana Prasarana 1 Semester (Rp. 500.000)*</p>\r\n\r\n<p><br />\r\nProsedur Pendaftaran:</p>\r\n\r\n<p>Calon Mahasiswa mendaftar secaran online melalui link pmb.stmikpringsewu.ac.id. Selanjutnya, Print out Formulir Perdaftaran online, kemudian diserahkan ke tempat pendaftaan.</p>\r\n', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `alamat`, `no_telp`, `email`, `username`, `password`, `pass`) VALUES
(1, 'admin', 'admin', '082375568332', 'admin@gmail.com', 'mboh', 'ff9df320d8d371096ae4cad297f599c6', 'mboh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` longtext NOT NULL,
  `tgl_posting` date NOT NULL,
  `penerbit` varchar(10) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_file_materi`
--

CREATE TABLE `tb_file_materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `id_mapel` int(4) NOT NULL,
  `nama_file` varchar(250) NOT NULL,
  `tgl_posting` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `hits` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_file_materi`
--

INSERT INTO `tb_file_materi` (`id_materi`, `judul`, `id_kelas`, `id_mapel`, `nama_file`, `tgl_posting`, `pembuat`, `hits`) VALUES
(1, 'TEKNOLOGI INFORMASI', 1, 1, '553-2648-2-PB.pdf', '2023-07-04', 'admin', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `wali_kelas` int(5) NOT NULL,
  `ketua_kelas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `ruang`, `wali_kelas`, `ketua_kelas`) VALUES
(1, 'VII-A', 'UJIAN', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas_ajar`
--

CREATE TABLE `tb_kelas_ajar` (
  `id` int(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`id`, `kode_mapel`, `mapel`) VALUES
(1, 'MK114', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel_ajar`
--

CREATE TABLE `tb_mapel_ajar` (
  `id` int(11) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_essay`
--

CREATE TABLE `tb_nilai_essay` (
  `id` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai_pilgan`
--

CREATE TABLE `tb_nilai_pilgan` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `tidak_dikerjakan` int(4) NOT NULL,
  `presentase` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengajar`
--

CREATE TABLE `tb_pengajar` (
  `id_pengajar` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `web` varchar(60) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengajar`
--

INSERT INTO `tb_pengajar` (`id_pengajar`, `nip`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `email`, `alamat`, `jabatan`, `foto`, `web`, `username`, `password`, `pass`, `status`) VALUES
(1, '14784744574', 'SUKARJAN, S.Pd', '-', '1991-07-04', 'L', 'Islam', '-', 'admin@gmail.com', '-', 'GURU TIK', 'anonim.png', 'http://localhost/E-Learningsmp/admin/?page=pengajar&action=t', '14784744574', '5b7141b70ba2919a0d3aca1ba8aaca3f', '14784744574', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `email`, `id_kelas`, `foto`, `username`, `password`, `pass`, `status`) VALUES
(1, '25458458745', 'JUMINGIN', 'AG', '2023-07-04', 'L', 'Islam', '14784744574', 'admin@gmail.com', '1', 'anonim.png', '25458458745', 'e94ca3c0d30e7b6dae09654bec677699', '25458458745', 'aktif'),
(2, '22110018', 'JURANG', 'Gunung Sugih ', '2023-07-04', 'L', 'Islam', '-', 'admin@admin.com', '1', 'anonim.png', '22110018', '27c304283fd7cc6b53bccbcf218ce6f7', '22110018', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_essay`
--

CREATE TABLE `tb_soal_essay` (
  `id_essay` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_pilgan`
--

CREATE TABLE `tb_soal_pilgan` (
  `id_pilgan` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `pil_e` text NOT NULL,
  `kunci` varchar(2) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_topik_quiz`
--

CREATE TABLE `tb_topik_quiz` (
  `id_tq` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `tgl_buat` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `waktu_soal` int(8) NOT NULL,
  `info` varchar(250) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_topik_quiz`
--

INSERT INTO `tb_topik_quiz` (`id_tq`, `judul`, `id_kelas`, `id_mapel`, `tgl_buat`, `pembuat`, `waktu_soal`, `info`, `status`) VALUES
(1, 'TEKNOLOGI INFORMASI', 1, 1, '2023-07-04', 'admin', 7200, 'KERJAKAN DENGAN BENAR', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indeks untuk tabel `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  ADD PRIMARY KEY (`id_essay`);

--
-- Indeks untuk tabel `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  ADD PRIMARY KEY (`id_pilgan`);

--
-- Indeks untuk tabel `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  ADD PRIMARY KEY (`id_tq`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  MODIFY `id_pengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  MODIFY `id_essay` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  MODIFY `id_pilgan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  MODIFY `id_tq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
