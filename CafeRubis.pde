//Name: Patrick Horan
//Student Number: C16416742
void setup()
{
  size(800,600);
  loadData();
  printProducts();
}
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void draw()
{
  displayProducts();
  displayBill();
  
}
void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  for(TableRow r:table.rows())//for loop used for reading data from csv file and adding it to the products array list
  {
    Product product = new Product(r);
    products.add(product);
  }
}
void printProducts()
{
  for(Product p:products)
  {
    println(p.name);
    println(p.price);
  }
}

void displayProducts()
{
  float border = width *0.1f;
  float y = height - border;
  float x = border + 50;
  textSize(16);
  //p.price.toString();
 // float dispPrice = nf(p.price,1,2);
  
  
  for(Product p:products)
  {
    
    fill(255);
    rect(x,y, 250, 50);
    fill(0);
    text(p.name,x+10,y +10, x + 25, y+20);
    textAlign(LEFT);
    y = y - 60;
    
    
    //text(dispPrice, x , y , x + 40, y - 25);
    
    
  }
}
void displayBill()
{
  float border = width *0.1f;
  float y = border + 60;
  float x = border + 350;
  fill(255);
  rect(x, y, 300, 400);
  for(Product p:bill)
  {
    textSize(16);
    fill(0);
    text(p.name,x,y, x + 25, y+20);
    x = x + 20;
    y = y + 15;
  }
}
void mousePressed()
{
  if(mouseX >110 && mouseX < 360 && mouseY < 740 && mouseY > 690 )
  {
    for(Product p:products)
    {
      if(p.name == "Americano")
      {
        bill.add(p);
      }
    }
  } 
  if(mouseX >110 && mouseX < 360 && mouseY < 630 && mouseY > 580 )
  {
    for(Product p:products)
    {
      if(p.name == "Cappuccino")
      {
        bill.add(p);
      }
    }
  } 
  if(mouseX >110 && mouseX < 360 && mouseY < 520 && mouseY > 470 )
  {
    for(Product p:products)
    {
      if(p.name == "Latte")
      {
        bill.add(p);
      }
    }
  } 
  if(mouseX >110 && mouseX < 360 && mouseY < 410 && mouseY > 390 )
  {
    for(Product p:products)
    {
      if(p.name == "Roibois Tea")
      {
        bill.add(p);
      }
    }
  } 
  if(mouseX >110 && mouseX < 360 && mouseY < 330 && mouseY > 280 )
  {
    for(Product p:products)
    {
      if(p.name == "Lemon & Ginger Tea")
      {
        bill.add(p);
      }
    }
  } 
  if(mouseX >110 && mouseX < 360 && mouseY < 220 && mouseY > 170 )
  {
    for(Product p:products)
    {
      if(p.name == "Chardonnay")
      {
        bill.add(p);
      }
    }
  } 
  if(mouseX >110 && mouseX < 360 && mouseY < 110 && mouseY > 60 )
  {
    for(Product p:products)
    {
      if(p.name == "Prosecco")
      {
        bill.add(p);
      }
    }
  } 
}