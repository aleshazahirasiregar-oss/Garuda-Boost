# 📚 TUTORIAL LENGKAP GARUDA-BOOST V4 
### Android 11-16 | No Root | Shizuku Support | 100% Open Source

> **Baca dari No 1 sampe akhir. Skip 1 langkah = Gagal, terus nyalahin Zafran. Jangan ya Z 😂**

---

## 1. PERSIAPAN ALAT TEMPUR - WAJIB LENGKAP
**Gak punya 1 aja = Script gak jalan maksimal. Jangan maksa.**

| Wajib Download | Fungsi | Link Resmi Anti Sesat |
| --- | --- | --- |
| **HP Android 11-16** | OS minimal Android R | Cek di `Setelan > Tentang Ponsel` |
| **Termux** | Terminal buat jalanin script | [Termux GitHub](https://github.com/termux/termux-app/releases/latest) **BUKAN Play Store** |
| **Shizuku** | Biar bisa akses sistem tanpa root | [Play Store](https://play.google.com/store/apps/details?id=moe.shizuku.privileged.api) |
| **File `boost.sh`** | Script Garuda-Boost V4 | [Rilis Resmi](https://github.com/aleshazahirasiregar-oss/Garuda-Boost/releases/latest) |

---

## 2. INSTALL TERMUX YANG BENER - 90% GAGAL DISINI
**Termux Play Store = UDAH MATI. Pake itu dijamin error `pkg not found`.**

1. **Buka link ini di Chrome:** [Termux GitHub Releases](https://github.com/termux/termux-app/releases/latest) 
2. **Download:** `termux-app_v0.118+github-debug_universal.apk`
3. **Pas install muncul "Diblokir"?** Klik **Setelan → Izinkan dari sumber ini** → Install lagi. 
   > **Aman Z.** Ini Termux asli. Yang bahaya itu APK mod dari web gak jelas.
4. **Buka Termux** sampe muncul `~ $`. Kalo langsung force close, berarti HP mu gak support.

---

## 3. DOWNLOAD `boost.sh` ANTI SALAH KLIK
**⚠️ BANYAK YANG KETIPU DOWNLOAD `Garuda-Boost-main.zip` PADAHAL MAUNYA `boost.sh`**

**Cara yang bener 100%:**
1. **Buka link rilis:** [Garuda-Boost V4](https://github.com/aleshazahirasiregar-oss/Garuda-Boost/releases/latest)
2. **Scroll ke bawah** sampe ketemu tulisan **Assets**
3. **KLIK FILE `boost.sh`** doang. Ukurannya kecil, cuma beberapa KB.
4. **JANGAN KLIK:** Tombol ijo "Code", "Source code (zip)", atau "Source code (tar.gz)". Itu isinya 1 repo penuh.

**Kalo terlanjur ke-download `Garuda-Boost-main.zip` atau `Garuda-Boost#`?**
1. **Hapus aja** file ZIP nya. Itu bukan script.
2. **Ulangi lagi** langkah di atas. Klik `boost.sh` aja.
3. **Kalo males download ulang:** Extract ZIP > buka folder > ambil file `boost.sh` di dalemnya.

**Nama file yang bener:** `boost.sh` doang. Gak ada embel-embel #, main, atau .zip.

---

## 4. SETUP SHIZUKU - BIAR MODE DEWA AKTIF
**Skip ini = Boost cuma 50%. Rugi Z.**

1. **Aktifin Opsi Developer**: `Setelan > Tentang Ponsel > Tap 7x Nomor Bentukan`
2. **Nyalain Debugging Nirkabel**: `Setelan > Sistem > Opsi Developer > Debugging Nirkabel > ON`
3. **Buka Shizuku** → `Pairing` → `Opsi developer` → masukin kode pairing
4. **Pencet `Mulai`**. Kalo status `Running`, lanjut.
5. **Di Termux, install rish:**
   ```bash
   pkg update && pkg install rish
   rish
