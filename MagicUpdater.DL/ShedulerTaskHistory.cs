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
    
    public partial class ShedulerTaskHistory
    {
        public int Id { get; set; }
        public System.DateTime Date { get; set; }
        public int TaskId { get; set; }
        public int StepId { get; set; }
        public Nullable<int> ComputerId { get; set; }
        public bool IsComplete { get; set; }
        public string Message { get; set; }
    
        public virtual ShedulerStep ShedulerStep { get; set; }
        public virtual ShedulerTask ShedulerTask { get; set; }
    }
}