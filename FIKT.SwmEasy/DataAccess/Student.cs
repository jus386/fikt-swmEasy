//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FIKT.SwmEasy.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class Student
    {
        public Student()
        {
            this.SeminarWorkApplications = new HashSet<SeminarWorkApplication>();
        }
    
        public int StudentId { get; set; }
        public string Name { get; set; }
        public System.Guid MembershipUserId { get; set; }
    
        public virtual ICollection<SeminarWorkApplication> SeminarWorkApplications { get; set; }
    }
}
