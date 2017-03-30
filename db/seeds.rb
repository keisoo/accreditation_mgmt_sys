User.create(email: 'admin@admin.com', password: 'password', password_confirmation: 'password', name: 'Admin', role: 'admin', username: 'admin')
User.create(email: 'user1@user.com', password: 'password', password_confirmation: 'password', name: 'User 1', role: "user", area_id: 1, username: 'user1')
User.create(email: 'user2@user.com', password: 'password', password_confirmation: 'password', name: 'User 2', role: "user", area_id: 2, username: 'user2')
User.create(email: 'user3@user.com', password: 'password', password_confirmation: 'password', name: 'User 3', role: "user", area_id: 3, username: 'user3')
User.create(email: 'user4@user.com', password: 'password', password_confirmation: 'password', name: 'User 4', role: "user", area_id: 4, username: 'user4')
User.create(email: 'user5@user.com', password: 'password', password_confirmation: 'password', name: 'User 5', role: "user", area_id: 5, username: 'user5')
User.create(email: 'user6@user.com', password: 'password', password_confirmation: 'password', name: 'User 6', role: "user", area_id: 6, username: 'user6')
User.create(email: 'user7@user.com', password: 'password', password_confirmation: 'password', name: 'User 7', role: "user", area_id: 7, username: 'user7')
User.create(email: 'user8@user.com', password: 'password', password_confirmation: 'password', name: 'User 8', role: "user", area_id: 8, username: 'user8')
User.create(email: 'user9@user.com', password: 'password', password_confirmation: 'password', name: 'User 9', role: "user", area_id: 9, username: 'user9')
User.create(email: 'user10@user.com', password: 'password', password_confirmation: 'password', name: 'User 10', role: "user", area_id: 10, username: 'user10')
User.create(email: 'user11@user.com', password: 'password', password_confirmation: 'password', name: 'User 11', role: "user", area_id: 11, username: 'user11')

