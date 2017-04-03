//
//  main4Arrays.c
//  day07
//
//  Created by Patrick Yu on 6/4/14.
//  Copyright (c) 2014 MobileApp. All rights reserved.
//

#include <stdio.h>
int main(){
	int scoresForEveryStudent[5][3];
	for (int i =0; i<5; i++) {
		
		switch (i) {
			case 0:
				for (int j=0; j<3; j++) {
					switch (j) {
						case 0:
							printf("please input Zhang's Chinese score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 1:
							printf("please input Zhang's English score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 2:
							printf("please input Zhang's Maths score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
							
						default:
							break;
					}
				}
				break;
				
			case 1:
				for (int j=0; j<3; j++) {
					switch (j) {
						case 0:
							printf("please input Li's Chinese score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 1:
							printf("please input Li's English score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 2:
							printf("please input Li's Maths score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
							
						default:
							break;
					}
				}
				break;
				
			case 2:
				for (int j=0; j<3; j++) {
					switch (j) {
						case 0:
							printf("please input Wang's Chinese score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 1:
							printf("please input Wang's English score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 2:
							printf("please input Wang's Maths score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
							
						default:
							break;
					}
				}
				break;
				
			case 3:
				for (int j=0; j<3; j++) {
					switch (j) {
						case 0:
							printf("please input Zhao's Chinese score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 1:
							printf("please input Zhao's English score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 2:
							printf("please input Zhao's Maths score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
							
						default:
							break;
					}
				}
				break;
				
			case 4:
				for (int j=0; j<3; j++) {
					switch (j) {
						case 0:
							printf("please input Qian's Chinese score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 1:
							printf("please input Qian's English score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
						case 2:
							printf("please input Qian's Maths score\n");
							scanf("%d",&scoresForEveryStudent[i][j]);
							break;
							
						default:
							break;
					}
				}
				break;


			default:
				break;
		}//switch people end
	}//for loop people end;
	printf("\ncalculating results...\n");
	
	printf("\t\tZhang\tLi\t\tWang\t\tZhao\t\tQian\n");
	for (int i =0; i<3; i++) {
		switch (i) {
			case 0:
				printf("Chinese\t");
				break;
			case 1:
				printf("English\t");
				break;
			case 2:
				printf("Maths\t");
				break; 
			default:
				break;
		}
		for (int j=0; j<5; j++) {
			printf("%d\t\t",scoresForEveryStudent[j][i]);
		}
		printf("\n");
	}
	
	
	
	
	
	
	
}