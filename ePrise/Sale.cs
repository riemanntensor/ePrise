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
    
    public partial class Sale
    {
        public int SaleId { get; set; }
        public decimal SalePrice { get; set; }
        public System.DateTime SaleDate { get; set; }
        public decimal SaleProfit { get; set; }
        public string SaleLocation { get; set; }
        public int CustomerCustomerId { get; set; }
        public int ItemItemId { get; set; }
        public string ItemSalePrice { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Item Item { get; set; }
    }
}
