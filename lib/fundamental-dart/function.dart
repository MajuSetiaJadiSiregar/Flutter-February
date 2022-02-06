/*
function merupakan kumpulan code untuk proses tertentu.
 */

// function tampa return

void FunctionTampaReturn({String? abjad}){
  String abc = (abjad !=null) ? abjad : "Ini kosong";
  String def = abc;
  print(def);
}

String bukuTulis(){
  return "Buku Programming";
}

double jumlah(double pertama, double kedua){
  return pertama + kedua;
}