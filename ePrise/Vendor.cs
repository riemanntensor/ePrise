//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ePrise
{
    using System;
    using System.Collections.Generic;
    
    public partial class Vendor
    {
        public Vendor()
        {
            this.Items = new HashSet<Item>();
        }
    
        public int VendorId { get; set; }
        public string VendorName { get; set; }
    
        public virtual ICollection<Item> Items { get; set; }
    }
}
