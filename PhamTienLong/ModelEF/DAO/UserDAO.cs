using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;

namespace ModelEF.DAO
{
    public class UserDAO
    {
        private PhamTienLongContext db;
        public UserDAO()
        {
            db = new PhamTienLongContext();
        }

        public int Login(String user, String pass)
        {
            var result = db.UserAccounts.SingleOrDefault(x => x.UserName.Contains(user) && x.Password.Contains(pass));
            if (result == null)
            {
                return 0;
            }
            else
            {
                return 1;
            }
        }

        /////////Hien thi tat ca//////////
        public List<UserAccount> ListAll()
        {
            return db.UserAccounts.ToList();
        }


        ///////////Tim kiem
        public IEnumerable<UserAccount> ListWhereAll(string keysearch, int page, int pagesize)
        {
            IQueryable<UserAccount> model = db.UserAccounts;
            if (!string.IsNullOrEmpty(keysearch))
            {
                model = model.Where(x => x.UserName.Contains(keysearch));
            }
            return model.OrderBy(x => x.UserName).ToPagedList(page, pagesize);
        }
        ///////////////////

        public UserAccount Find(string userName)
        {
            return db.UserAccounts.Find(userName);
        }
        ///////=============
        public UserAccount FindId(int id)
        {
            return db.UserAccounts.Find(id);
        }


        public bool Delete(int id)
        {
            bool rs = true;
            try
            {
                var user = db.UserAccounts.Find(id);
                if(user.Status == "Blocked")
                {
                    db.UserAccounts.Remove(user);
                    db.SaveChanges();
                    rs = true;
                }
                else
                {
                    rs = false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

            return rs;
        }
    }
}
