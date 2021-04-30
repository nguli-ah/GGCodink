/*
    Nama    : Daniel Yesayas Junior Wattimury
    Kelas   : BD203
    NIM     :   200030349
    Program : Sequential Search sederhana
*/
#include <iostream>

using namespace std;

int main()
{
    // Kamus
    int data[5] = {5, 2, 3, 8, 1};
    int key;
    int jml = 0;

    // Algoritma
    cout << "Masukkan nilai yang dicari = ";
    cin >> key;

    for (int i = 0; i < 5; i++)
    {
        if (data[i] == key)
        {
            jml++;
        }
    }

    if (jml > 0)
    {
        cout << "Ada " << jml << endl;
    }
    else
    {
        cout << "Tidak ditemukan" << endl;
    }

    return 0;
}