Area.create(name: "Area I. Vision, Mission, Goals, and Objectives", user_id: 2) do |area|
  Parameter.create(name: "Parameter A - Statement of the Vision, Mission, Goals and Objectives", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "State the Vision of the University/College", number: number, tags: " vision ")
      Line.create(name: "State the Mission of the University/College", number: number, tags: " mission ")
      Line.create(name: "State the Goals of the Academic Unit", number: number, tags: " goals ")
      Line.create(name: "State the Objectives/Outcomes of the Program", number: number, tags: " objectives outcomes ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the stakeholder's participation in the formulation/monitoring/review of the Objectives of the Program.", number: number, tags: " formulation monitoring review ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present the BOR/BOT Resolution Approving the VMGO; include BOR/BOT Resolution amendments (if there's any)", number: number, tags: " resolution amendments ")
      Line.create(name: "Describe the results of the interview with the administrators, faculty, staff and students.", number: number, tags: " interview ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A such as governance based on the principles of participation and transparency leading to the accomplishment of the VMGO.", number: number, tags: " practices VMGO")
    end
  end
  Parameter.create(name: "Parameter B - DISSEMINATION AND ACCEPTABILITY", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "State the Forms/Media used in disseminating the VMGO", number: number, tags: " forms media ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Cite VMGO dissemination activities, and provide captions to all pictorial if necessary", number: number, tags: " activities pictorial ")
      Line.create(name: "Describe how members of the institution (administrators, faculty, non teaching staff, students) can articulate procedures, guidelines and protocols of the University/College.", number: number, tags: " articulate procedures guidelines protocols")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present the results of the research study on awareness and acceptability of the VMGO by the different stakeholders", number: number, tags: " acceptability result ")
      Line.create(name: "Describe the implementation of the VMGO and their congruence with educational practices and activities", number: number, tags: " congruence practices activities ")
      Line.create(name: "Cite instances or evidences to show that the program goals and objectives are achieved.", number: number, tags: " evidences achieved ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
       Line.create(name: "Cite as many best practices as you can on Parameter B such as governance that facilitates the accomplishment of the VMGO", number: number, tags: " practices accomplishment")
    end
    Number.create(name: "EXTENT of COMPLIANCE with the Team Recommendations for Area I VMGO in the last survey Visit", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of the Area focusing on interventions done on the recommendations", number: number, tags: " compliance matrix ")
    end
  end
end

Area.create(name: 'Area II. Faculty', user_id: 3) do |area|
  Parameter.create(name: "Parameter A - Academic Qualifications and Professional Experience", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the Qualifications Standards (QS) for Academic Staff/Faculty;",number: number, tags: " qualifications standards faculty qs ")
      Line.create(name:"Present NBC 461 guidelines on qualifications set per faculty rank;", number: number, tags: " guidelines rank nbc461 nbc 461 ")
      Line.create(name: "Present CHED Memo of the Program re-requisites of faculty in the program.", number: number, tags: "CHED memo re-requisites")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present a consolidated faculty profile matrix involved in the Program indicating their respective academic ranks, educational attainment (PhD/EdD; MS/MA; BS degree) specializations, licensure examinations passed; years of teaching experience, appointment status and subject assignments.", number: number, tags: " profile educational attainment licensure examination experience teaching assignments subject ")
      Line.create(name: "Present a Graph showing the Core faculty profile according to:",number: number, tags: "graph core faculty profile ")
      Line.create(name: "Present a Graph showing the General Education faculty profile according to:",number: number, tags: "graph general faculty profile ")
      Line.create(name: "Summarize the achievements/professional competence of faculty along instruction, research, extension, production, consultancy, expert services, publication, creative and scholarly works.",number: number, tags: " achievements ")
      Line.create(name: "Consolidate names of faculty who have prepared instructional materials and indicates if it is approved by the University/College Instructional Materials Committee.", number: number, tags: " faculty isntructional materials ")
      Line.create(name: "Consolidate names of faculty who have conducted and/or are conducting research/es relevant to the Program" , number: number, tags: " conducted research faculty ")
      Line.create(name: "Consolidate names of faculty who are actively involved in Extension activities relevant to the Program", number: number, tags: "faculty activities")
      Line.create(name: "Consolidate names of faculty who are handling Production Projects", number: number, tags:" handling production  ")
      Line.create(name: "Consolidate scholarship awards/grants received by the faculty involved in the program", number: number, tags: " scholarship awards grants  ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Classify faculty according to their academic ranks based on duly approved/attested appointment by the Civil Service Commission. (to show the increased number of PhD holders among academic staff).", number: number, tags: " civil service commission ")
      Line.create(name: "Summarize names of faculty involved in the Program according to their fitness (Performance Rating) based on approved Merit System & Promotion Plan (MSPP), NBC 461- QCE and strategic Performance Management System (SPMS).", number: number, tags: " fitness merit mspp spms ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A such as indications of competent and qualified faculty and/or cite strategies that are reflective of the competence of faculty in maintaining academic integrity in the institution's educational program.", number: number, tags: " competent qualified faculty strategies practices ")
    end
  end
  Parameter.create(name: "Parameter B - Recruitment, Selection and Orientation", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the Institution's BOR/BOT and CSC approved systems and procedures in the Recruitment, Selection and Promotion of Faculty – (Merit Selection & Promotion Plan for Faculty including the approved Criteria for Selection Used used the Composition of faculty Selection and Promotion Board).", number: number, tags: " BOR BOT BOR/BOT csc recruitment selection promotion  ")
      Line.create(name: "Present the Institution's system of Conducting Orientation/Re-Orientation of New/Old Faculty", number: number, tags: " conductting orientation re-orientation ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the Institution's systems and procedures in the Recruitment, Selection, and Promotion of Faculty as embodied in the BOR/BOT & CSC approved Merit Selection & Promotion Plan for Faculty and other institution guidelines in terms of mandatory and/or optional criteria; open competition and in breeding policy.", number: number, tags: " procedure system recruitment selection promotion ")
      Line.create(name: "Describe the Institution's practice/system of conducting the Orientation/Re-Orientation of New/Old Faculty (to include the topics, lectures, workshop sessions during the Orientation Program).", number: number, tags: " orientation re-orientation topics lectures workshops ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present the Comparative Assessment utilized by the Faculty Selection & Promotion Board to draw the Ranking List and endorsed to the BOR/BOT where the most qualified faculty are recommended/selected for approval.", number: number, tags: " comparative assessment ranking ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter B such as adoption of effective recruitment and selection processes.", number: number, tags: " practices recruitment selection ")
    end
  end
  Parameter.create(name: "Parameter C - Faculty Adequacy and Loading", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the BOR/BOT Approved Policies/Guidelines on Faculty Workload including institutional policies on Equivalent Teaching Load (ETL).", number: number, tags: " workload policies etl ")
      Line.create(name: "Consolidate the Program's Faculty Workload/ETL according to their academic ranks in the last 6 academic terms", number: number, tags: " consolidate workload etl ")
      Line.create(name: "Consolidate the Faculty-Student ratio of the Program in the last 6 Academic terms.", number: number, tags: " faculty-student ratio ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the Program's faculty workload system including the administrative and other quasi assignments with equivalent teaching-load (ETL) and its process of equitable and fair distribution of workload along the following: 
        adherence of the provisions of the approved policies/guidelines on Faculty Workload; 
        Compatibility of specialization/experience on teaching assignments; and 
        substitution/remedial policies (whenever a faculty is on leave/on or on official business)", number: number, tags: " etl specialization substitution remdial policies leave")
      Line.create(name: "Describe other issues/concerns on Faculty Workload System and its implementation (if any).", number: number, tags: " issues concern workload ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Illustrate the congruence of Faculty loading with compliance of faculty to all academic policies such as timely submission of required academic reports. ", number: number, tags: " congruence submission required reports ")
      Line.create(name: "Cite all activities to show that faculty are effective and efficient as a result of effective faculty loading.",number: number, tags: " activities loading ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter C such as effective and efficient faculty loading", number: number, tags: " practices loading")
    end
  end
  Parameter.create(name: "Parameter D - Rank and Tenure", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the BOR/BOT/CSC Approved Policies/Guidelines on  
      a. Merit Selection & Promotion Plan for Faculty (MSPP) 
      b. Strategic Performance Management System (SPMS) for Faculty", number: number, tags: " bor bot csc approved mspp spms ")
      Line.create(name: "Present copy of the Institution's recent NBC 461-CCE Print Out", number: number, tags: " nbc 461-cce print ")
      Line.create(name: "Present copy of the Institution's recent NBC 461-QCE Reports", number: number, tags: " nbc 461-qce ")
      Line.create(name: "Present copy of the approved Supplemental Plantilla for the implementation of NBC 461", number: number, tags: " suplemental plantilla ")
      Line.create(name: "Present copy of RA 8291 – GSIS Retirement Law", number: number, tags: " ra8291 ra 8291 gsis retirement ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the Institution's process of promotion, separation and retirement. ", number: number, tags: " process promotion separation retirement ")
      Line.create(name: "Describe in flow chart from the institution's promotion through vacancy (in rank and salary) and change of status procedures.", number: number, tags: " flowchart flow chart vacancy ")
      Line.create(name: "Describe in flow chart from the Institution's resignation and retirement process;", number: number, tags: " flow chart resignation flowchart retirement ")
      Line.create(name: "Describe in flow chart from the Institution's process of processing the NBC 461-CCE (Common Criteria for Evaluation) as a criteria for promotion in rank.", number: number, tags: " nbc 461-cce nbc461-cce criteria promotion ")
      Line.create(name: "Describe in flow chart from the Institution's process of processing the NBC 461-QCE (Qualitative Contribution for Evaluation) as a twin criteria for promotion in rank.", number: number, tags: " nbc 461-qce nbc461-qce qualitative criteria ")
      Line.create(name: "Describe the implementation of presidential Discretion (PD) per NC 461 (if applicable).", number: number, tags: " presidential discretion nbc461 nbc 461 ")
      Line.create(name: "Present the College and/or Program Retirement Plan.", number: number, tags: " retirement plan ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Describe/Show evidences of satisfaction in rank and employment status.", number: number, tags: " satisfaction employment ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter D (Rank and Tenure).", number: number, tags: "practices rank tenure ")
    end
  end
  Parameter.create(name: "Parameter E - Faculty Development", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the BOR/BOT Approved Guidelines on Faculty Development Program.", number: number, tags: " bor bot faculty development ")
      Line.create(name: "Present the Institution's approved PRE (Programs' Responsibility Expenditure) where the allocated budget for Faculty Development is listed and included.", number: number, tags: " pre expenditure budget ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present in outline from the Faculty Development Program/Plan specific to the Program (including degree program to be pursued, schedule/year, funding source, etc.; seminars, training etc.) ", number: number, tags: " development plan seminar training ")
      Line.create(name: "Describe in flow chart from the measures adopted in sending faculty of the program to attend training programs. ", number: number, tags: " faculty attend training ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Describe/Show evidences of satisfaction in rank and employment status.", number: number, tags: " satisfaction rank employment ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter E (Faculty Development)", number: number, tags: " practices faculty development ")
    end
  end
  Parameter.create(name: "Parameter F - Professional Performance and Scholarly Works", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present relevant Institutional policies on professional performance an scholarly works.", number: number, tags: " relevant policies performance works ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Consolidate the resources used and/or prepared by faculty to enhance teaching-learning process.", number: number, tags: " resources teaching-learning ")
      Line.create(name: "Consolidate the faculty involvement as Consultant, resource Person or Lecture in Field of specialization and other disciplines.",number: number, tags: " consultant lecture ")
      Line.create(name: "Consolidate published works/paper presented by faculty relevant to the program within the last 3-5 years. ",number: number, tags: " published paper ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Describe/show evidences that the scholarly works of faculty earned commendable citations.", number: number, tags: " evidences faculty citations ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter F (Professional Performance and Scholarly Works) ", number: number, tags: " practices performance scholarly works ")
    end
  end
  Parameter.create(name: "Parameter G - Salaries, Fringe Benefits and Incentives", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present relevant national and institutional policies on salaries; compensation and grants of benefits.", number: number, tags: " national institutional policies salaries compensation benefits ")
      Line.create(name: "Present the institution's CSC approved PRAISE (Program on Rewards and Incentives for Service Excellence) Guidelines including the Institution's Guidelines on thr Grant of Performance Based Bonus (PBB).", number: number, tags: " praise pbb csc ")
      Line.create(name: "Enumerate the Institution's grant of Leave benefits. ", number: number, tags: " grant benefits leave ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the system of compensating and rewarding the faculty, with specific description of the following: 
      basis of the faculty salary rates (Salary Standardization Law); 
      other benefits (PERA - Personnel Economic & Relief Allowance; bonuses, etc. ); 
      mode of overload teaching compensation. ", number: number, tags: " pera rewarding salary rate ")
      Line.create(name: "Fringe benefits granted to the faculty in the last 3-5 years.",number: number, tags: " fringe benefits ")
      Line.create(name: "Description of the Academic Unit's incentive system for faculty with outstanding performance/achievements",number: number, tags: " incentive performance outstanding ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Describe/Show evidences of satisfaction on salaries, rewards and benefits. ", number: number, tags: " evidences satisfaction salaries rewards benefits ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter G (Salaries, Fringe Benefits and Incentives)", number: number, tags: " practices salaries fringe benefits incentives ")
    end
  end 
  Parameter.create(name: "Parameter H - Professionalism ", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present Institutional Guidelines/Policies on Work Ethics, Attendance in Classes, submission of Academic Reports and Decorum.", number: number, tags: " decorum reports ethics classes ")
      Line.create(name: "Present legal documents that contain policies on professionalism adopted by the Institution (RA 6713 & Code of Ethics of the Profession). ", number: number, tags: " legal documents policies ra6713 ra 6713 ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the system of supervision of faculty performance in the following: 
      Preparation of instructional materials 
      formulating, updating, and enriching of syllabi 
      class preparation 
      testing and evaluation of learning outcomes 
      other faculty-related activities (e.g. OJT, practicum, RLE, off-campus teaching, etc.) ", number: number, tags: " supervision instructional syllabi class learning ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Cite instances or manifestations of professionalism among faculty.", number: number, tags: " professionalism manifestations ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter H (Professionalism)", number: number, tags: " practices professionalism ")
    end
    Number.create(name: "EXTENT of COMPLIANCE with the Team Recommendations for Area II – Faculty in the last Survey Visit.", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of Area II focusing on interventions done on the recommendations", number: number, tags: " compliance matrix ")
      Line.create(name: "Present the Summary of Findings and Recommendations for Area II (Faculty) during the ______ (Preliminary, 1st Survey, 2nd Survey, 3rd Survey, or 4th Survey) In terms of;", number: number, tags: " summary Findings recommendations survey ")
    end
  end
end 

Area.create(name: 'Area III. Curriculum and Instruction', user_id: 4) do |area|
  Parameter.create(name: "Parameter A - CURRICULUM PROGRAM AND PROGRAM OF STUDENTS", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the BOR/BOT approved Curriculum and/or Program of Studies", number: number, tags: " bot bor ")
      Line.create(name: "Present the CHED Memorandum Order of the Program (If there is any).", number: number, tags: " ched memorandum ")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe and/or make comparison of the duly approved courses in the curriculum with CHED/PRC standards or minimum requirements in terms of units.", number: number, tags: " comparison ched prc ")
      Line.create(name: "Describe the congruence of the curriculum program with the vision and mission of the institute and the Goals of the Academic Unit. ", number: number, tags: " congruence vision mission goals ")
      Line.create(name: "Describe how the curriculum was designed, developed, monitored, reviewed, and approved by authorities concerned, including the participation of the academic community and the stakeholders.", number: number, tags: " curicculum designed developed monitor review ")
      Line.create(name: "Describe the system/s used in evaluating and improving the quality of the program including: 
        the role of stakeholders 
        the integration of recent trends and developments 
        the updating of course syllabi ", number: number, tags: " evaluating improving ")
      Line.create(name: "Describe the system used to accommodate students with special needs. ", number: number, tags: " special needs ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Cite instances that the curriculum is responsive and relevant to the demand of the times.", number: number, tags: " responsive relevant ")
      Line.create(name: "Show evidences that there is a passing average in the Licensure Examination (if applicable).", number: number, tags: " passing average licensure examination ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A (Curriculum & Program of Studies).", number: number, tags: " best practices curriculum studies ")
    end
  end
  Parameter.create(name: "Parameter B - INSTRUCTIONAL PROCESSES, METHODOLOGIES and LEARNING ENHANCEMENT OPPORTUNITIES", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present Institutional policies regarding the preparation of the course syllabi and other policies on instructional processes, methodologies and learning opportunities.", number: number, tags: " policies syllabi methodologies ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Major Learning Opportunities ", number: number, tags: " learning opporunities ")
      Line.create(name: "Description of procedures adopted in the production of instructional materials. ", number: number, tags: " instructional materials ")
      Line.create(name: "Teaching strategies used to facilitate/enrich learning ", number: number, tags: " teaching ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present evidence that course syllabi are updated and improved.", number: number, tags: " syllabi updated improved ")
      Line.create(name: "Cite evidences that teaching strategies are efficiently and effectively used.", number: number, tags: " evidence strategy ")
      Line.create(name: "Show evidences that Instructional Materials are copyrighted/patented. ", number: number, tags: " copyrighted patented ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter B (Instructional Process, Methodologies and Learning Opportunities) ", number: number, tags: " best practices ")
    end
  end 
  Parameter.create(name: "Parameter C - ASSESSMENT OF ACADEMIC PERFORMANCE", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present institutional and/or College policies/system of assessing academic performances.", number: number, tags: " academic performance ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "List of evaluation measures used to ensure that the students' performance meet expected outcomes.", number: number, tags: " evaluation outcomes ")
      Line.create(name: "Description of a system of validating and/or improving tests and other evaluation instruments. ", number: number, tags: " test evaluation insturment ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present and/or evidences that students' academic performance is commendable.", number: number, tags: " performance commendable ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter C (Assessment of Academic Performance).", number: number, tags: " practices assessment academic ")
    end
  end 
  Parameter.create(name: "Parameter D - MANAGEMENT OF LEARNING ", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present and/or cite policies on management of learning. ", number: number, tags: " management learning ")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the system to ensure effective classroom management ", number: number, tags: " system effective ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present evidences that learning is efficiently and effectively management.", number: number, tags: " learning evidences ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter D (Management of Learning)", number: number, tags: " practices ")
    end
  end
  Parameter.create(name: "Parameter E - GRADUATION REQUIREMENTS ", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present and/or cite policies on program's academic and graduation requirements.", number: number, tags: " graduation requirements ")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the Program's academic and graduation requirements and how they are disseminated. ", number: number, tags: " description disseminated ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present a comparison of students' who are able to graduate on time with the total number of student enrollees.", number: number, tags: " comparison students ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter E (Graduation Requirements Learning)", number: number, tags: " best practices ")
    end
  end
  Parameter.create(name: "Parameter F - ADMINISTRATIVE SUPPORT FOR EFFECTIVE INSTRUCTION", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present and/or cite policies on substitution or special arrangements whenever a faculty is on leave or on official business/time;", number: number, tags: "")
      Line.create(name: "Present and/or cite policies on giving awards and/or recognition of faculty and students with outstanding achievements; and ", number: number, tags: "")
      Line.create(name: "Present and/or cite policies on supervision/monitoring and evaluation of faculty performance. ", number: number, tags: "")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the system of supervision of faculty performance. ", number: number, tags: "")
      Line.create(name: "Describe the faculty performance evaluation system.", number: number, tags: "")
      Line.create(name: "Describe the strategies to recognize students with exemplary performance/achievements.", number: number, tags: "")
      Line.create(name: "Describe Program outcomes in the last 3-5 years ", number: number, tags: "")
      Line.create(name: "Describe the graduates' employment pattern (e.g. employer, jobs taken, span of time for one to get employed, etc. ) ", number: number, tags: "")
      Line.create(name: "Describe feedback mechanism for employers regarding the graduates' performance. ", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present Evidences that faculty and students' have commendable performance as a result of administrative support.", number: number, tags: "")
      Line.create(name: "Present evidences that graduates of the program are employable.  ", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter F (Administrative Support for Effective Instruction)", number: number, tags: "")
    end
    Number.create(name: "EXTENT of COMPLIANCE with Team Recommendation for Area III – Curriculum and Instruction in the last survey visit.", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of Area III focusing on interventions done on the recommendations", number: number, tags: "")
      Line.create(name: "Present the Summary of Findings and Recommendations for Area III (Curriculum and Instruction) during the ________(Preliminary, 1st Survey, 2nd Survey, 3rd Survey, or 4th Survey ) in terms of ;", number: number, tags: "")
    end
  end
end


Area.create(name: 'Area IV. Support to Students', user_id: 5) do |area|
  Parameter.create(name: "Parameter A - STUDENT SERVICES PROGRAM (SSP)", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the BOR/BOT approved Student Services Program. ", number: number, tags: " bor bot ")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "A.1. Describe the Institution's Student Services Program ", number: number, tags: " student services ssp ")
      Line.create(name: "A.2. State the Objectives of the Student Services Program", number: number, tags: " objectives ssp ")
      Line.create(name: "A.3. Present the organizational Structure of the Student Services Program/Units ", number: number, tags: " structure ssp ")
      Line.create(name: "A.4. Describe the Profile of the Student Services Program Officials", number: number, tags: " profile student officials ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Cite instances or manifestations that students are knowledgeable and satisfied with the operations/services of the Student Services Program.", number: number, tags: " instances satisfieds services ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A (Student Services Program).", number: number, tags: " best practices ")
    end
  end
  Parameter.create(name: "Parameter B - STUDENT WELFARE", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present institutional guidelines on Information & Orientation of Students", number: number, tags: " information orientation ")
      Line.create(name: "Present the duly approved Student Handbook ", number: number, tags: " handbook hand book")
      Line.create(name: "Present the approves Guidelines and Counseling Program. ", number: number, tags: " guidelines counseling ")
      Line.create(name: "Present legal documents such as RA 9262 (Anti Violence Against Women & Children); Anti-Bullying Act; Guidelines on Drug Abuse Prevention and Control; RA 7877 (Anti Sexual Harassment Act); RA 9442 (Provision on Public Ridicule and Vilification against persons with disability).", number: number, tags: " ra9262 9262 7877 9442 ")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the Institution's Information & Orientation Services ", number: number, tags: " information orientation ")
      Line.create(name: "Describe the Guidelines Program and the Services; ", number: number, tags: " guidelines services ")
      Line.create(name: "Describe the Career and Job Placement Services; ", number: number, tags: " career job placement ")
      Line.create(name: "Describe the Economic Enterprise Development; and", number: number, tags: " economic enterprise ")
      Line.create(name: "Describe the Student Handbook Development.", number: number, tags: " handbook hand book ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present evidences that quality student welfare services are made available for all students.", number: number, tags: " welfare evidences")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter B (Student Welfare).", number: number, tags: " best practices student")
    end
  end
  Parameter.create(name: "Parameter C - STUDENT DEVELOPMENT", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present institutional policies and guidelines on recognition, accreditation, monitoring and evaluation of student organizations/projects and activities.", number: number, tags: " policies organization ")
      Line.create(name: "Present institutional guidelines on Student Grievance. ", number: number, tags: " grievance ")
      Line.create(name: "Present legal document on Campus Journalism. ", number: number, tags: " journalism ")
      Line.create(name: "Present institutional guidelines on student discipline.", number: number, tags: " discipline ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present in flow chart form the procedures for recognition/accreditation of student organizations. ", number: number, tags: " recognition organizations ")
      Line.create(name: "Present all duly approved Constitution and By Laws of Student Organizations.", number: number, tags: " laws constitution ")
      Line.create(name: "Present Sample Programs on Leadership Training including pictorials. ", number: number, tags: " leadership training pictorials ")
      Line.create(name: "Present in flow chart form procedure for student grievances. ", number: number, tags: " grievances ")
      Line.create(name: "Present in flow chart form the procedure in the publication of Yearbooks. ", number: number, tags: " yearbooks yearbook ")
      Line.create(name: "Prepare list of current recognized/accredited student organizations/ clubs/ societies/ councils and groups.", number: number, tags: " oraganizations organization club societies council ")
      Line.create(name: "Prepare list of co-curricular and extra-curricular conducted", number: number, tags: " co-curricular extra-curricular ")
      Line.create(name: "Awards/recognition received by students/students organizations in co-curricular and extra-curricular activities.", number: number, tags: " awards co-curricular extra-curricular organizations ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Cite evidences/manifestations that quality student development services are assured. ", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter C (Student Development). ", number: number, tags: " best practices ")
    end
  end
  Parameter.create(name: "Parameter D - INSTITUTIONAL STUDENT PROGRAMS and SERVICES ", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present institutional policies and guidelines on student, recruitment, selection, admission and retention. ", number: number, tags: " policies guidelines ")
      Line.create(name: "Present institutional policies and guidelines on wellness and healthy lifestyle. ", number: number, tags: " wellness healthy lifestyle ")
      Line.create(name: "Present legal documents such as RA 7277; RA 10121 and other related documents.", number: number, tags: " 7277 10121 ")
      Line.create(name: "Present institutional policies and guidelines on sports development programs. ", number: number, tags: " sports ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the institution's admission and retention policies and how these are Disseminated.", number: number, tags: " admission retention policies ")
      Line.create(name: "Present the summary of enrollment, transferees (incoming and outgoing), courses shifters, returning students, drop-outs and graduates per semester in the last 6 terms. ", number: number, tags: " summary enrollment ")
      Line.create(name: "Describe other Students Services ", number: number, tags: " sutende services ")
      Line.create(name: "Present the number of students per field of specialization (if applicable). ", number: number, tags: " specialization ")
      Line.create(name: "Describe policies and guidelines on academic scholarships, grants and other forms of financial assistance.", number: number, tags: " scholarship grants ")
      Line.create(name: "Describe the fund generation scheme for scholarships and grants.", number: number, tags: " fund scheme scholarship ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Cite evidences/manifestations that institutional programs and services help develop student's potentials.", number: number, tags: " programs services ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter D (Institutional Student Programs and Services).", number: number, tags: " best practices ")
    end
  end
  Parameter.create(name: "Parameter E - RESEARCH, MONITORING and EVALUATION ", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present institutional policies on research program on students affair and services. ", number: number, tags: " affair policies ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present completed researches on student affairs and services.", number: number, tags: " affairs services ")
      Line.create(name: "Cite evidences that research results and outputs are disseminated and utilized. ", number: number, tags: " evidences ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present evidences that research outputs are presented and published. ", number: number, tags: " research published ")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter E (Research, Monitoring and Evaluation).", number: number, tags: " best practices ")
    end
    Number.create(name: "XTENT of COMPLIANCE with the Team Recommendations for Area IV – Support to Students in the last Survey Visit.", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of Area IV focusing on Interventions done on the recommendations", number: number, tags: " iv compliance ")
      Line.create(name: "Present the Summary of Findings and Recommendations for Area IV (Support to Students) during the ______ (Preliminary, 1st Survey, 2nd Survey, 3rd Survey, or 4th Survey) in terms of;", number: number, tags: " summary findings recommendations ")
    end
  end
end


Area.create(name: 'Area V. Research', user_id: 6) do |area|
  Parameter.create(name: "Parameter A - PRIORITIES and RELEVANCE ", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the institution's approved Research Agenda ", number: number, tags: " research ")
      Line.create(name: "Present the duly approved Research Manual ", number: number, tags: " research manual ")
      Line.create(name: "Present the approved organizational structure of the Research Program ", number: number, tags: " structure ")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "The Institution's Research Program/Agenda for the program under survey. ", number: number, tags: "  ")
      Line.create(name: "Describe the congruence of the Institutional research agenda with regional and national priorities especially with concerned government agencies. ", number: number, tags: "")
      Line.create(name: "Describe the stakeholders' participation in the formulation of the Research Agenda. ", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that priority researches are identified, conducted and the results are published. ", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A (Priorities and Relevance). ", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter B - FUNDING and RESOURCES", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the Institution's approved budget for Research Development. ", number: number, tags: " budget ")
      Line.create(name: "Present the Research Fund allocation per College.", number: number, tags: " fund allocation ")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Actual expenditures for research of the Academic Unit in the last 3-5 years ", number: number, tags: "")
      Line.create(name: "Research Facilities, Equipment, ICT and Other Resources ", number: number, tags: " facilities ICT ")
      Line.create(name: "Research Personnel and other Support Services ", number: number, tags: "")
      Line.create(name: "Income derived from research-related outputs and activities", number: number, tags: " research-related ")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present/Show evidences that the Research Program/Unit is adequately funded.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter B (Funding and Other Resources). ", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter C - IMPLEMENTATION , MONITORING, EVALUATION and UTILIZATION of RESEARCH RESULTS/OUTPUTS", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the duly approved Intellectual Property Rights (IPR) ", number: number, tags: "")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "State policies and guidelines in the conduct of Research Activities. ", number: number, tags: "")
      Line.create(name: "State the Profile of the Research and Development Heads. ", number: number, tags: "")
      Line.create(name: "State the incentives granted to faculty researchers ", number: number, tags: "")
      Line.create(name: "State all completed researchers in the last 3-5 years ", number: number, tags: "")
      Line.create(name: "State all On-Going researchers", number: number, tags: "")
      Line.create(name: "State all Faculty researchers ", number: number, tags: "")
      Line.create(name: "State all Student researches ", number: number, tags: "")
      Line.create(name: "Name all Opportunities for Research Capability Building ", number: number, tags: "")
      Line.create(name: "Describe the Research monitoring and evaluation system (instruments used, evaluation results, etc.)", number: number, tags: "")
      Line.create(name: "Describe the utilization of research results/outputs (e.g., for institutional development, enhancement of instructional process, technology transfer, etc. )", number: number, tags: "")
      Line.create(name: "Describe the mechanism adopted to protect IPR and observance of research ethics among faculty and student researchers ", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present/Show evidences that implementation, monitoring, evaluation and research utilization outputs are effective ", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter C (Implementation, Monitoring , Evaluation and Utilization or Research Results/Outputs).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter D - PUBLICATION and DISSEMINATION", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present an approved and copyrighted Research Journal ", number: number, tags: " journal ")
      Line.create(name: "Present guidelines on paper presentations; journal publication outstanding research related to performance and patented outputs ", number: number, tags: "")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Name all modes of dissemination of results/outputs (Publication, Paper Presentation, Forum, etc.)", number: number, tags: " publication presentation forum ")
      Line.create(name: "State all published researches related to the Program.", number: number, tags: "")
      Line.create(name: "Describe the administrative support in research-related undertakings ", number: number, tags: "")
      Line.create(name: "Name all Research results disseminated/presented in for a,conference, symposia, etc", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present/Show evidences that research outputs are published in refereed journals, research outputs are utilized , patented, copyrighted and are commercialized. ", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter D (Publication and Dissemination) ", number: number, tags: "")
    end
    Number.create(name: "EXTENT of COMPLIANCE with the Team Recommendations for Area V – Research in the last Survey Visit. ", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of Area V focusing on interventions done on the recommendations ", number: number, tags: "")
      Line.create(name: "Present the Summary of Findings and Recommendations for Area V (Research) during the _____ (Preliminary, 1st Survey, 2nd Survey, 3rd Survey, or 4th Survey) in terms of; ", number: number, tags: "")
    end
  end
end



Area.create(name: 'Area VI. Extension and Community Involvement', user_id: 7) do |area|
  Parameter.create(name: "Parameter A - Priorities and Revelance", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the Institution's approved extension agenda", number: number, tags: " extension agenda ", indicator_name: "Present the Institution's approved Extension Agenda")
      Line.create(name: "Present the institution's approved extension manual", number: number, tags: " extension manual ", indicator_name: "Present the Institution's approved Extension Manual")
      Line.create(name: "Present the duly approved organizational structure of the extension program", number: number, tags: " program ", indicator_name: "Present the duly approved organizational structure of the Extension Program")
    end 
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the completion of the curricular/program and the extension projects/activities", number: number, tags: " completion ", indicator_name: "The extension projects and activities implemented are based on the results of the benchmark survey")
      Line.create(name: "Describe the process of the development of the institutional extension program agenda", number: number, tags: " process agenda ", indicator_name: "The extension projects and activities complement the curriculum of the Information Technology Education program under review.")
      Line.create(name: "Describe the congruence between the describe the stakeholder's participation in the formulation of the extension agenda", number: number, tags: " ", indicator_name: "A mutual exchange of resources and services between the College/academic Unit and the community is evident.")
      Line.create(name: "Describe the stakeholder's participation in the formulation of the extension agenda", number: number, tags: "", indicator_name: "Linkages with local, national, foreign, and non-governmental agencies are institutionalized.")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present/Show evidences that priority and relevant extension projects and activities are conducted", number: number, tags: " evidences ", indicator_name: "Priority and Relevant extension projects and activities are conducted.")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A (Priorities and Revelance)", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter B - PLANNING, IMPLEMENTATION, MONITORING and EVALUATION") do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Show the office where the extension program is managed. (pictorial with caption)", number: number, tags: " office ", indicator_name: "There is a distinct office that manages the Extension program") 
      Line.create(name: "Present approved extension instrument for monitoring and evaluation",number: number, tags: " instrument ", indicator_name: "Instruments for monitoring and evaluation are available.")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "State the profile of the extension program heads", number: number, tags: "", indicator_name: "The administration, faculty, students and other stakeholders of the College/academic Unit of Information Technology Education participate in the planning and organization of Extension Program.")
      Line.create(name: "Describe the participation of the administration, faculty, students, and stakeholders in the planning of extension projects/activities", number: number, tags: "", indicator_name: "The administration, faculty and students are involved in the implementation and dissemination of extension programs.")
      Line.create(name: "Name all Extension Projects Implemented by the Program under survey within the last 3-5 years", number: number, tags: "", indicator_name: "The extension projects and activities are serve varied clientele.")
      Line.create(name: "State the Research results utilized/adopted as Extension inputs for the Program", number: number, tags: "", indicator_name: "The conduct of extension projects and activities are sustainable.")
      Line.create(name: "Pool of Consultants/Experts", number: number, tags: " consultants experts ", indicator_name: "Technologies/new knowledge are disseminated to the target clientele through appropriate extension delivery systems.")
      Line.create(name: "List of Packaged Technologies", number: number, tags: " packaged technologies ", indicator_name: "The extension activities are documented in the form of: pamphlets; flyers; bulletins; newsletters; and electronic resources")
      Line.create(name: "Describe the feedback/evaluation mechanism from stakeholders/beneficiaries/clientele to improve the delivery of extension services.", number: number, tags: " feedback evaluation ", indicator_name: "Periodic monitoring and evaluation of extension projects and activities are conducted.")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present/Show evidences that the Extension Program is well-planned, implemented, monitored, evaluated and disseminated.", number: number, tags: "", indicator_name: "The Extension Program is well-planned, implemented, monitored, evaluated and disseminated.")
      Line.create(name: "Present manifestations that the Extension Program has contributed to the improvement on the quality of life of the target clientele/beneficiaries.", number: number, tags: "", indicator_name: "The Extension Program has contributed to the improvement on the quality of life of the target clientele/beneficiaries.")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter B (Planning, Implementation, Monitoring and Evaluation)", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter C - FUNDING AND OTHER SOURCES", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the approved budget for Extension.", number: number, tags: " budget ", indicator_name: "There is an approved and adequate budget for extension.")
      Line.create(name: "Show (pictorial with captions) facilities and equipment for the Extension Program", number: number, tags: " pictorial ", indicator_name: "There is a provision of facilities and equipment such as internet and other ICT resources; extension staff; supplies and materials; and workplace.")
      Line.create(name: "Present Institutional policies on deloading/equivalent teaching load for Extension.", number: number, tags: " deloading loading ")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present the budgetary allocation for the Academic Unitís Extension Program in the last 3-5 years.", number: number, tags: "", indicator_name: "The budget for the extension program is utilized as planned.")
      Line.create(name: "State the list of Extension linkages", number: number, tags: "", indicator_name: "Honoraria and other incentives (deloading, credit unit equivalent, etc.) to faculty involved in the extension work are granted.")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present manifestations that the Extension Program is adequately funded.", number: number, tags: "", indicator_name: "The Extension Program is adequately funded.")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter C (Funding and Other Resources).", number: number, tags: "")
    end 
  end   
  Parameter.create(name: "Parameter D - COMMUNITY INVOLVEMENT AND PARTICIPATION", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present strategies in the involvement of community, government and private agencies in the Extension Program.", number: number, tags: "", indicator_name: "Present strategies in the involvement of community, government and private agencies in the Extension Program.")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe community participation in the planning, implementation, monitoring and evaluation, fund-sourcing and technology/knowledge utilizations.", number: number, tags: "", indicator_name: "Describe community participation in the planning, implementation, monitoring and evaluation, fund-sourcing and technology/knowledge utilizations.")
      Line.create(name: "Name all activities to show that there is community participation and involvement in extension activities.", number: number, tags: "", indicator_name: "Name all activities to show that there is community participation and involvement in extension activities.")
      Line.create(name: "Describe the Program's commitment to the service of the community", number: number, tags: "", indicator_name: "Describe the Program's commitment to the service of the community")
      Line.create(name: "Show evidences that the College/Academic Unit is committed to the service and development of the community.", number: number, tags: "", indicator_name: "Show evidences that the College/Academic Unit is committed to the service and development of the community.")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present manifestations that there is wholesome coordination between the Extension Implementers and the target clientele/beneficiaries.", number: number, tags: "", indicator_name: "Present manifestations that there is wholesome coordination between the Extension Implementers and the target clientele/beneficiaries.")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter D (Community Involvement and Participation in the Institutionís Activities).", number: number, tags: "")
    end
    Number.create(name: "EXTENT of COMPLIANCE with the Team Recommendations for Area VI ñ Extension and   Community Involvement in the last Survey visit.", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of Area VI focusing on interventions done on the recommendations", number: number, tags: "")
      Line.create(name: "Present the Summary of Findings and Recommendations for Area VI (Extension and Community Involvement) during the ______ (Preliminary, 1st Survey, 2nd Survey, 3rd Survey, or 4th Survey) In terms of;", number: number, tags: "")
    end
  end
end


Area.create(name: 'Area VII. Library', user_id: 8) do |area|
  Parameter.create(name: "Parameter A - ADMINISTRATION", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the approved Organizational Structure of the Library", number: number, tags: "")
      Line.create(name: "Present the approved Library Manual", number: number, tags: "")
      Line.create(name: "Present the composition and functions of the Library Board/Committee", number: number, tags: "")
      Line.create(name: "Present the approved Library Development Plan", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the management, administration and supervision of the Library.", number: number, tags: "")
      Line.create(name: "Describe the Head Librarian in terms of qualifications, supervisory functions and participation in academic and administrative activities of the institution", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present/Show evidences that the goals and objectives of the Library are satisfactorily attained.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A (Administration).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter B – ADMINISTRATIVE STAFF", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the Plantilla of Personnel for the Library", number: number, tags: "")
      Line.create(name: "Present the appointment/special order (if any) of Library Personnel", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present  the Profile of the Library Personnel/Staff", number: number, tags: "")
      Line.create(name: "Present briefly the Outline of the Library Staff Development Program", number: number, tags: "")
      Line.create(name: "Present the compensation, fringe benefits and incentives in the last 3-5 years", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Describe briefly that all personnel holding librarian’s position are qualified.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter B (Administrative Staff).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter C – COLLECTION DEVELOPMENT, ORGANIZATION AND PRESERVATION", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the Institution’s Collection Development Policy", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the Institution’s policies and procedures, collection development, organization and preservation of library materials and resources.", number: number, tags: "")
      Line.create(name: "Present Inventory of Book collection and other learning resources in the Library.", number: number, tags: "")
      Line.create(name: "Illustrate Number of Book titles and volumes in the various fields of specialization (if applicable).", number: number, tags: "")
      Line.create(name: "Present available audio-visual and other non-print materials", number: number, tags: "")
      Line.create(name: "Present available functional audio-visual equipment", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present/Show evidences that the library core collection is adequate, updated and well-balanced.", number: number, tags: "")
      Line.create(name: "Present/Show evidences that the professional books, journals and electronic resources for the program are sufficient.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter C (Collection Development, Organization and Preservation).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter D – SERVICES AND UTILIZATION", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Describe the procedures in the utilization of the library resources and availment of personnel services.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present list of available physical facilities.", number: number, tags: "")
      Line.create(name: "Present list of available furniture/equipment/fixtures", number: number, tags: "")
      Line.create(name: "Present evidences of the extent utilization of the library clientele and end-users.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences and/or manifestations that library services are efficiently and effectively provided.", number: number, tags: "")
      Line.create(name: "Show manifestations that library users are satisfied with library services.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter D (Service and Utilization)", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter E – PHYSICAL SET-UP AND FACILITIES", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the location map of the Library with illustrations of the different sections.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the Library Set-up (e.g. location and site, space requirement for the different sections, etc.)", number: number, tags: "")
      Line.create(name: "Describe other provisions (e.g. security/control, IT software, multimedia equipment, etc.)", number: number, tags: "")
      Line.create(name: "Describe technology utilization in library operations such as:
      Integrated library system
      Access to electronic collections (e.g. books, e-journals, internet access)
      Access to online database and e-resources
      Institutional repositories", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present evidences/manifestations that the environment in the library is conducive to learning.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter E (Physical Set-up and Facilities).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter F – FINANCIAL SUPPORT", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "PRESENT THE APPROVED Annual Financial Plan of the Library.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Illustrate the Annual Library fund allocation in the last 3-5 years.", number: number, tags: "")
      Line.create(name: "Describe the Librarian and Staff’s participation in the Annual Budget Preparation", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that library financial support from fiduciary, supplemental and external funds is adequate.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practice as you can on Parameter F (Financial Support).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter G – LINKAGES", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Describe the library’s linkages with other agencies, foundations etc", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "State/Name All Linkages of the Library", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that library resource sharing and linkages are well-established.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter G (Linkages).", number: number, tags: "")
    end
    Number.create(name: "5. EXTENT of COMPLIANCE with the Team Recommendations for Area VII – Library in the last Survey visit.", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of Area VII focusing on interventions done on the recommendations", number: number, tags: "")
      Line.create(name: "Present the Summary of Findings and Recommendations for Area VII (Library) during the ______ (Preliminary, 1st Survey, 2nd Survey, 3rd Survey, or 4th Survey) In terms of;", number: number, tags: "")
    end
  end
end


Area.create(name: 'Area VIII. Physical Plant and Facilities', user_id: 9) do |area|
  Parameter.create(name: "Parameter A - CAMPUS", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the Site Development Plan of the Institution where the Academic Building is located.", number: number, tags: "")
      Line.create(name: "Present the Land Use Map of the Institution", number: number, tags: "")
      Line.create(name: "Present the Campus Development Plan", number: number, tags: "")
      Line.create(name: "Present the Certificate of Ownership and/or TCT", number: number, tags: "")
      Line.create(name: "Present the Institution’s Vicinity Map", number: number, tags: "")
      Line.create(name: "Present the Institution’s waste Management Program", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the site where the Program is situated, including geographical location, area, boundaries, etc.", number: number, tags: "")
      Line.create(name: "Describe how the Institution’s Waste Management Program is implemented.", number: number, tags: "")
      Line.create(name: "Describe in flow chart from the process of inspection/management of facilities of their proper utilization and upkeep.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that the campus is safe, well-maintained, clean, and properly landscape.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A (Campus).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter B – BUILDINGS", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present Certificate of Occupancy for the building.", number: number, tags: "")
      Line.create(name: "Present the approved Building Plan showing the floor areas of classrooms and other room used by the College.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present the Floor Plans of the Academic Unit indicating fire exits, location of fire-fighting equipment, stand pipes and sources of water supply, road network, provisions for people with disability, etc.", number: number, tags: "")
      Line.create(name: "Present in pictorial form with captions the following:
      1. entry and exit points;
      2. emergency exits;
      3. emergency fire escapes;
      4. corridors, doorways and alleys;
      5. provision for persons with disability;
      6. central signal and fire alarm system;
      7. fire extinguishers and other firefighting equipment;
      8. bulletin boards, display boards and waste disposal containers", number: number, tags: "")
      Line.create(name: "Present Building Insurance", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that the buildings and other facilities are safe, well-maintained and functional.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter B (Building).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter C – CLASSROOMS", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present inventory of classrooms as to the number of lights, chairs, furniture, equipment and other instructional materials.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present classrooms in pictorial from the size, the lightings, ventilations and conditioning.", number: number, tags: "")
      Line.create(name: "Present evidences that students cooperate in maintaining the cleanliness and orderliness of the classrooms.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences/manifestations that classrooms are adequate and conducive to learning.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter C (Classrooms).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter D – OFFICES, STAFF AND FUNCTION ROOMS", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present inventory of offices and staff rooms as to the number of lights, chairs furniture, equipment and other materials.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present offices and staff rooms in pictorial from properly marked and arranged relative to their functions.", number: number, tags: "")
      Line.create(name: "Present evidences that there is an internal and external communication system.", number: number, tags: "")
      Line.create(name: "Present policies on maintenance of administrative offices and other function rooms.", number: number, tags: "")
      Line.create(name: "List of service facilities (e.g. Guidance Clinic, Dormitories, etc.)", number: number, tags: "")
      Line.create(name: "List of function rooms (e.g. Board Room, A-V Room, etc.)", number: number, tags: "")
      Line.create(name: "ist of other rooms (e.g. Security Guards’ quarters, Storeroom, etc.)", number: number, tags: "")
      Line.create(name: "Describe the mechanism used to promote safety and security in campus, ensure cleanliness and orderliness and proper utilization and upkeep of physical resources, noise reduction during class and office hours.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show manifestations that offices and staff rooms are adequate and conducive to working environment.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter D (Offices and Staff Rooms).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter E – ASSEMBLY, ATHLETIC AND SPORTS FACILITIES", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form function rooms for holding meetings, conferences, convocations and other gatherings.", number: number, tags: "")
      Line.create(name: "Present in pictorial form facilities for athletic sports, cultural activities and military training.", number: number, tags: "")
      Line.create(name: "Present in pictorial form storage facilities for athletic sports and other curricular training equipment", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form the amenities for indoor facilities", number: number, tags: "")
      Line.create(name: "Present in pictorial form the amenities for outdoor facilities", number: number, tags: "")
      Line.create(name: "List Facilities for assemblies/conferences", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present and/or show in pictorial form that indoor and outdoor facilities are well-equipped and properly maintained.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter E (Assembly, Athletic and Sports Facilities).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter F – MEDICAL AND DENTAL CLINIC", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present Plantilla of Personnel for the Medical and Dental Unit", number: number, tags: "")
      Line.create(name: "Present approved Financial Plan of the Medical and Dental Unit", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form that the Medical and Dental Unit has the basic facilities, medical equipment, apparatuses and medicines.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences and /or data that the medical, dental clinic and its services are functional.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter F (Medical and Dental Clinic).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter G – STUDENT CENTER", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form that the Institution has a Student Center.", number: number, tags: "")
      Line.create(name: "Present approved policies on the Use of the Student Center.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form that the Student Center is fully equipped with supplies and materials.", number: number, tags: "")
      Line.create(name: "Present in pictorial form that the Student Center complies with the provisions of persons with disabilities", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences and/or manifestations that the Student Center is functional.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter G (Student Center).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter H – FOOD SERVICES/CANTEEN/CAFETERIA", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form that the Institution has provisions for Food Services/Canteen/Cafeteria.", number: number, tags: "")
      Line.create(name: "Present the policies and guidelines in the operations of Food Services/Canteen/Cafeteria", number: number, tags: "")
      Line.create(name: "Present Business and Sanitary Permits of Canteen Concessionaries", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe the operations of the Food Services/Canteen/Cafeteria", number: number, tags: "")
      Line.create(name: "List of Canteen Concessionaries", number: number, tags: "")
      Line.create(name: "Present in pictorial form the different canteen concessionaries equipped with all the cooking materials; cleaning supplies and other tools and utensils.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that the Food Services/Canteen/Cafeteria generates income for the Institution", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter H (Food Services/Canteen/Cafeteria).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter I – ACCREDITATION CENTER", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form that the Institution has an Accreditation Center.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form the equipment and fixtures in the Accreditation Center", number: number, tags: "")
      Line.create(name: "Present the organizational structure of the Accreditation Center.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Describe briefly that the Accreditation Center is well-equipped and managed.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter I (Accreditation Center).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter J – HOUSING (OPTIONAL)", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form the Dormitory/Housing provisions of the Institution.", number: number, tags: "")
      Line.create(name: "Present the policies and guidelines in the operations of the Dormitory/Housing.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present the staff profile or personnel managing the Dormitory/Housing", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present the financial income from the operations of the dormitory/housing.", number: number, tags: "")
      Line.create(name: "Discuss briefly how dormitories (inside and outside) are being managed to show that students are safe and protected.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter J (Housing)", number: number, tags: "")
    end
    Number.create(name: "EXTENT of COMPLIANCE with the Team Recommendations for Area VIII – Physical Plant and Facilities in the last Survey visit.", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of Area VIII focusing on interventions done on the recommendations", number: number, tags: "")
      Line.create(name: "Present the Summary of Findings and Recommendations for Area VIII (Physical Plant and Facilities) during the ______ (Preliminary, 1st Survey, 2nd Survey, 3rd Survey, or 4th Survey) In terms of;", number: number, tags: "")
    end
  end
end


Area.create(name: 'Area IX. Laboratories', user_id: 10) do |area|
  Parameter.create(name: "Parameter A - LABORATORIES, SHOPS/FACILITIES", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the approved building plan showing the location of laboratory rooms/shops utilized in the program and its conformity to RA 6541 – National Building Code of the Philippines & PD 856 – Code of Sanitation of the Philippines.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form the furniture, equipment, fire extinguishers, first aid kits, multimedia center, and other paraphernalia needed in the Laboratories.", number: number, tags: "")
      Line.create(name: "Present sample and in pictorial form Laboratory Operations Manual for the faculty and students.", number: number, tags: "")
      Line.create(name: "Present certification of Conformity to RA 6541 & PD 856 from the Head of the Physical Plant & Site Development Office.", number: number, tags: "")
      Line.create(name: "List all CHED-required Laboratories", number: number, tags: "")
      Line.create(name: "Prepare a Brief Description of each laboratory room (Natural Sciences. Computer/Technology, Shop, Speech, PE, etc.)", number: number, tags: "")
      Line.create(name: "List all Laboratory and Operation Manuals in actual use.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that laboratories and shops are well-equipped, functional and are conducive to learning.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A (Laboratories, Shops and Facilities).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter B - EQUIPMENT, SUPPLIES AND MATERIALS", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present in pictorial form the equipment, supplies and materials that are available in the laboratories and shops.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present a record of utilization of laboratory supplies and materials.", number: number, tags: "")
      Line.create(name: "List all Functional locally-improvised apparatuses.", number: number, tags: "")
      Line.create(name: "Make an Inventory of functional equipment based on CHED minimum requirements.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that laboratory equipment, supplies and materials are sufficient and wisely utilized.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter B (Equipment, Supplies and Materials).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter C - MAINTENANCE", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the staff profile assigned in the proper upkeep of the laboratory.", number: number, tags: "")
      Line.create(name: "Present in pictorial form the availability of a maintenance and Repair Unit.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe briefly the maintenance system of the laboratories and equipment", number: number, tags: "")
      Line.create(name: "List all Safety devices available", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that the laboratories and shops are functional and are properly maintained.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter C (Maintenance).", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter D - SPECIAL PROVISIONS", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Describe specific program requirements in accordance with policies/guidelines, CMO’s and other legal issuances.", number: number, tags: "")
      Line.create(name: "Present the approved Project Procurement management Plan (PPMP); Annual Procurement Plan where the laboratory equipment is listed for procurement.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present evidences that the laboratory equipment, supplies and materials are procured in accordance with RA 9184", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences that the special provisions in the CMO of the program are compiled with.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter D (Special Provisions)", number: number, tags: "")
    end
    Number.create(name: "5. EXTENT of COMPLIANCE with the Team Recommendations for Area IX – Laboratories in the last Survey visit.", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of Area IX focusing on interventions done on the recommendations", number: number, tags: "")
      Line.create(name: "Present the Summary of Findings and Recommendations for Area IX (Laboratories) during the ______ (Preliminary, 1st Survey, 2nd Survey, 3rd Survey, or 4th Survey) In terms of;", number: number, tags: "")
    end
  end
end


Area.create(name: 'Area X. Administration', user_id: 11) do |area|
  Parameter.create(name: "Parameter A - ORGANIZATION", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the BOR/BOT approved Organizational Structure of the Institution.", number: number, tags: "")
      Line.create(name: "Present the BOR/BOT approved Institution’s Code and/or Manual of Operations and indicate the pages where the functions of each office in the organizational chart are written.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present the Organizational Chart of the General Administration and Support Services Department indicating the different sections/units.", number: number, tags: "")
      Line.create(name: "Present the Manual of Operations where the functions, duties and responsibilities of administrative personnel in each office/unit are identified and carried out.", number: number, tags: "")
      Line.create(name: "Present Board Resolutions to show that the BOR/BOT is supportive with the growth and development of the Institution", number: number, tags: "")
      Line.create(name: "Present the List of the Members of the Institution/s Academic and Administrative Councils including the powers and functions of each Council.", number: number, tags: "")
      Line.create(name: "Describe the protocols in the flow of communications among and within units/departments.", number: number, tags: "")
      Line.create(name: "List the Institution’s Manual of Operations", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences/manifestations that the Institution has a well-designed and functional organizational structure.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter A (Organization) such as efficient & effective administrative operations that lead to customer satisfaction.", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter B - ACADEMIC ADMINISTRATION", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the Organizational Chart of the Academic Affairs Department indicating the different academic section/units.", number: number, tags: "")
      Line.create(name: "Present the Order/Designation of the Academic Dean; Department Chairs of the Program.", number: number, tags: "")
      Line.create(name: "Present the 201 File of the Academic Dean/Department Chairs and Faculty of the Program", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "List the Program Officials’ educational qualifications, academic ranks and length of service", number: number, tags: "")
      Line.create(name: "List the functions, duties and responsibilities of the Program Officials (line and staff) as indicated in the Institution's organizational structure.", number: number, tags: "")
      Line.create(name: "Present the Supervisory Program of the
      A. College Dean
      B. Department Chair/Coordinator", number: number, tags: "")
      Line.create(name: "Present the List of the Members of the Institution/s Academic and Administrative Councils including the powers and functions of each Council.", number: number, tags: "")
      Line.create(name: "Present the Composition of the Faculty Selection and Promotion Board", number: number, tags: "")
      Line.create(name: "Present evidences/manifestations that the Dean, the faculty and the administration work together for the improvement of the College.", number: number, tags: "")
      Line.create(name: "Present and describe the approved criteria and procedures in the selection and promotion of the most qualified faculty and staff.", number: number, tags: "")
      Line.create(name: "Present evidences that the Dean implements policies and procedures on internal operations of the College.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences/manifestations that the College is efficiently and effectively managed.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter B (Academic Administration) that creates proper learning environment.", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter C - STUDENT ADMINISTRATION", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the BOR/BOT Student Handbook/Manual.", number: number, tags: "")
      Line.create(name: "Present the Designation Orders of officials assigned in the Student Affairs.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe Student Administration in terms of: 
          admission and retention policies (regular students, transferees, course shifters and returning students)
          registration procedures
          school fees
          student’s academic loading
          residence, coursework, scholastic and graduation requirements
          examination and grading system
          dropping and adding of subjects
          scholarships/grants
          code of conduct/discipline
          others (please specify) _________________________", number: number, tags: "")
      Line.create(name: "Describe student’s, faculty and non-teaching staff’s participation in the planning and implementation of policies and activities concerning their welfare.", number: number, tags: "")
      Line.create(name: "Show evidences/manifestations that concerned officials, faculty and staff act promptly on requests, needs and problems of the students.", number: number, tags: "")
      Line.create(name: "Show evidences/manifestations that the administration, faculty, staff and students work harmoniously and maintain good relationship.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Discuss briefly how the institution manages an effective and functional Student Administration.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter C (Student Administration) such as efficient and effective support to student services", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter D - FINANCIAL MANAGEMENT", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present a copy of the Institution’s GAA (Gen. Appropriations Act) Budget.", number: number, tags: "")
      Line.create(name: "Present the Institution’s approved Financial Development Plan.", number: number, tags: "")
      Line.create(name: "Present the Designation Order of Officials assigned in the Financial Management Services.", number: number, tags: "")
      Line.create(name: "Present the Plantilla of Personnel/201 File of other personnel assigned in the Financial Services of the Institution.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "State the qualifications of the Institution’s Financial Management Staff.", number: number, tags: "")
      Line.create(name: "Describe the duties and responsibilities of the Financial Management Staff.", number: number, tags: "")
      Line.create(name: "Describe the Institution’s financial management in terms of:
      budget preparation
      budgetary allocation and utilization (e.g. general administrative operations, student services/activities, etc.)
      Income generation
      Utilization of sourced-out funds", number: number, tags: "")
      Line.create(name: "Budgetary Allocation and actual expenditures for the last 3-5 years.", number: number, tags: "")
      Line.create(name: "Describe the Use of Fiduciary Funds for the different student services/activities in the last 3-5 years.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Show evidences/manifestations that the institution has a sound and effective financial management system.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter D (Financial Management) such as efficient and effective operations, support of stakeholders and speedy and appropriate response to external and internal clientele.", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter E - SUPPLY MANAGEMENT", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present Plantilla of Personnel/201 File of staff assigned in the Procurement Management Office.", number: number, tags: "")
      Line.create(name: "Present Plantilla of Personnel/201 File of staff assigned in the Supply Management Office.", number: number, tags: "")
      Line.create(name: "Present composition, functions and responsibilities of the Bids and Awards Committee.", number: number, tags: "")
      Line.create(name: "Present composition, functions and responsibilities of the Procurement Office", number: number, tags: "")
      Line.create(name: "Present composition, functions and responsibilities of the Supply Management Office.", number: number, tags: "")
      Line.create(name: "Present the duly approved Project Procurement Management Plan of the Program being surveyed.", number: number, tags: "")
      Line.create(name: "Present the duly approved Annual Procurement Plan of the Institution (current).", number: number, tags: "")
      Line.create(name: "Present (If available) any Amendatory/Supplemental Procurement Plan.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Describe in flow chart form the procurement procedures through Public Bidding.", number: number, tags: "")
      Line.create(name: "Describe in flow chart form the procurement procedures through Alternative Mode of procurement.", number: number, tags: "")
      Line.create(name: "Describe in flow chart form the institution’s system of storing and warehousing of supplies, materials and equipment including system of repairs and maintenance program.", number: number, tags: "")
      Line.create(name: "Describe in flow chart form the institution’s system of storing and warehousing of supplies, materials and equipment including system of repairs and maintenance program.", number: number, tags: "")
      Line.create(name: "Describe in flow chart form the institution’s proper disposal of non-serviceable and condemnation of equipment and other materials.", number: number, tags: "")
      Line.create(name: "Present samples of publication of procurement needs in the Philippine Government Electronic Procurement System. (Phil-GEPS).", number: number, tags: "")
      Line.create(name: "Describe in flow chart form the institution’s proper disposal of non-serviceable and condemnation of equipment and other materials.Present samples of Notice to Proceed and approved Award of Projects related to the program.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present evidences/manifestations that the institution has an efficient and effective procurement supply management system.", number: number, tags: "")
      Line.create(name: "Present evidences/manifestations that institution’s procurement transactions are transparent.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter E (Supply Management) such as efficient and effective delivery of supply services.", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter F - RECORDS MANAGEMENT", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the duly approved Records Management Manual.", number: number, tags: "")
      Line.create(name: "Present Plantilla of Personnel/201 File of staff assigned in the Records Management Office.", number: number, tags: "")
      Line.create(name: "Present Plantilla of Personnel/201 File of staff assigned in the Human Resource Management Office.", number: number, tags: "")
      Line.create(name: "Present the Institution’s duly constituted Records Management Improvement Committee (RMIC) in compliance with NAP (National Archives of the Philippines) General Circular No. 1 s.2009 Article III, Rule 3 and its compliance to RA 9470.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "State the composition and services of the Record Management Office (RMO) in terms of records creation and generation; records transmission, records maintenance and use; records retention; records disposal and records disaster recovery.", number: number, tags: "")
      Line.create(name: "Describe the system procedures in the management of records in terms of transfer of records from different offices to RMO; request of records and records disposal.", number: number, tags: "")
      Line.create(name: "Describe in flow chart form the flow of communication from within and from outside.", number: number, tags: "")
      Line.create(name: "Describe the Institution’s records retention and disposal schedule of the Records Management Office.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present evidences/manifestations that the Institution has a commendable Records Management System.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter F (Records Management) such as efficient and effective records keeping.", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter G - INSTITUTIONAL PLANNING AND DEVELOPMENT", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the duly approved Strategic Development Plan (SDP)", number: number, tags: "")
      Line.create(name: "Present in brief outline the Institutional Strategic Development Plan.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "State the composition, functions and responsibilities of the Planning Office/Unit.", number: number, tags: "")
      Line.create(name: "Discuss the process of development of the Strategic Development Plan.", number: number, tags: "")
      Line.create(name: "Discuss the process of implementation of the Strategic Development Plan.", number: number, tags: "")
      Line.create(name: "Discuss the process of monitoring of the Strategic Development Plan.", number: number, tags: "")
      Line.create(name: "Discuss the process of evaluating of the Strategic Development Plan.", number: number, tags: "")
      Line.create(name: "Discuss the process of reviewing of the Strategic Development Plan.", number: number, tags: "")
      Line.create(name: "Discuss the process of updating of the Strategic Development Plan.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present evidences/manifestations that the SDO is congruent with the institution’s VMGO as well as the local, regional; and national development goals and agenda.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter G (Institutional Planning and Development) such as attainment of objectives, sustainability of operations and monitoring systems.", number: number, tags: "")
    end
  end
  Parameter.create(name: "Parameter H -  PERFORMANCE OF ADMINISTRATIVE PERSONNEL", area: area) do |parameter|
    Number.create(name: "SYSTEM-INPUTS AND PROCESSES", parameter: parameter) do |number|
      Line.create(name: "Present the BOR/BOT and Civil Service Commission (CSC) approved Strategic Management Performance System (SPMS) for Non-teaching Personnel.", number: number, tags: "")
      Line.create(name: "Present institutional policies in the conduct of SPMS.", number: number, tags: "")
      Line.create(name: "Present the duly designated Performance Management Team of the Institution.", number: number, tags: "")
    end
    Number.create(name: "IMPLEMENTATION", parameter: parameter) do |number|
      Line.create(name: "Present in consolidated form all Office Performance Commitment and Review (OPCR) of Units in the Administrative and Financial Services of the Institution.", number: number, tags: "")
      Line.create(name: "Present in consolidated form all Individual Performance Commitment and Review (IPCR) of the Non-teaching personnel", number: number, tags: "")
      Line.create(name: "Describe in flow chart form the Institution’s SPMS process of performance planning and commitment; performance monitoring and coaching; performance review and evaluation and performance rewarding and development planning.", number: number, tags: "")
      Line.create(name: "Present in Summarized List all Individual Performance Ratings per Unit/Division of the Non-teaching Personnel", number: number, tags: "")
      Line.create(name: "Present in flow chart form the SPMS process of appeal for individual performance ratings.", number: number, tags: "")
    end
    Number.create(name: "OUTCOMES", parameter: parameter) do |number|
      Line.create(name: "Present evidences/manifestations that the non-teaching personnel have commendable performances.", number: number, tags: "")
    end
    Number.create(name: "BEST PRACTICES", parameter: parameter) do |number|
      Line.create(name: "Cite as many best practices as you can on Parameter H (Performance of Administrative Personnel) such as innovativeness in the performance of duties", number: number, tags: "")
    end
    Number.create(name: "EXTENT of COMPLIANCE with the Team Recommendations for Area X – Administration in the last Survey visit.", parameter: parameter) do |number|
      Line.create(name: "Present the status of Compliance Matrix of Area X focusing on interventions done on the recommendations", number: number, tags: "")
      Line.create(name: "Present the Summary of Findings and Recommendations for Area X (Administration) during the ______ (Preliminary, 1st Survey, 2nd Survey, 3rd Survey, or 4th Survey) In terms of;", number: number, tags: "")
    end
  end
end


Area.create(name: 'Others')




