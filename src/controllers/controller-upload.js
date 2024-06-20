const path = require('path');
const fs = require('fs');
const crypto = require('crypto'); // Import crypto module
require('dotenv').config(); // Load environment variables

const baseUrl = process.env.BASE_URL; // Get base URL from environment variables

// Handler untuk mendapatkan daftar file
exports.getFiles = (req, res) => {
    const uploadDir = path.join(process.cwd(), 'uploads');
    fs.readdir(uploadDir, (err, files) => {
        if (err) {
            return res.status(500).send(err);
        }
        res.json(files);
    });
};

// Handler untuk mendapatkan file berdasarkan nama
exports.getFileByName = (req, res) => {
    const fileName = req.params.fileName;
    const filePath = path.join(process.cwd(), 'uploads', fileName);

    // Periksa apakah file ada
    if (!fs.existsSync(filePath)) {
        return res.status(404).send('File tidak ditemukan.');
    }

    // Kirim file ke client
    res.sendFile(filePath);
};

// Handler untuk mengunggah file
exports.uploadFile = (req, res) => {
    // Pastikan ada file yang diunggah
    if (!req.files || Object.keys(req.files).length === 0) {
        return res.status(400).send('Tidak ada file yang diunggah.');
    }

    // Ambil file yang diunggah
    const file = req.files.file;

    // Tentukan lokasi untuk menyimpan file
    const uploadDir = path.join(process.cwd(), 'uploads');
    if (!fs.existsSync(uploadDir)) {
        fs.mkdirSync(uploadDir); // Buat direktori jika tidak ada
    }

    // Generate a random file name
    const randomName = crypto.randomBytes(16).toString('hex');
    const fileExtension = path.extname(file.name);
    const uploadPath = path.join(uploadDir, `${randomName}${fileExtension}`);

    // Simpan file ke server
    file.mv(uploadPath, (err) => {
        if (err) {
            return res.status(500).send(err);
        }

        // Konstruksi URL file yang diunggah
        const fileUrl = `${baseUrl}/images/${randomName}${fileExtension}`; // Gunakan base URL dari variabel lingkungan

        res.send(`File berhasil diunggah! URL: ${fileUrl}`);
    });
};

// Handler untuk memperbarui file
exports.updateFile = (req, res) => {
    const fileName = req.params.fileName;
    const filePath = path.join(process.cwd(), 'uploads', fileName);

    // Pastikan ada file yang diunggah
    if (!req.files || Object.keys(req.files).length === 0) {
        return res.status(400).send('Tidak ada file yang diunggah.');
    }

    // Ambil file yang diunggah
    const file = req.files.file;

    // Simpan file ke server dengan nama file yang sama
    file.mv(filePath, (err) => {
        if (err) {
            return res.status(500).send(err);
        }

        // Konstruksi URL file yang diunggah
        const fileUrl = `${baseUrl}/images/${fileName}`; // Gunakan base URL dari variabel lingkungan

        res.send(`File berhasil diperbarui! URL: ${fileUrl}`);
    });
};

// Handler untuk menghapus file
exports.deleteFile = (req, res) => {
    const fileName = req.params.fileName;
    const filePath = path.join(process.cwd(), 'uploads', fileName);

    // Hapus file menggunakan fs.unlink
    fs.unlink(filePath, (err) => {
        if (err) {
            return res.status(500).send(err);
        }

        res.send('File berhasil dihapus');
    });
};
