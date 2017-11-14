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