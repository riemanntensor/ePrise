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
    using System.Collections.ObjectModel;
    
    public partial class Item
    {
        public Item()
        {
            this.Sales = new ObservableCollection<Sale>();
        }
    
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public decimal ItemCost { get; set; }
        public int VendorVendorId { get; set; }
    
        public virtual ObservableCollection<Sale> Sales { get; set; }
        public virtual Vendor Vendor { get; set; }
    }
}
