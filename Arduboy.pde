class Arduboy
{
  Arduboy()
  {
    cursor_x=0;
    cursor_y=0;
  }
  
  
  int cursor_x;
  int cursor_y;
  
  void drawPixel(int px, int py)
  {
    rectMode(CORNER);
    fill(#62D8FA);
    stroke(#62D8FA); //stroke(colour);
    rect(px*scale,py*scale,scale,scale);
  }
  
  void drawChar(int x, int y, char c)//int colour, int bg, int size)
  {
     for (int cLine = c*5+4; cLine>(c*5)-1;cLine--)
     {
        for(int i=0;i<6;i++)
        {
          String str = binary(font[cLine],8);
          char[] cColumn = new char[8];
          cColumn = str.toCharArray();
          for(int j=0;j<8;j++)
          {
            if(cColumn[j]==49)
            {
              drawPixel(x,y-j);
            }
          } 
        }
        x--;
     }
  }
  
  void print(String str)
  {
    char[] line = str.toCharArray();
    for(int i=0;i<line.length;i++)
    {
      drawChar(this.cursor_x,this.cursor_y,line[i]);
      this.setCursor(this.cursor_x+6,this.cursor_y);
    }
  }
  void clearDisplay()
  {
    background(0);
  }
  
  void drawBitmap(int bx, int by, char bitmap[],int bw, int bh)
  {
    for (int cLine = 0; cLine<bh*8;cLine++)
     {
        for(int i=0;i<bw;i=i+8)
        {
          String str = binary(bitmap[cLine],8);
          char[] cColumn = new char[8];
          cColumn = str.toCharArray();
          for(int j=0;j<8;j++)
          {
            if(cColumn[j]==49)
            {
              drawPixel(bx,by-j);
            }
          } 
        }
        bx--;
     }
  }
  
  void setCursor(int x, int y)
  {
    this.cursor_x=x;
    this.cursor_y=y;
  }
  
}
