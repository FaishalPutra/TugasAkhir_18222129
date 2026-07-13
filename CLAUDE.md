# CLAUDE.md — Tugas Akhir Muhammad Faishal Putra

## Konteks Proyek

Tugas Akhir S1 Sistem dan Teknologi Informasi ITB.
**Judul:** Pengembangan Aplikasi Pencarian Peluang Kolaborasi Mahasiswa: Modul Rekomendasi People-to-Project Menggunakan Affinity Based Matching
**NIM:** 18222129
**Template:** XeLaTeX (TA.tex) + biblatex-chicago (authordate) + biber

## Kompilasi

Urutan wajib: `xelatex → biber → xelatex → xelatex`
Di VS Code: gunakan recipe **"xelatex -> biber -> xelatex\*2"**

## Perintah Sitasi

- `\textcite{key}` → narasi: Nama (Tahun)
- `\autocite{key}` → parenthetical: (Nama Tahun)

---

## Aturan Umum Wajib

1. **Semua kosakata harus sesuai KBBI.** Kata yang tidak ada di KBBI dianggap istilah asing dan wajib ditulis miring (`\emph{}`).
2. **Semua istilah asing wajib miring (`\emph{}`).** Tidak ada pengecualian kecuali nama modul/proper name yang sudah ditetapkan (lihat bagian Konvensi Penulisan).
3. Jika ragu apakah suatu kata ada di KBBI atau tidak, anggap asing → tulis miring.

---

## Aturan Penulisan (dari Bab VI Template)

### Kata yang Dilarang di Awal Kalimat
- **"sedangkan"** dan **"sehingga"** tidak boleh memulai kalimat (konjungsi intrakalimat)

### Tanda Baca Konjungsi
- `sedangkan` → **harus** didahului koma: `..., sedangkan ...`
- `sehingga` → **tidak boleh** didahului koma: `... sehingga ...`

### "di mana" / "dimana"
- Jangan gunakan sebagai pengganti "which/where" dalam kalimat
- Ganti dengan: `dengan`, `yaitu`, `yang`, atau pecah jadi dua kalimat

### Posisi "masing-masing" dan "setiap"
- `masing-masing` → **harus di belakang** kata yang diterangkan: `algoritma masing-masing` ✓, `masing-masing algoritma` ✗
- `setiap` / `tiap-tiap` → **harus di depan** kata yang diterangkan: `Setiap proses` ✓
- Pengecualian: `masing-masing` sebagai adverbia kata kerja tetap boleh di depan verba (`yang masing-masing menjumlah tepat satu` ✓)

### Istilah Tidak Baku → Ganti dengan Padanan KBBI
| Salah | Benar |
|---|---|
| analisa | analisis |
| aktifitas | aktivitas |
| efektifitas | efektivitas |
| sosial media | media sosial |
| user | pengguna |
| system | sistem |
| database | basis data |
| eksisting / existing | yang ada / saat ini |
| bisnis proses | proses bisnis |
| konkrit | konkret |
| partner | mitra |

### Pemisah Desimal
- Gunakan **koma**: `84,6%` bukan `84.6%`

### Daftar / List
- Gunakan `\begin{enumerate}` (bernomor), bukan `\begin{itemize}` (bullet)

---

## Konvensi Penulisan Istilah Teknis

### Nama Modul (miring, dengan tanda hubung)
- `\emph{People-to-Project}` ✓
- `\emph{People-to-People}` ✓
- `\emph{Team Formation}` ✓
- **Aturan:** nama modul berbahasa Inggris → **miring + tanda hubung dipertahankan**

### Istilah Asing (miring `\emph{}`, tanpa tanda hubung)
- `\emph{affinity based matching}` bukan `affinity-based matching`
- `\emph{rule based matching}` bukan `rule-based matching`
- `\emph{knowledge based recommender system}`
- `\emph{person job fit}`
- `\emph{high level}`
- `\emph{if then rules}`
- `\emph{non functional requirements}`
- Semua istilah asing lain → tetap `\emph{}`, hapus tanda hubung jika ada

### Nama Metode/Framework (miring jika asing, tanpa tanda hubung)
- `\emph{Affinity Based Matching}` (ketika sebagai nama metode)
- `\emph{Waterfall}`, `\emph{waterfall}`
- `\emph{Software Development Life Cycle}` / SDLC
- `\emph{data science}`
- `\emph{Collaborative Filtering}` / CF
- `\emph{Content-Based Filtering}` / CBF (catatan: tetap ada hyphen "Content-Based" karena merupakan nama resmi)
- `\emph{Knowledge-Based Recommendation}` / KBR (sama, hyphen dipertahankan karena nama resmi)
- `\emph{Weighted Scoring Model}` / WSM

### Istilah Bab III yang Wajib Miring
- `\emph{skill}` (KBBI: keterampilan)
- `\emph{cold start}`
- `\emph{feed}`
- `\emph{onboarding}`
- `\emph{timeline}`
- `\emph{explainability}`
- `\emph{domain knowledge}`
- `\emph{knowledge base}`
- `\emph{e-commerce}`
- `\emph{user needs}`, `\emph{user requirement}`, `\emph{traceability}` (dalam teks berjalan)

---

## Format Tabel

Gunakan `booktabs` style — **tanpa** garis vertikal:
```latex
\begin{tabularx}{\textwidth}{p{...} p{...} X}
  \toprule
  \textbf{Kolom} & ... \\
  \midrule
  Isi & ... \\
  \bottomrule
\end{tabularx}
```
Selalu sertakan kalimat referensi sebelum tabel: `...disajikan pada Tabel~\ref{tab:...}.`

## Format Gambar

- Gunakan `[H]` untuk penempatan absolut (bukan `[h]`)
- Jangan bungkus `\includegraphics` dengan `\begin{figure}` di dalam `\begin{titlepage}`

---

## Pengaturan Layout

- `\raggedbottom` sudah ditambahkan di `TA.tex` sebelum `\begin{document}` untuk mencegah regangan vertikal paksa (default `book` = `\flushbottom`)

## Alur Kerja Otomatis

### Sitasi & BibTeX
Setiap kali ada konten bab baru yang dikirim dan mengandung referensi/sitasi:
1. **Otomatis tambahkan entri** ke `daftar-pustaka.bib` dengan format BibLaTeX yang sesuai (`@book`, `@article`, `@incollection`, `@inproceedings`, dll.)
2. Gunakan `\textcite{key}` untuk sitasi naratif dan `\autocite{key}` untuk sitasi parenthetical
3. Pastikan `key` konsisten antara `.bib` dan file bab

---

## File Utama

| File | Isi |
|---|---|
| `TA.tex` | Root dokumen, semua package dan konfigurasi |
| `daftar-pustaka.bib` | Referensi BibLaTeX |
| `Bab I - Pendahuluan.tex` | Bab I (sudah selesai) |
| `Bab II - Studi.tex` | Bab II (sudah selesai) |
| `Bab III - Analisis.tex` | Bab III (sudah selesai) |
| `images/sdlc.png` | Gambar alur SDLC Waterfall |

## Instruksi Template

Jika ada instruksi template di file bab, **jangan hapus** — bungkus dengan `\iffalse ... \fi`.
