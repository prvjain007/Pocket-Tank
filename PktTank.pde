int i,m,n;
float co,si,t=0,vx=200,vy=590,f,x,y,v,j;



void setup()
{
  size(1000,600);
  i=0;
 x=300; 
  
  
}
void go()
{
   if(i==0)
  {
    line(225,590,mouseX,mouseY);
   
    if(mousePressed)
    {
      x=mouseX;
     y=mouseY; 
    // println("x is" +x, "y is" +y);
       i=1; 
      went();
     
        println("i is" +i);
    }
  }
else
  {
    line(625,590,mouseX,mouseY);
    if(mousePressed)
    {
       x=mouseX;
     y=mouseY; 
   //  println("x is" +x, "y is" +y);
   i=0;
           println("i is" +i);
      want();
       
      
    }
  }
  
}
void went()
{
  f=((590-y)/(x-225));
//  println("tan is" +f);
  co=sqrt(1+(f*f));
  co=1/co;
  si=sqrt(1-co*co);
//  println("co is" +co, "si is" +si);
  gone();
}
void want()
{
  f=((590-y)/(625-x));
//  println("tan is" +f);
  co=sqrt(1+(f*f));
  co=1/co;
  si=sqrt(1-co*co);
  //println("co is" +co, "si is" +si);
  gone();
}
void gone()
{
  for(t=0;t<(0);t=t+0.1)
  {
 
  
  
 }}

   
void draw()
{
  background(0,0,50);
  fill(255,0,255);
  rect(200,590,50,50);
  rect(600,590,50,50);
  fill(225,255,250);

  ellipse(x++,100,50,50);
  
  ellipse(500,100,5,5);
  if(i==1)
  {
    
 fill(230,232,250);
  ellipse((100*co*t)+225,590-(100*si*t)+(0.5*10*t*t),10,10);
  

  t=t+0.1;
  
  }
  else
  {
    fill(255,215,0);
    ellipse(625-(100*co*t),590-(100*si*t)+(0.5*10*t*t),10,10);
  t=t+0.1;
  }
  go();
  
}
