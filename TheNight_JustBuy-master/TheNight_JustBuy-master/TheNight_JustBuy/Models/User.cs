//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TheNight_JustBuy.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Web;
    using TheNight_JustBuy.Areas.Admin.Models;
    using TheNight_JustBuy.ViewModels;

    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.Addresses = new HashSet<Address>();
            this.BlogComments = new HashSet<BlogComment>();
            this.Blogs = new HashSet<Blog>();
            this.Orders = new HashSet<Order>();
            this.ProductComments = new HashSet<ProductComment>();
        }

        public User(UserModelForCreate user)
        {
            this.UserID = user.UserID;
            this.Username = user.Username;
            this.FirstName = user.FirstName;
            this.LastName = user.LastName;
            this.Password = user.Password;
            this.CreditCard = user.CreditCard;
            this.Gender = user.Gender;
            this.Birthday = user.Birthday;
            this.Phone = user.Phone;
            this.Email = user.Email;
            this.Avatar = user.Avatar;
            this.Role = user.Role;
            this.Status = user.Status;
            this.Cart = user.Cart;
        }

        public User(UserRegisterModel user)
        {
            this.UserID = user.UserID;
            this.Username = user.Username;
            this.FirstName = user.FirstName;
            this.LastName = user.LastName;
            this.Password = user.Password;
            this.CreditCard = user.CreditCard;
            this.Gender = user.Gender;
            this.Birthday = user.Birthday;
            this.Phone = user.Phone;
            this.Email = user.Email;
            this.Avatar = user.Avatar;
            this.Role = user.Role;
            this.Status = user.Status;
            this.Cart = user.Cart;
        }

        public int UserID { get; set; }
        public string Username { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Password { get; set; }
        public string CreditCard { get; set; }
        public Nullable<bool> Gender { get; set; }
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}")]
        public Nullable<System.DateTime> Birthday { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Avatar { get; set; }
        public Nullable<bool> Role { get; set; }
        public Nullable<bool> Status { get; set; }
        public string Cart { get; set; }
        //public HttpPostedFileBase ImageFile { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Address> Addresses { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BlogComment> BlogComments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Blog> Blogs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductComment> ProductComments { get; set; }
    }
}