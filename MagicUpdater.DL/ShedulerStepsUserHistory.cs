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
    
    public partial class ShedulerStepsUserHistory
    {
        public int Id { get; set; }
        public int TaskId { get; set; }
        public int OperationType { get; set; }
        public Nullable<int> RepeatCount { get; set; }
        public Nullable<int> RepeatTimeout { get; set; }
        public int OperationCheckIntervalMs { get; set; }
        public int OnOperationCompleteStep { get; set; }
        public int OnOperationErrorStep { get; set; }
        public int OrderId { get; set; }
        public int HisId { get; set; }
        public System.DateTime ChangeUserDateUtc { get; set; }
        public string UserLogin { get; set; }
        public string ActionType { get; set; }
    }
}
