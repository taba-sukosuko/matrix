int scr_w=300;
int scr_h=200;

int fontsize=10;
int columns;
int[] drops;
String[] matrix;
PFont myFont;

String matrix_alpha= "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 # $ % ^ & * ( ) + - = & ^ % ";

void setup(){
  size(600,400);
  //myFont=loadFont("ArialMT-10.vlw");
  myFont=loadFont("YuMincho-Light-10.vlw");
  
  matrix=split(matrix_alpha," ");
  
  columns=int(width/fontsize);
  
  drops=new int[columns];
  for(int x=0;x<columns;x++){
    drops[x]=1;
  }
  frameRate(20);
}


void draw(){
  fill(0,0,0,20);
  noStroke();
  rect(0,0,width,height);
  
  fill(0,255,0);
  textSize(fontsize);
  textFont(myFont);
  
  for(int i=0;i<drops.length;i++){
    String word=matrix[floor(random(0,1)*matrix.length)];
    
    text(word,i*fontsize,drops[i]*fontsize);
    if(drops[i]*fontsize>height&&random(0,1)>0.975){
      drops[i]=0;
    }
    drops[i]++;
  }
}
