//����ĳ����ݣ��ж��Ƿ�Ϊ���꣨�ܱ�4�����Ҳ���100���������ܱ�400������

#include<stdio.h>

int main() {
	int n;
	
	printf("please input a number��");
	scanf("%d",&n);
	if((n%4 ==0 && n%100 != 0) || n%400 == 0)
		printf("%d�����ꡣ\n", n);
	else 
		printf("%d��������!\n", n);
	return 0;
}

