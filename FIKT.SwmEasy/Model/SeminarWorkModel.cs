using FIKT.SwmEasy.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FIKT.SwmEasy.Model
{
    public class SeminarWorkModel
    {
        public int SeminarWorkId { get; set; }

        public string Title { get; set; }

        public string Abstract { get; set; }

        public string ProfessorName { get; set; }

        public string CourseName { get; set; }

        public string StudentName { get; set; }

        public SeminarWorkModel(SeminarWork dbEntity)
        {
            SeminarWorkId = dbEntity.SeminarWorkId;
            Title = dbEntity.Title;
            Abstract = dbEntity.Abstract;
            ProfessorName = dbEntity.Professor.Name;
            CourseName = dbEntity.CourseName;

            var approvedApplication = dbEntity.SeminarWorkApplications.FirstOrDefault(x=>x.IsApproved);
            if (approvedApplication != null)
            {
                StudentName = approvedApplication.Student.Name;
            }
        }
    }
}