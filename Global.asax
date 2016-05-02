﻿<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        Application["AllUsersList"] = new List<User>();
        
        Application["ISBN Num"] = new string[] { "978-1449311520","978-0735667044","978-0993088100","978-1428336117","978-0769302652","978-0354242452","978-0071457743","978-1885071293",
                                                 "978-1591260905","978-1491950357"};
        Application["Title"] = new string[] { "Hadoop: The Definitive Guide",
                                                "Microsoft Visual Basic 2013 Step by Step",
                                                "Fifty Quick Ideas to Improve Your User Stories",
                                                "The Medical Manager Student Edition",
                                                "Introduction to Language Development",
                                                "Basic Plumbing, The Complete Beginner's Guide",
                                                "Engineering Formulas",
                                                "Handyman In-Your-Pocket",
                                                "Chemical Engineering Solved Problems",
                                                "Building Microservices"                                                
                                             };
        Application["Author"] = new string[] { "Tom White",
                                               "Michael Halvoson",
                                               "David Evens/Gojko Adzick",
                                               "David Fitzpatrick",
                                               "Scott McLaughlin",
                                               "Maning Gibralta",
                                               "George Geick",
                                               "Richard Allen Young",
                                               "NS Nandagopal",
                                               "Sam Newman"
                                             };
        Application["Price"] = new string[] {  "15.99",
                                               "9.50",
                                               "33.00",
                                               "99.00",
                                               "55.00",
                                               "29.99",
                                               "11.50",
                                               "5.99",
                                               "45.00",
                                               "19.99"
                                            };
    }
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
