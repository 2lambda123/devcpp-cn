/*********************************************************************
program: Draw the Chinese National Five-Star Flag �����й����Ǻ���
Copyright: GNU GPL v3
Author: anbangli@foxmail.com
Date:  2019-08-09
Description: Draw the flag according to "How to draw Chinese National 
Five-Star Flag": https://www.douban.com/note/509127465/

Use EGE (Easy Graphic Engeer, https://xege.org/ ) to draw graphics. 

Need to add some parameters to compiling options. Please click menu 
"Options > Compiler Options", in the textbox under "Add the following 
commands when calling the linker:", do as following:
(a) if the current compiler set contains "64-bit", add:
  -lgraphics64 -luuid -lmsimg32 -lgdi32 -limm32 -lole32 -loleaut32
(b) if the current compiler set contains "32-bit", add:
  -lgraphics -luuid -lmsimg32 -lgdi32 -limm32 -lole32 -loleaut32
  
(These parameters are only for programs using EGE graphic library.
Please delete them for other programs which donot use EGE.)
  
˵������������ʹ���� EGE ͼ�κ����⣨https://xege.org/�����л�ͼ������ʱ
������Ļ�������������������ֱ���û��������������
��Ҫ�ڱ���ѡ���м���һЩ���Ӳ������ܳɹ����롣�������£����Dev-C++ 
�Ĳ˵������ߡ��еġ�����ѡ����ڡ����������������м�����������·���
�ı����У����ݱ����������ö�����������֣�ʵ������Ҫ��������ʱ�Ѷ��
�����������������ָ������Ϊͼ�ν��棩��
��A�������ǰʹ�õı��������а����С�64λ��������ӣ�
  -lgraphics64 -luuid -lmsimg32 -lgdi32 -limm32 -lole32 -loleaut32
��B�������ǰʹ�õı��������а����С�32λ��������ӣ�
  -lgraphics -luuid -lmsimg32 -lgdi32 -limm32 -lole32 -loleaut32
����Щ�������ֻ����ҪEGE��ĳ������衣��������������ɾ��֮��
*********************************************************************/

#include <stdio.h>
#include <time.h>
#include <graphics.h>
#include <math.h>

//#define PI 3.1415926	//��EGEͼ�κ��������Ѷ����˳��� PI 
void paintstar(double x, double y, double radius, double rad) {
//��������ǣ�x �� y Ϊ�������꣬radius Ϊ���Բ�뾶��rad Ϊ��ֱƫת�Ƕ�(��λΪ����) 
	int pt[10];	//��� (x, y�����궥�㣬��10������
	for (int n = 0; n < 5; ++n) {	//���ݼ���֪ʶ�趨�������� x ֵ�� y ֵ 
		pt[n*2] = (int)( x - cos( PI * 4 / 5 * n + rad + PI/2 ) * radius );
		pt[n*2+1] = (int)( y - sin( PI * 4 / 5 * n + rad + PI/2) * radius );
	}
	setcolor(YELLOW);	//�趨������ɫ 
	setfillcolor(YELLOW);	//�趨�����ɫ 
	setrendermode(RENDER_MANUAL);
	fillpoly(5, pt);	//�������Σ�ʵ����ֻ��������ܵ���������Σ�
	floodfill(x, y, YELLOW);	//�������ǵ���������
}

int main() {
	int width = 900, height = 600;	//�й�����ߴ�ĳ������Ϊ3:2
	//setinitmode(INIT_ANIMATION and !INIT_WITHLOGO);	//����ͼ�γ�ʼ��ģʽ 
	initgraph(width, height);	// ͼ�γ�ʼ����ָ�����ڳߴ�

	setfillcolor(RED);	//���������ɫ 
	floodfill(10, 10, RED);	//ȫ�����Ϊ��ɫ���� 

	int unit = width / 2 / 15; //��ͼ��λΪ���ڿ�ȵ� 1/30;

	//�������Ƚ����滮��Ϊ4���ȷֳ����Σ��ٽ����Ϸ������λ��ֳ���15x10������
	//������ǵ�����λ�ڸó�������5��5����5��10֮�������Բ�뾶Ϊ3��λ���ȡ�
	paintstar(unit * 5, unit * 5, unit * 3, 0);

	//�Ŀ�С����ǵ����ĵ㣬��һ��λ����2��8����10��5���ڶ���λ����4��6����12��3��
	//������λ����7��3����12��3�����Ŀ�λ����9��1����10��5֮����
	//ÿ��С��������Բ��ֱ����Ϊ1��λ���ȡ��Ŀ�С����Ǿ���һ�Ǽ����Դ�����ǵ����ĵ㡣
	paintstar(unit * 10, unit * 2, unit, 0.4);	//ƫת�����ֹ����Զ��趨��0.4, 0.8, 0, 0.4 
	paintstar(unit * 12, unit * 4, unit, 0.8);
	paintstar(unit * 12, unit * 7, unit, 0);
	paintstar(unit * 10, unit * 9, unit, 0.4);

	getch(); 	//�ȴ��û��������֮����� 

	//���´������ڼ��ͼ���Ƿ������Ҫ 
	//�������߶�λ���Ƚ����滮��Ϊ4���ȷֳ����Σ��ٽ����Ϸ������λ��ֳ���15x10������
	setcolor(WHITE);
	line(width/2, 0, width/2, height);
	line(0, height/2, width, height/2);
	for(int k = 0; k < 10; k++)	//���Ϸ��������л� 10 ������
		line(0, unit * k, width / 2, unit * k);
	for(int k = 0; k < 15; k++)	//���Ϸ��������л� 15 ������
		line(unit * k, 0, unit * k, height/2);
		
	//��������������ĸ�С����ǵ��������ߣ��Լ���ĸ�������Ƿ��׼������ǵ�����
	setcolor(CYAN);
	line(5 * unit, 5 * unit, 10 * unit, 2* unit);
	line(5 * unit, 5 * unit, 12 * unit, 4* unit);
	line(5 * unit, 5 * unit, 12 * unit, 7* unit);
	line(5 * unit, 5 * unit, 10 * unit, 9* unit);

	getch(); 	//�ȴ��û��������֮��������� 
	return 0;
}


