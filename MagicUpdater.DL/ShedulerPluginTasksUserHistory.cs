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
    
    public partial class ShedulerPluginTasksUserHistory
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<bool> Enabled { get; set; }
        public Nullable<int> FirstStepId { get; set; }
        public int Mode { get; set; }
        public System.DateTime NextStartTime { get; set; }
        public Nullable<System.DateTime> LastStartTime { get; set; }
        public Nullable<System.DateTime> LastEndTime { get; set; }
        public int Status { get; set; }
        public int HisId { get; set; }
        public System.DateTime ChangeUserDateUtc { get; set; }
        public string UserLogin { get; set; }
        public string PluginFileName { get; set; }
        public string ActionType { get; set; }
    }
}
