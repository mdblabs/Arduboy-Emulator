int arduboyW=128;
int arduboyH=64;

int i=-8;

int scale =5;
Arduboy display = new Arduboy();

void setup()
{
  size(arduboyW*scale,arduboyH*scale);
}

void draw()
{
  display.clearDisplay();
  display.setCursor(46,27);
  display.print("ARDUBOY");
      
}







