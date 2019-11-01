using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Text;
using System.Web;
using System.Web.Http;
using System.Web.Http.Description;
using Web29Api.Models;

namespace Web29Api.Controllers
{
    public class UsersController : ApiController
    {
        private projectEntities db = new projectEntities();

        [Authorize]
        [Route("CheckUserToken")]
        [HttpGet] // There are HttpGet, HttpPost, HttpPut, HttpDelete.
        public IHttpActionResult CheckUserToken()
        {
            String id = "0";
            int id_number = 0; 
            if (HttpContext.Current != null && HttpContext.Current.User != null
    && HttpContext.Current.User.Identity.Name != null)
            {
                 id = HttpContext.Current.User.Identity.Name;
            }
            id_number = int.Parse(id);

            User user = db.Users.Find(id_number);
            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }


        // GET: api/Users
        public IQueryable<User> GetUsers()
        {
            


            return db.Users;
        }
        [Authorize]
        // GET: api/Users/5
        [ResponseType(typeof(User))]
        public IHttpActionResult GetUser(int id)
        {

         
            User user = db.Users.Find(id);
            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }


        
        // PUT: api/Users/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutUser(int id, User user)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            

            //if (id != user.ID)
            //{
            //    return BadRequest();
            //}

            db.Entry(user).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        public static string CreateMD5(string input)
        {
            // Use input string to calculate MD5 hash
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                // Convert the byte array to hexadecimal string
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }

        [Authorize(Roles = "admin")]
        // POST: api/Users
        [ResponseType(typeof(User))]
        public IHttpActionResult PostUser(User user)
        {
           
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
           
            DateTime aDate = DateTime.Now;
            user.created = aDate;
            user.password = CreateMD5(user.password);
            user.status = true;
            db.Users.Add(user);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = user.ID }, user);
        }

        // DELETE: api/Users/5
        [ResponseType(typeof(User))]
        public IHttpActionResult DeleteUser(int id)
        {
            User user = db.Users.Find(id);
            if (user == null)
            {
                return NotFound();
            }

            db.Users.Remove(user);
            db.SaveChanges();

            return Ok(user);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
      
       
        private bool UserExists(int id)
        {
            return db.Users.Count(e => e.ID == id) > 0;
        }
    }
}