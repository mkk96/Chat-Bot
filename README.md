# College Enquiry Chatbot

An ASP.NET Web Forms portal with a keyword-based chatbot that answers college queries for students and visitors, plus an admin panel for managing answers, notices, timetables and syllabi.

![C#](https://img.shields.io/badge/C%23-239120?style=flat-square&logo=csharp&logoColor=white)
![ASP.NET](https://img.shields.io/badge/ASP.NET_Web_Forms-512BD4?style=flat-square&logo=dotnet&logoColor=white)
![.NET Framework](https://img.shields.io/badge/.NET_Framework-4.5.2-512BD4?style=flat-square&logo=dotnet&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=flat-square&logo=microsoftsqlserver&logoColor=white)

## Overview

Students and visitors often ask a college the same questions: exam dates, subjects, timetables, notices. This project puts those answers behind a chatbot and a small college portal.

The chatbot is rule based. A question is lower-cased and:

1. checked against a few built-in greetings ("hi", "hello", "how are you", ...);
2. otherwise matched against a **knowledge base** in SQL Server. Each entry has a **main keyword**, up to four **secondary keywords** and an **answer**. If the question contains a main keyword, the bot returns the answer of the first entry whose secondary keywords also appear in the question;
3. if nothing matches, the bot replies *"Sorry we do not have answer for that question"*.

Every question and answer is logged to a query history. Students can flag wrong answers as invalid so the admin can review them and add or refine keywords. On some pages the answer is also read aloud with the Windows Speech API (SAPI).

## Features

**Public home page**
- Chatbot for visitors, with spoken answers
- Student and admin login
- Visitor enquiry form (name, email, contact, whom to meet, type, purpose) with a printable slip

**Student area**
- Ask the chatbot, and mark an answer as invalid
- View previous queries and responses
- Discussion forum shared with other students and the admin, with the bot able to post answers
- View general notices, exam notices, class timetable, exam timetable and syllabus
- View account details and change password

**Admin area**
- Add knowledge-base entries (main keyword, secondary keywords, answer, student visibility)
- Review questions flagged as invalid and the full query history
- Manage courses/divisions and add students
- Upload general notices, exam notices, timetables, exam timetables and syllabi (as images)
- View visitor enquiries
- Post in the discussion forum

The project also contains teacher pages (`TQuery`, `TCPass`, `Teacher.master`), but the home page has no teacher login wired up.

## Tech stack

- **Framework:** ASP.NET Web Forms on .NET Framework 4.5.2, written in C#
- **Database:** Microsoft SQL Server (ADO.NET `SqlConnection` / `SqlDataAdapter`)
- **Speech:** Windows Speech API through `Interop.SpeechLib.dll`
- **UI:** Bootstrap 3, custom CSS, master pages for Student, Teacher and Admin layouts
- **IDE:** Visual Studio 2017 (Web Site project)

## Project structure

```
Chat-Bot/
├── Website.sln                 # Visual Studio solution (Web Site project)
├── Data/
│   └── Database.sql            # SQL Server script: creates the ColBot database, tables and sample data
└── Website/
    ├── HomePage.aspx(.cs)      # public chatbot, logins, visitor enquiry
    ├── SQuery.aspx(.cs)        # student chatbot
    ├── ChatForum.aspx(.cs)     # student discussion forum
    ├── SPreviousRes, SMyAc, SCPass, View*.aspx   # student pages
    ├── AddKeywords.aspx(.cs)   # admin: knowledge-base entries
    ├── AViewInvalid, AViewQ, AVisitor, AChatForum.aspx   # admin review pages
    ├── AddCourse, AddStud, AddGenNotice, ExamNotice, AddTT, ExamTT, AddSylab.aspx
    ├── Admin.master, Student.master, Teacher.master
    ├── App_Data/               # SQL Server data files
    ├── Bin/                    # Interop.SpeechLib.dll, Check.dll
    ├── css/, images/
    └── Web.config
```

### Main tables

| Table | Purpose |
|---|---|
| `Question` | Knowledge base: `Main`, `K1`-`K4`, `Student` (Yes/No), `Answer` |
| `Qhistory` | Log of every question and answer |
| `Invalid` | Answers flagged as wrong by students |
| `Forum` | Discussion forum posts |
| `Student`, `Faculty`, `Admin` | User accounts |
| `Course` | Courses and divisions |
| `GNotice`, `ENotice`, `timeTable`, `ExamTT`, `Sylab` | Uploaded notices, timetables and syllabi |
| `Enquiry` | Visitor enquiries |

## Getting started

### Prerequisites

- Windows (the speech feature uses the Windows Speech API)
- Visual Studio 2017 or later with the ASP.NET and web development workload
- .NET Framework 4.5.2 developer pack
- SQL Server (Express is fine) and SQL Server Management Studio

### 1. Create the database

Open `Data/Database.sql` in SQL Server Management Studio and run it. It creates a database named **ColBot** with all tables and some sample data.

The script sets the data and log file paths to a default SQL Server Express folder (`MSSQL11.SQLEXPRESS`). If your instance stores data somewhere else, edit the `FILENAME` paths at the top of the script first.

### 2. Point the app at your server

Every page connects with:

```
Data Source=(local);Initial Catalog=ColBot;Integrated Security=True
```

`(local)` means the default SQL Server instance on your machine, using Windows authentication. If you use a named instance such as SQL Express, replace `(local)` with `.\SQLEXPRESS` (or your server name) in the `.aspx.cs` files.

### 3. Run

1. Open `Website.sln` in Visual Studio.
2. Make sure `Website/Bin` contains `Interop.SpeechLib.dll` and `Check.dll`.
3. Set `HomePage.aspx` as the start page and press **F5** to run it on IIS Express.

## Usage

1. Sign in as the admin from the home page and add knowledge-base entries under **Add Keywords**. For example, main keyword `exam` with secondary keywords `java`, `date` and the answer `20 November`.
2. Add a course and a student, then sign in as that student and ask a question such as *"what is the java exam date?"*.
3. If an answer is wrong, mark it as invalid. The admin sees it under **View Invalid** and can refine the keywords.
4. Visitors can ask the chatbot from the home page and fill in the enquiry form without logging in.

## Notes

This is an academic project and is not hardened for production. SQL statements are built by string concatenation and passwords are stored in plain text.

## Context

Built as a B.Tech final-year project at Jamia Millia Islamia.

---

Made by [Mukul Kumar](https://mkk96.github.io) · [GitHub](https://github.com/mkk96) · [LinkedIn](https://www.linkedin.com/in/mukul-kumar-60322616b/)
