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
    
    public partial class ViewOperationsTop1000_New
    {
        public int ID { get; set; }
        public int OperationType { get; set; }
        public string OperationTypeEn { get; set; }
        public string OperationTypeRu { get; set; }
        public string CreatedUser { get; set; }
        public int ComputerId { get; set; }
        public string ComputerName { get; set; }
        public string ShopId { get; set; }
        public string Attributes { get; set; }
        public Nullable<bool> IsRead { get; set; }
        public System.DateTime CreationDate { get; set; }
        public Nullable<System.DateTime> DateRead { get; set; }
        public Nullable<int> OperStateId { get; set; }
        public string OperState { get; set; }
        public Nullable<bool> IsCompleted { get; set; }
        public Nullable<System.DateTime> DateCompleteOrError { get; set; }
        public string Result { get; set; }
        public Nullable<System.DateTime> LogDate1C { get; set; }
        public string LogMessage1C { get; set; }
        public int Is1CError { get; set; }
        public int IsActionError { get; set; }
        public bool IsFromSheduler { get; set; }
        public Nullable<System.DateTime> PoolDate { get; set; }
        public Nullable<System.Guid> GroupGUID { get; set; }
    }
}
