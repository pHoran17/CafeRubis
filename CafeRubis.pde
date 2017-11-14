//Name: Patrick Horan
//Student Number: C16416742
void setup()
{
  size(800,600);
}
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void draw()
{
  
}
void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    
  }
}