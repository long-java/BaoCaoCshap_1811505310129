using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
    public class CategoryDAO
    {
        private PhamTienLongContext db;
        public CategoryDAO()
        {
            db = new PhamTienLongContext();
        }

        public List<Category> ListAll()
        {
            return db.Categories.ToList();
        }
    }
}
