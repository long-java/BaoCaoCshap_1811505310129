using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
    public class ProductDAO
    {
        private PhamTienLongContext db;
        public ProductDAO()
        {
            db = new PhamTienLongContext();
        }

        ///////////////////
        public IEnumerable<Product> getListProducts()
        {
            IEnumerable<Product> listProducts = db.Products.ToList();
            IEnumerable<Product> listProducsSort = from item in listProducts
                                                   orderby item.Quantity ascending, (int.Parse(item.UnitCost)) descending
                                                   select item
                                                   ;
            return listProducsSort;
        }


        /////////////////
        public Product FindOneById(int id)
        {
            return db.Products.Find(id);
        }

        ///==============
        public List<Product> ListAll()
        {
            return db.Products.ToList();
        }


        //////////////////
        public bool Delete(int id)
        {
            try
            {
                var product = db.Products.Find(id);
                db.Products.Remove(product);
                db.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        ////////////////////
        public int Insert(Product product)
        {
            db.Products.Add(product);
            db.SaveChanges();
            return product.ID;
        }
    }
}
