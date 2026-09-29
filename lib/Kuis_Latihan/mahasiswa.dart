class Mahasiswa {
    String nim;
    String nama;
    String alamat;
    String email;
    String? hobi;
    String? telepon;

    double ipk = 0.0;

    Mahasiswa({
    required this.nim,
    required this.nama,
    required this.alamat,
    required this.email,
    this.hobi,
    this.telepon,
  });

  String getInfo(String cariNim) {
    if (cariNim == nim) {
      return "NIM: $nim, Nama: $nama, Alamat: $alamat, Email: $email";
    } else {
      return "Data mahasiswa tidak ditemukan";
    }
  }
}


void main(){
  Mahasiswa mhs1 = Mahasiswa(
    nim: '3337240052',
    nama: 'fulan',
    alamat: 'serang',
    email: 'fulan@gmail.com'
  );
  print(mhs1.getInfo('3337240052')); 

}