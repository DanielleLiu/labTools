%EDIT THIS COMMENT: INCLUDE A BREIF DESCRIPTION OF WHAT STUDY THIS IS
% ex - OG study: old subjects adapted abruptly

%The set commands populate the different fields of the contition info
% section of the GetIntoGUI. You should only need to edit the last input
% of the set commands or the iterations of the for loops.

% Define Name of group
handles.group='SL_BF';

% Define Condition numbers (maximum number of conditions is 15 as of 4/2015)
for cond = 1:6 %<-- edit this number
    set(handles.(['condition' num2str(cond)]),'string',num2str(cond))
end
% Define total number of conditions
set(handles.numofconds,'string','6') %<-- this should match the number above

% Define trial types. These descibe the general condition of the trial. For
% example, if the subject is walking overground or at an incline, it would
% be specified here. Types should only be difined for general conditions
% that require a separate baseline for bias removal. Note that even though 
% there may be a slow, fast, and medium baseline trial on the treadmill, 
% if only the medium baseline is used to remove a bias from other treadmill
% trials, then these can all be grouped into a general treadmill type.

%set trial types
for t=[1:6]
    set(handles.(['type' num2str(t)]),'string','TM') % for overground walking
end
% for t=[2:8 10]
%     set(handles.(['type' num2str(t)]),'string','TM') % for treadmill walking
% end

% Define condition names. These should be short but descriptive and should
% follow lab conventions, if possible. IMPORTANT: The condition that will 
% be used to remove a bias from all other trials of the same type MUST
% be named such that one of the type strings and the string �base� are 
% both included in the condition's name.
set(handles.condName1,'string','TM base')
set(handles.condName2,'string','Grad Adap')
set(handles.condName3,'string','Split')
set(handles.condName4,'string','Catch')
set(handles.condName5,'string','Late Adap')
set(handles.condName6,'string','Washout')

% Define condition descriptions. Be as descriptive as possible. Include 
% whatever information seems important to someone who is unfamiliar with 
% what you did, such as the number of strides and possibly the speeds the 
% belts were set at. 
set(handles.description1,'string','150 baseline')
set(handles.description2,'string','600 strides')
set(handles.description3,'string','150 strides 2:1, 1.5 m/s and 0.75 m/s')
set(handles.description4,'string','10 strides at 1.125 m/s')
set(handles.description5,'string','150 strides 2:1, 1.5 m/s and 0.75 m/s')
set(handles.description6,'string','450 strides baseline')

% Define (expected) trial numbers for each condition. Multiple numbers can 
% be set as '1:5', '1,2,3' or '4 5' but not �1-5�). These will most
% likely need edited on a per-subject basis. Numbers correspond to names of
% files generated by Vicon Nexus during experiment.
set(handles.trialnum1,'string','1')
set(handles.trialnum2,'string','2:3')
set(handles.trialnum3,'string','4')
set(handles.trialnum4,'string','5')
set(handles.trialnum5,'string','6:7')
set(handles.trialnum6,'string','8:9')