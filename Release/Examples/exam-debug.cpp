// ������ȫƽ���� (�������д��󣬹�����)
// ��������ʱ�����������ѭ�����밴 Ctrl + Break ��ֹ��

#include <iostream>
using namespace std;

int main () {
    int m, n;
    for (n = 1; n <= 200; ++n)
        for (m = 1; m * m <= n; ++m)
            if (n = m * m)
                cout << n << "  "

    cout << endl;
    return 0;
}

