float Gravity;
ArrayList<Square> Squares; 
int Color;

class Square
{
  //Attributes
  PVector Position;
  float Width, Height;
  float Color;

  Square() {
  }


  void Display()
  {
    fill(Color);
    rect(Position.x,Position.y,Width,Height);
  }

  void Update()
  {
    Position.y -= Gravity;
  }
}



void setup()
{
  size(800, 800);
  Gravity = 5;
  Squares = new ArrayList<Square>();
}

void draw()
{
  background(125);
  //Update for all squares
   for(int i=0;i < Squares.size(); i++)
   {
     //Get each one
     Square s = Squares.get(i);
     s.Update();
     s.Display();
   }
}

void mousePressed()
{
  Color+= 10;
  //Setting Up Your Square
  Square newSquare = new Square();
  newSquare.Position = new PVector(mouseX,mouseY);
  newSquare.Width = 50;
  newSquare.Height = 50;
  newSquare.Color = Color;
  
  Squares.add(newSquare);
}
