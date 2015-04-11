function varargout = enterData(varargin)
% ENTERDATA MATLAB code for enterData.fig
%      ENTERDATA, by itself, creates a new ENTERDATA or raises the existing
%      singleton*.
%
%      H = ENTERDATA returns the handle to a new ENTERDATA or the handle to
%      the existing singleton*.
%
%      ENTERDATA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ENTERDATA.M with the given input arguments.
%
%      ENTERDATA('Property','Value',...) creates a new ENTERDATA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before enterData_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to enterData_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help enterData

% Last Modified by GUIDE v2.5 11-Apr-2015 13:43:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @enterData_OpeningFcn, ...
                   'gui_OutputFcn',  @enterData_OutputFcn, ...
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


% --- Executes just before enterData is made visible.
function enterData_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to enterData (see VARARGIN)

% Choose default command line output for enterData
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes enterData wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = enterData_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function numMat_et_Callback(hObject, eventdata, handles)
% hObject    handle to numMat_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numMat_st as text
%        str2double(get(hObject,'String')) returns contents of numMat_st as a double
handles.data.nuMat = str2numIget(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function numMat_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numMat_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function size_et_Callback(hObject, eventdata, handles)
% hObject    handle to size_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of size_st as text
%        str2double(get(hObject,'String')) returns contents of size_st as a double
handles.data.atr1 = str2numIget(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function size_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cost_et_Callback(hObject, eventdata, handles)
% hObject    handle to cost_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cost_st as text
%        str2double(get(hObject,'String')) returns contents of cost_st as a double
handles.data.atr2 = str2numIget(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function cost_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cost_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tox_et_Callback(hObject, eventdata, handles)
% hObject    handle to tox_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tox_st as text
%        str2double(get(hObject,'String')) returns contents of tox_st as a double
handles.data.atr3 = str2numIget(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function tox_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tox_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eps_et_Callback(hObject, eventdata, handles)
% hObject    handle to eps_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eps_st as text
%        str2double(get(hObject,'String')) returns contents of eps_st as a double
handles.data.atr4 = str2numIget(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function eps_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eps_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all

% --- Executes on button press in home_pb.
function home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all
nanohubGUI_sec38_team13



% --- Executes on button press in close_pb.
function close_pb_Callback(hObject, eventdata, handles)
% hObject    handle to close_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close enterData



function beg_et_Callback(hObject, eventdata, handles)
% hObject    handle to beg_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beg_st as text
%        str2double(get(hObject,'String')) returns contents of beg_st as a double


% --- Executes during object creation, after setting all properties.
function beg_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beg_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qdeg_et_Callback(hObject, eventdata, handles)
% hObject    handle to qdeg_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qdeg_st as text
%        str2double(get(hObject,'String')) returns contents of qdeg_st as a double


% --- Executes during object creation, after setting all properties.
function qdeg_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qdeg_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ratio_sl_Callback(hObject, eventdata, handles)
% hObject    handle to ratio_sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function ratio_sl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ratio_sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in addData_pb.
function addData_pb_Callback(hObject, eventdata, handles)
% hObject    handle to addData_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
