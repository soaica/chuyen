//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Web29Api.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Accommodation
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Accommodation()
        {
            this.Comment_Acc = new HashSet<Comment_Acc>();
        }
    
        public int ID { get; set; }
        public string name_acc { get; set; }
        public string des_acc { get; set; }
        public string thumbnail { get; set; }
        public Nullable<decimal> price_acc { get; set; }
        public Nullable<decimal> discount_acc { get; set; }
        public Nullable<byte> quanity_acc { get; set; }
        public string address_acc { get; set; }
        public string category { get; set; }
        public string location { get; set; }
        public Nullable<bool> status { get; set; }
        public Nullable<System.DateTime> created { get; set; }
        public Nullable<System.DateTime> updated { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment_Acc> Comment_Acc { get; set; }
    }
}
