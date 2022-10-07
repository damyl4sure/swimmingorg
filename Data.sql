/*It is also correct if students use 't' to represent TRUE (or 'f' to represent 'FALSE') in the code below*/

INSERT INTO Coach(FName, LName, Phone, EMail) VALUES
    ('Joe', 'Smith', '713-222-9413', 'joesmile_1061@gmail.com'),
    ('Jane', 'Smith', '713-222-9414', 'janesmile_1061@gmail.com'),
    ('Paul', 'Lam', '713-486-2011', 'paulkkk@hotmail.com'),
    ('Paulina', 'Hall', '832-486-1997', 'paulinathenice@yahoo.com'),
    ('Katrina', 'Bajaj', '832-117-2435', 'KatrinaBajaj@gmail.com');
     
INSERT INTO Caretaker(FName, LName, Phone, EMail) VALUES
    ('Azalea', 'Khan', '832-116-2992', 'theAKhan@gmail.com'),
    ('Joseph', 'Khan', '832-116-2993', 'theJKhan@gmail.com'),
    ('Jim', 'Khan', '832-116-2994', 'theJKhan2@gmail.com'),
    ('Katie', 'Johnson', '713-014-0090', 'KatieJohnson1010@yahoo.com'),
    ('Elizabeth', 'Johnson', '713-014-2090', 'EJohnson5111@yahoo.com');

INSERT INTO Level (LevelId, Level, Description) VALUES
    (1, 'Green', 'First Level'),
    (2, 'Blue', 'Second level'),
    (3, 'Yellow', 'Third level'),
    (4, 'Pink', 'Fourth level'),
    (5, 'Orange', 'Fifth level'),
    (6, 'Lime', 'Six level'),
    (7, 'Purple', 'Seventh level'),
    (8, 'Red', 'Eigth level'),
    (9, 'Brown', 'Ninth level'),
    (10, 'Black', 'Tenth level');

INSERT INTO Venue(Name, Address, City, State, ZipCode, Phone) VALUES
    ('UHCL', '2700 Bay Area Boulevard', 'Houston','Texas', 
        '77058', '281-283-3700'),
    ('CLHS', '3300 Bay Area Boulevard', 'Houston', 'Texas',
        '77059', '713-126-4544');
       
INSERT INTO Swimmer(FName, LName, Phone, EMail, JoinTime, 
    CurrentLevelId, Main_CT_Id, Main_CT_Relationship, Main_CT_Since) VALUES
    ('Bobby', 'Khan', '832-116-2992', 'theBKhan1@gmail.com',
        '2014-2-12', 3, 1, 'Mother', '2014-2-12'),
    ('Billy', 'Khan', '832-116-2992', 'theBKhan2@gmail.com',
        '2015-12-12', 2, 1, 'Mother', '2015-12-12'),
    ('Nina', 'Khan', '832-116-2992', 'theNinaKhan@gmail.com',
        '2016-5-12', 2, 2, 'Father', '2016-5-12'),
    ('Clara', 'Johnson', '713-222-1010', 'ClaraJohnson_11@yahoo.com',
        '2013-5-12', 3, 4, 'Mother', '2015-5-12'),
    ('Philip', 'Johnson', '713-222-1010', 'PhilipJohnson_108@yahoo.com',
        '2015-5-15', 2, 5, 'Mother', '2015-5-15');
         
INSERT INTO OtherCareTaker(SwimmerId, CT_Id, Relationship, Since) VALUES
    (1,2,'Uncle','2014-2-12'),
    (1,3,'Uncle','2014-2-12'),
    (2,3,'Uncle','2016-1-3'),
    (3,1,'Aunt','2016-5-12'),
    (3,3,'Adult Friend','2016-5-12'),
    (4,5,'Aunt','2016-1-12');  

INSERT INTO LevelHistory(SwimmerId, LevelId, StartDate) VALUES
    (1,2,'2014-7-15'),
    (2,1,'2015-12-12'),
    (2,2,'2016-4-15'),
    (3,1,'2016-5-12'),
    (4,2,'2014-6-1'),
    (4,3,'2015-10-2'),
    (5,1,'2015-5-15'),
    (5,2,'2016-3-15');
    
INSERT INTO LevelHistory(SwimmerId, LevelId, StartDate, Comment) VALUES
    (1,1,'2014-2-12','Good spirit'),
    (1,3,'2016-1-19','Fast time'),
    (3,2,'2016-7-12', 'Fast advance'),
    (4,1,'2013-5-12','Freestyle best');
     
INSERT INTO Meet(Title, Date, StartTime, EndTime, VenueId, CoachId) VALUES
    ('UHCL Open', '2016-3-3', '09:00:00', '16:00:00', 1, 1),
    ('Shell Trial', '2016-8-4', '08:00:00', '11:00:00', 2, 1);
        
INSERT INTO Event(Title, StartTime, EndTime, MeetId, LevelId) VALUES
    ('50M Butterfly', '09:10:00', '09:30:00', 1, 2),
    ('100M Freestyle', '09:40:00', '09:50:00', 1, 2),
    ('100M Butterfly', '10:10:00', '10:30:00', 1, 3),
    ('200M Freestyle', '10:40:00', '10:50:00', 1, 3),
    ('50M Butterfly', '09:10:00', '09:30:00', 2, 2),
    ('100M Freestyle', '09:40:00', '09:50:00', 2, 2),
    ('100M Butterfly', '10:10:00', '10:30:00', 2, 3),
    ('200M Freestyle', '10:40:00', '10:50:00', 2, 3);

