using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Web29Api.Models
{
    public class UserMasterRepository : IDisposable
    {
        projectEntities context = new projectEntities();
        //This method is used to check and validate the user credentials

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
        public User ValidateUser(string username, string password)
        {
            password = CreateMD5(password);
            return context.Users.FirstOrDefault(user =>
            user.username.Equals(username, StringComparison.OrdinalIgnoreCase)
            && user.password == password);
        }
        public void Dispose()
        {
            context.Dispose();
        }
    }
}