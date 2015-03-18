﻿using FIKT.SwmEasy.DataAccess;
using FIKT.SwmEasy.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FIKT.SwmEasy
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (SwmEasyDBEntities context = new SwmEasyDBEntities())
                {
                    var completedWorks = context.SeminarWorks.Where(x => x.IsCompleted).ToList();

                    var listDbEntities = from sWork in context.SeminarWorks
                                         where sWork.IsCompleted
                                         select sWork;
                    
                    var listModels = new List<SeminarWorkModel>();
                    foreach (var dbEntity in listDbEntities)
                    {
                        listModels.Add(new SeminarWorkModel(dbEntity));
                    }

                    ListView1.DataSource = listModels;
                    ListView1.DataBind();
                }
            }
        }
    }
}