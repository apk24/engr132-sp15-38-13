function varargout = Var_Plot_schwarb(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Broderick schwarb@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #:  38    Team #: 13
%
%  Assignment #: nanohubGUI_38_13
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: This GUI takes the data from enterData and
%  calculates the recipe for the user entered optional attributes. It then
%  plots the values.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%There are no in text citations in this GUI because not text is used that
%would require citation. Citations for prior art can be found in the
%citiations GUI.
% VAR_PLOT_SCHWARB MATLAB code for Var_Plot_schwarb.fig
%      VAR_PLOT_SCHWARB, by itself, creates a new VAR_PLOT_SCHWARB or raises the existing
%      singleton*.
%
%      H = VAR_PLOT_SCHWARB returns the handle to a new VAR_PLOT_SCHWARB or the handle to
%      the existing singleton*.
%
%      VAR_PLOT_SCHWARB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VAR_PLOT_SCHWARB.M with the given input arguments.
%
%      VAR_PLOT_SCHWARB('Property','Value',...) creates a new VAR_PLOT_SCHWARB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Var_Plot_schwarb_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Var_Plot_schwarb_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Var_Plot_schwarb

% Last Modified by GUIDE v2.5 20-Apr-2015 18:06:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Var_Plot_schwarb_OpeningFcn, ...
                   'gui_OutputFcn',  @Var_Plot_schwarb_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Var_Plot_schwarb is made visible.
function Var_Plot_schwarb_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Var_Plot_schwarb (see VARARGIN)

% Choose default command line output for Var_Plot_schwarb
handles.output = hObject;
% Update handles structure
handles.data.mats = getappdata(0, 'mats');
%disp(handles.data.mats)
handles.data.recipe = getappdata(0, 'recipe');
handles.oldData = getappdata(0,'Var_Plot_data');
handles.oldAtr1 = getappdata(0,'auxatr1');
handles.oldAtr2 = getappdata(0,'auxatr2');
handles.oldAtr3 = getappdata(0,'auxatr3');
handles.oldAtr4 = getappdata(0,'auxatr4');
if (isfield(handles,'oldData'))
    handles.recipe1 = getappdata(0,'recipe1');
    handles.recipe2 = getappdata(0,'recipe2');
    handles.recipe3 = getappdata(0,'recipe3');
    handles.recipe4 = getappdata(0,'recipe4');
end
if (isfield(handles,'oldAtr1'))
    set(handles.atr1_et,'String',num2str(handles.oldAtr1))
end
if (isfield(handles,'oldAtr2'))
    set(handles.atr2_et,'String',num2str(handles.oldAtr2))
end
if (isfield(handles,'oldAtr2'))
    set(handles.atr3_et,'String',num2str(handles.oldAtr3))
end
if (isfield(handles,'oldAtr3'))
    set(handles.atr4_et,'String',num2str(handles.oldAtr4))
end
handles.axesHandle = get(handles.plot_ax);
guidata(hObject, handles);

%This is a set of placeholder values until the other GUIs are ready for
%total coordination.
% UIWAIT makes Var_Plot_schwarb wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Var_Plot_schwarb_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;



function atr1_et_Callback(hObject, eventdata, handles)
% hObject    handle to atr1_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr1_et as text
%        str2double(get(hObject,'String')) returns contents of atr1_et as a double
handles.data.auxatr1.atr = str2num(get(hObject,'String'));
handles.data.auxatr1.name = ['Attribute 1'];%atrArray1(1);
numMat = length(handles.data.mats);
% for ct = 1: numMat
%     eval(['handles.data.mats(ct).' , handles.data.auxatr1.name , '= handles.data.auxatr1.atr(ct)']);
% end
handles.recipe1 = MinAttr(handles.data.mats,handles.data.auxatr1.atr,handles.data.recipe.goaleg,handles.data.recipe.minUse,handles.data.recipe.total);
guidata(hObject, handles);
setappdata(0, 'auxatr1',handles.data.auxatr1.atr);
setappdata(0,'recipe1',handles.recipe1)
%This gets the info from hObject and sends it to be minimized.

% --- Executes during object creation, after setting all properties.
function atr1_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr1_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atr2_et_Callback(hObject, eventdata, handles)
% hObject    handle to atr2_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr2_et as text
%        str2double(get(hObject,'String')) returns contents of atr2_et as a double
handles.data.auxatr2.atr = str2num(get(hObject,'String'));
handles.data.auxatr2.name = ['Attribute 2'];
numMat = length(handles.data.mats);
% for ct = 1: numMat
%     eval(['handles.data.mats(ct).' , handles.data.auxatr2.name , '= handles.data.auxatr2.atr(ct)']);
% end
handles.recipe2 = MinAttr(handles.data.mats,handles.data.auxatr2.atr,handles.data.recipe.goaleg,handles.data.recipe.minUse,handles.data.recipe.total);
guidata(hObject, handles);
setappdata(0,'recipe2',handles.recipe2)
setappdata(0, 'auxatr2',handles.data.auxatr2.atr)

%This gets the info from hObject and sends it to be minimized.
% --- Executes during object creation, after setting all properties.
function atr2_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr2_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atr3_et_Callback(hObject, eventdata, handles)
% hObject    handle to atr3_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr3_et as text
%        str2double(get(hObject,'String')) returns contents of atr3_et as a double
handles.data.auxatr3.atr = str2num(get(hObject,'String'));
handles.data.auxatr3.name = ['Attribute 3']; 
numMat = length(handles.data.mats);
% for ct = 1: numMat
%     eval(['handles.data.mats(ct).' , handles.data.auxatr3.name , '= handles.data.auxatr3.atr(ct)']);
% end
handles.recipe3 = MinAttr(handles.data.mats,handles.data.auxatr3.atr,handles.data.recipe.goaleg,handles.data.recipe.minUse,handles.data.recipe.total);
guidata(hObject, handles);
setappdata(0,'auxatr3',handles.data.auxatr3.atr);
setappdata(0,'recipe3',handles.recipe3)
%This gets the info from hObject and sends it to be minimized.

% --- Executes during object creation, after setting all properties.
function atr3_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr3_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function atr4_et_Callback(hObject, eventdata, handles)
% hObject    handle to atr4_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr4_et as text
%        str2double(get(hObject,'String')) returns contents of atr4_et as a double
handles.data.auxatr4.atr = str2num(get(hObject,'String'));
handles.data.auxatr4.name = ['Attribute 4'];
numMat = length(handles.data.mats);
% for ct = 1: numMat
%     eval(['handles.data.mats(ct).' , handles.data.auxatr4.name , '= handles.data.auxatr1.atr(ct)']);
% end
handles.recipe4 = MinAttr(handles.data.mats,handles.data.auxatr4.atr,handles.data.recipe.goaleg,handles.data.recipe.minUse,handles.data.recipe.total);
setappdata(0,'auxatr4',handles.data.auxatr4.atr);
setappdata(0,'recipe4',handles.recipe4)
guidata(hObject, handles);
%This gets the info from hObject and sends it to be minimized.

% --- Executes during object creation, after setting all properties.
function atr4_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr4_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in enterData_pb.
function enterData_pb_Callback(hObject, eventdata, handles)
% hObject    handle to enterData_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
enterData_akharche
%This calls the enterData GUI so that new data can be entered or old data
%can be edited.

% --- Executes on button press in generate_pb.
function generate_pb_Callback(hObject, eventdata, handles)
% hObject    handle to generate_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.plot_ax)
mats = handles.data.mats;
names = cell(length(mats));
recipeOne = linspace(0,0,length(mats));
recipeTwo = linspace(0,0,length(mats));
recipeThree = linspace(0,0,length(mats));
recipeFour = linspace(0,0,length(mats));
for ct=1:length(mats)
names(ct) = {handles.data.mats(ct).name};
end
namePlaceHolder = 1 : length(mats);
recipeZero = handles.data.recipe.ratios;
if (isfield(handles,'recipe1'))
recipeOne = handles.recipe1.ratios;
end
if (isfield(handles,'recipe2'))
recipeTwo = handles.recipe2.ratios;
end
if (isfield(handles,'recipe3'))
recipeThree = handles.recipe3.ratios;
end
if (isfield(handles,'recipe4'))
recipeFour = handles.recipe4.ratios;
end
if (handles.atr1_cb == 1)|(handles.atr2_cb == 1)|(handles.atr3_cb == 1)|(handles.atr4_cb == 1)
    if (handles.atr1_cb ~= 1)
        recipeOne = recipeOne * 0;
    end
    if (handles.atr2_cb ~= 1)
        recipeTwo = recipeTwo * 0;
    end
    if (handles.atr3_cb ~= 1)
        recipeThree = recipeThree * 0;
    end
    if (handles.atr4_cb ~= 1)
        recipeFour = recipeFour * 0;
    end
       recipeAg = [recipeOne',recipeTwo',recipeThree',recipeFour'];
    %plot(handles.recipe1,handles.data.mat);
    customPlot(@bar, handles.plot_ax, names, {}, namePlaceHolder, recipeAg);%plot(names,recipeOne,'black');
    title('Material Ratio by Attribute Value','Color','w','FontSize',13);
    ylabel('Material Ratio','FontSize',13,'Color','w');
    xlabel('Attribute Value','FontSize',13,'Color','w');
    legend('Attribute 1','Attribute 2','Attribute 3','Attribute 4');
    handles.legend = legend('Attribute 1','Attribute 2','Attribute 3','Attribute 4');
    set(handles.plot_ax,'YColor',[1 1 1]); % Change the right Axis's color to red
    set(handles.plot_ax,'XColor',[1 1 1]);
    set(handles.text1,'visible','off');
    %c = get(handles.plot_ax,'Color');
    %set(c,'value','w');
    hold on;
