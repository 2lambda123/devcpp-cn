/*********************************************************************
˵������������ʹ���� EGE ͼ�κ�������л�ͼ������ʱ��������Ļ������
�������������ֱ���û��������������
��Ҫ�ڱ���ѡ���м���һЩ���Ӳ������ܳɹ����롣�������£����Dev-C++ 
�Ĳ˵������ߡ��еġ�����ѡ����ڡ����������������м�����������·���
�ı����У����ݱ����������ö�����������֣�ʵ������Ҫ��������ʱ�Ѷ��
�����������������ָ������Ϊͼ�ν��棩��
��A�������ǰʹ�õı��������а����С�64λ��������ӣ�
  -lgraphics64 -luuid -lmsimg32 -lgdi32 -limm32 -lole32 -loleaut32
��B�������ǰʹ�õı��������а����С�32λ��������ӣ�
  -lgraphics -luuid -lmsimg32 -lgdi32 -limm32 -lole32 -loleaut32
  ���Ժ������������ʱ��Ҫ�ڱ���ѡ����ɾ���������
*********************************************************************/

#include <iostream>
#include <ctime>        // ʹ�� time() ��������Ŀ��ļ�
#include <cstdlib>      // ʹ���������������Ŀ��ļ�
#include <graphics.h>	//ͼ�κ����� 
using namespace std;

int main() {
	int x1, y1, x2, y2; 

	const int WIDTH = 640, HEIGHT = 480;
	initgraph(WIDTH, HEIGHT);	//��ʼ��ͼ�ν��� 

	srand(time(0));	//ʹ�õ�ǰʱ����Ϊ��ֵ��������������� 
	x1 = rand() % WIDTH; 
	y1 = rand() % HEIGHT; 

	outtextxy(0, 0, "Random lines.  Press any key to stop");	//�����ʾ������ 
	do  {
		//���û�ͼ��ɫ���� random �������ɺ졢�̡�����ɫ�������� EGERGB �����ϳ���ɫ�� 
		setcolor(EGERGB(random(256),random(256), random(256)));
		x2 = rand() % WIDTH; 
		y2 = rand() % HEIGHT; 
		setlinestyle(SOLID_LINE, 0, rand()%10 + 1, NULL);	//�������� 
		line(x1, y1, x2, y2);	//��(x1, y1)�㻭�ߵ�(x2, y2)�� 
		x1 = x2; 
		y1 = y2;
		Sleep(100);	//��ͣ100���� 
	} while (!kbhit());		//ֱ���û��ڼ��̰�������� 

	return 0;
}
