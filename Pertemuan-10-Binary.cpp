/*
    Nama    : Daniel Yesayas Junior Wattimury
    Kelas   : BD203
    NIM     : 200030349
    Program : Binary Search sederhana
*/
#include <iostream>

using namespace std;

int main()
{
    // Kamus
    int Arr[9] = {3, 9, 11, 12, 15, 17, 23, 31, 35};
    int A, T, R;
    bool stat = false;
    int key;
    string ket = "";

    // Algortima
    cout << "Data yang dicari : ";
    cin >> key;

    A = 0;
    R = 8;

    do
    {
        T = (A + R) / 2;
        if (key == Arr[T])
        {
            stat = true;
            ket = "Ketemu!!";
        }
        else if (Arr[T] > key)
        {
            R = T - 1;
        }
        else if (Arr[T] < key)
        {
            A = T + 1;
        }
    } while (stat == false && A <= R);

    cout << ket;

    return 0;
}