end
guidata(hObject, handles)

% if (handles.atr2_cb == 1)
%     %plot(handles.recipe2,handles.data.mat,'magenta');
%     customPlot(@bar, handles.plot_ax, names, {}, namePlaceHolder, recipeAg)%plot(names,recipeTwo,'magenta'); %Each of the selection structures only plots if the check boxes associated are 'on.'
%     title('Material Ratio by Attribute Value')
%     ylabel('Material Ratio')
%     xlabel('Attribute Value')  
%     hold on;
% end
% if (handles.atr3_cb == 1)
%     %plot(handles.recipe2,handles.data.mat,'red');
%     customPlot(@bar, handles.plot_ax, names, {}, namePlaceHolder, recipeAg)%plot(names,recipeThree,'red');
%     title('Material Ratio by Attribute Value')
%     ylabel('Material Ratio')
%     xlabel('Attribute Value')  
%     hold on;
% end
% if (handles.atr4_cb == 1)
%     %plot(handles.recipe4,handles.data.mat,'green')
%     customPlot(@bar, handles.plot_ax, names, {}, namePlaceHolder, recipeAg)%plot(names,recipeFour,'green');
%     title('Material Ratio by Attribute Value')
%     ylabel('Material Ratio')
%     xlabel('Attribute Value')
%     hold on;
% end
%  if ((handles.atr1_cb ~= 1)&(handles.atr2_cb ~= 1)&(handles.atr3_cb ~= 1)&(handles.atr4_cb ~= 1))
%      customPlot(@bar, handles.plot_ax, names, {}, namePlaceHolder, recipeZero, 'b')%plot(names,recipeZero);
%      title('Material Ratio by Attribute Value') %This is where the default data will be plotted.
%      ylabel('Material Ratio')
%      xlabel('Attribute Value')
%      hold on;
%  end
% hold off;

% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'Var_Plot_data',handles)
close all
%This exits the program

% --- Executes on button press in clear_pb.
function clear_pb_Callback(hObject, eventdata, handles)
% hObject    handle to clear_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.plot_ax);
set(handles.legend,'visible','off');
% set(handles.atr1_et,'String','Enter');
% set(handles.atr2_et,'String','Enter');
% set(handles.atr3_et,'String','Enter');
% set(handles.atr4_et,'String','Enter');
guidata(hObject, handles)
%This clears all text boxes and the axes for new data or a recombination.
% --- Executes on button press in home_pb.
function home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'Var_Plot_data',handles)
nanohubGUI_sec38_team13
close Var_Plot_schwarb
%This returns the program to the home screen.

% --- Executes on button press in atr1_cb.
function atr1_cb_Callback(hObject, eventdata, handles)
% hObject    handle to atr1_cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of atr1_cb
handles.atr1_cb = get(hObject,'Value')

guidata(hObject, handles)
%This is where the value of hObject gets stored in handles.

% --- Executes on button press in atr2_cb.
function atr2_cb_Callback(hObject, eventdata, handles)
% hObject    handle to atr2_cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of atr2_cb
handles.atr2_cb = get(hObject,'Value')
guidata(hObject, handles)
%This is where the value of hObject gets stored in handles.
% --- Executes on button press in atr3_cb.
function atr3_cb_Callback(hObject, eventdata, handles)
% hObject    handle to atr3_cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of atr3_cb
handles.atr3_cb = get(hObject,'Value')
guidata(hObject, handles)
%This is where the value of hObject gets stored in handles.
% --- Executes on button press in atr4_cb.
function atr4_cb_Callback(hObject, eventdata, handles)
% hObject    handle to atr4_cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of atr4_cb
handles.atr4_cb = get(hObject,'Value')
guidata(hObject, handles)
%This is where the value of hObject gets stored in handles.

% --- Executes on button press in help_pb.
function help_pb_Callback(hObject, eventdata, handles)
% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Var_Plot_help;
%This is where the help GUI is called.
