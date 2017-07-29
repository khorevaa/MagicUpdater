//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MagicUpdater.DL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Shop
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Shop()
        {
            this.ShopComputers = new HashSet<ShopComputer>();
        }
    
        public string ShopId { get; set; }
        public string ShopName { get; set; }
        public string ShopRegion { get; set; }
        public Nullable<bool> ExchangeError { get; set; }
        public Nullable<System.DateTime> LastSuccessfulUpload { get; set; }
        public Nullable<System.DateTime> LastSuccessfulReceive { get; set; }
        public string AddressToConnect { get; set; }
        public string Phone { get; set; }
        public Nullable<bool> IsClosed { get; set; }
        public string Email { get; set; }
        public string VersionConfig1C { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ShopComputer> ShopComputers { get; set; }
    }
}
