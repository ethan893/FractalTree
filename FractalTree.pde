private double fractionLength = .8;
private int smallestBranch = 10;
private double branchAngle = .4;
public void setup()
{  
  size(1000,1000);    
  noLoop();
}
public void draw()
{      
  stroke(255, 253, 208);  
  drawBranches(400,380,100,3*Math.PI/3);
  //stroke(255, 253, 208);  
   drawBranches(400,380,100,3*Math.PI/2);
   //stroke(167, 199, 231);
    drawBranches(400,380,100,2*Math.PI);
    //stroke(191,148,228);
     drawBranches(400,380,100,Math.PI/2);
}
public void drawBranches(int x,int y, double branchLength, double angle)
{  
  double angle1 = angle + branchAngle;  
  double angle2 = angle - branchAngle;
  branchLength = fractionLength * branchLength;
int endX1 = (int)(branchLength*Math.cos(angle1)+x);
int endY1 = (int)(branchLength*Math.sin(angle1)+y);
int endX2 = (int)(branchLength*Math.cos(angle2)+x);
int endY2 = (int)(branchLength*Math.sin(angle2)+y);
int endX3 = (int)(branchLength*Math.cos(angle2)+x);
int endY3 = (int)(branchLength*Math.sin(angle2)+y);
line(x,y,endX1,endY1);
line(x,y,endX2,endY2);
line(x,y,endX2,endY1);
if(branchLength > smallestBranch) {
 stroke(255, 253, 208);
  drawBranches(endX1,endY1,branchLength,angle1);
  stroke(80, 200, 120);
  drawBranches(endX2,endY2,branchLength,angle2);
  stroke(167, 199, 231);
  drawBranches(endX3,endY3,branchLength,angle2);
}
} 
