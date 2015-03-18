using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FIKT.SwmEasy.DataAccess
{
    public class InitData
    {
        public static void Init()
        {
            using (SwmEasyDBEntities context = new SwmEasyDBEntities())
            {
                var firstProffesor = context.Professors.First();
                var firstStudent = context.Students.First();

                var firstSWork = CreateSeminarWork(context, firstProffesor, "Апликативен Софтвер", "Mедицински информациски систем", "Развој на медицински информациски систем и примена во здравствените установи.");
                AddStudentApplication(firstSWork, firstStudent);
                AddFile(firstSWork, "Конечна Верзија", "Mедицински информациски систем", "Mедицински информациски систем.pdf", "file001.pdf");

                var secondSWork = CreateSeminarWork(context, firstProffesor, "Апликативен Софтвер", "Алатките во Геогебра 4.0", "Вовед во нивното правилно и конзистентно интегрирање во основни училишта на РМ со посебен осврт кон алатките за трансформации.");
                AddStudentApplication(secondSWork, firstStudent);
                AddFile(secondSWork, "Конечна Верзија", "Алатките во Геогебра 4.0", "Алатките во Геогебра 4.0.pdf", "file002.pdf");

                var thirdSWork = CreateSeminarWork(context, firstProffesor, "Дистрибуирани Компјутерски Системи", "Адаптивни Невронски Мрежи", "Развој на адаптивни невронски мрежи и нивна примена во установи од јавен карактер.");
                AddStudentApplication(thirdSWork, firstStudent);
                AddFile(thirdSWork, "Конечна Верзија", "Адаптивни Невронски Мрежи", "Адаптивни Невронски Мрежи.pdf", "file003.pdf");

                context.SaveChanges();
            }
        }

        private static void AddFile(SeminarWork sWork, string desc, string title, string fileName, string uniqueFileName)
        {
            sWork.SeminarWorkFiles.Add(new SeminarWorkFile
            {
                DateOfUpload = DateTime.Now.AddDays(-1),
                Description = desc,
                Title = title,
                FileName = fileName,
                UniqueFileName = uniqueFileName,
                IsApproved = true
            });
        }

        private static void AddStudentApplication(SeminarWork sWork, Student student)
        {
            sWork.SeminarWorkApplications.Add(new SeminarWorkApplication
            {
                DateOfApplication = DateTime.Now.AddDays(-1),
                IsApproved = true,
                StudentId = student.StudentId
            });
        }

        private static SeminarWork CreateSeminarWork(SwmEasyDBEntities context, Professor proff, string courseName, string title, string swAbstract)
        {
            var sWork1 = context.SeminarWorks.Create();
            sWork1.Title = title;
            sWork1.Abstract = swAbstract;
            sWork1.ProfessorId = proff.ProfessorId;
            sWork1.CourseName = courseName;
            context.SeminarWorks.Add(sWork1);
            context.SaveChanges();
            return sWork1;
        }
    }
}