INSERT INTO Participation(SwimmerId, EventId) VALUES(2,1);
INSERT INTO Participation(SwimmerId, EventId, Committed)
    VALUES(3,1,TRUE);
INSERT INTO Participation(SwimmerId, EventId, Committed, CommitTime, 
        Participated, Result, Comment, CommentCoachId)
    VALUES(5,1,TRUE,'2016-2-20 10:00:00', TRUE, 'Winner', 'Good!', 2);
INSERT INTO Participation(SwimmerId, EventId)
    VALUES(3,2);
INSERT INTO Participation(SwimmerId, EventId, Committed)
    VALUES(2,2,TRUE);
INSERT INTO Participation(SwimmerId, EventId, Committed, CommitTime, 
        Participated, Result, Comment, CommentCoachId)
    VALUES(5,2,TRUE,'2016-2-20 10:00:00', TRUE, 'Winner', 'Second winner', 2);
INSERT INTO Participation(SwimmerId, EventId)
    VALUES(1,3);
INSERT INTO Participation(SwimmerId, EventId, Committed)
    VALUES(4,3,TRUE);
INSERT INTO Participation(SwimmerId, EventId)
    VALUES(1,4);
INSERT INTO Participation(SwimmerId, EventId, Committed, CommitTime, 
        Participated, Result)
    VALUES(4,5,TRUE,'2016-1-15 12:00:00', TRUE, 'Runner up');
INSERT INTO Participation(SwimmerId, EventId)
    VALUES(2,5);
INSERT INTO Participation(SwimmerId, EventId, Committed)
    VALUES(3,5,TRUE);
INSERT INTO Participation(SwimmerId, EventId, Committed, CommitTime, 
        Participated, Result, Comment, CommentCoachId)
    VALUES(5,5,TRUE,'2016-3-20 10:00:00', TRUE, '1:12:20', 'Good!', 1);
INSERT INTO Participation(SwimmerId, EventId, Committed, CommitTime, 
        Participated, Result, Comment, CommentCoachId)
    VALUES(2,6,TRUE,'2016-3-9 10:00:00', TRUE, 'Good', 'Need to focus', 3);
INSERT INTO Participation(SwimmerId, EventId)
    VALUES(3,6);
INSERT INTO Participation(SwimmerId, EventId, Committed)
    VALUES(5,6,TRUE);
INSERT INTO Participation(SwimmerId, EventId)
    VALUES(1,7);
INSERT INTO Participation(SwimmerId, EventId, Committed)
    VALUES(4,7,TRUE);
INSERT INTO Participation(SwimmerId, EventId, Committed, CommitTime, 
        Participated, Result)
    VALUES(1,8,TRUE,'2016-1-21 12:00:00', TRUE, 'winner');
INSERT INTO Participation(SwimmerId, EventId)
    VALUES(4,8);
    

INSERT INTO V_TaskList(MeetId, Required, Description)    
    VALUES(1,FALSE,'UHCL meet volunteer tasks');
INSERT INTO V_TaskList(MeetId, Required, Description, Penalty, PenaltyAmt)    
    VALUES(2,TRUE,'Shell Trial meet volunteer tasks','3 credits', 0);
    
INSERT INTO V_Task(VTL_Id, Name, Comment, Num_V) 
    VALUES(1,'Officiating','Must be trained',2);
INSERT INTO V_Task(VTL_Id, Name, Num_V)
    VALUES(1,'Recording',3);
INSERT INTO V_Task(VTL_Id, Name)
    VALUES(1,'Diecting traffic');
INSERT INTO V_Task(VTL_Id, Name, Comment, Num_V)
    VALUES(2,'Officiating','Must be trained',3);
INSERT INTO V_Task(VTL_Id, Name, Num_V)
    VALUES(2,'Recording',2);
INSERT INTO V_Task(VTL_Id, Name)
    VALUES(2,'Diecting traffic');
    
INSERT INTO Commitment(CT_Id, VT_Id, CommitTime) VALUES
    (1,1,'2015-10-10 11:11:12'),
    (4,1,'2015-10-11 12:11:20'),
    (2,2,'2016-1-10 11:05:12'),
    (3,2,'2016-1-11 12:12:20'),
    (5,2,'2016-1-17 09:19:25'),
    (1,3,'2015-10-10 11:11:12');
    
INSERT INTO Commitment(CT_Id, VT_Id, CommitTime,CarriedOut,
        Comment, CommentCoachId) VALUES
    (1,4,'2016-05-11 11:47:22',TRUE,'Very dependable',1),
    (4,4,'2016-05-12 06:37:12',FALSE,'Sick and called',1),
    (5,4,'2016-05-12 06:37:12',TRUE,'Brought fruit',2);
INSERT INTO Commitment(CT_Id, VT_Id, CommitTime,Rescinded) VALUES
    (2,5,'2016-03-11 11:33:12',TRUE),
    (4,5,'2016-03-17 12:35:14',FALSE);
INSERT INTO Commitment(CT_Id, VT_Id, CommitTime) VALUES
    (1,5,'2016-05-11 11:47:22'),
    (5,6,'2016-06-11 09:15:22');


    