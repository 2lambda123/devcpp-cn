//Input a year number, judge if it is a leapyear
//����ĳ����ݣ��ж��Ƿ�Ϊ���꣨�ܱ�4�����Ҳ���100���������ܱ�400������

#include <iostream>
using namespace std;

int main() {
	int n;
	
	cout << "please input a number��");
	cin >> n;
	if((n%4 ==0 && n%100 != 0) || n%400 == 0)
		cout << year << " is a leapyear." << endl;
	else 
		cout << year << " in NOT a leapyear." << endl;
	return 0;
}

