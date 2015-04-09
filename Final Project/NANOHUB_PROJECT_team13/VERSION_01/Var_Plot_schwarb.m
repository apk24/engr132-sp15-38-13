function varargout = Var_Plot_schwarb(varargin)
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

% Last Modified by GUIDE v2.5 06-Apr-2015 14:58:08

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
%data = varargin{1};
% Update handles structure
guidata(hObject, handles);

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
handles.data.auxatr1 = str2numIget(hObject,'String');
handles.data.auxatr1.name = handles.data.auxatr1(1);
handles.data.auxatr1. = handles.data.auxatr1(1);
guidata(hObject, handles);


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
handles.data.auxatr2 = str2numIget(hObject,'String');
guidata(hObject, handles);


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
handles.data.auxatr3 = str2numIget(hObject,'String');
guidata(hObject, handles);


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
handles.data.auxatr4 = str2numIget(hObject,'String');
guidata(hObject, handles);


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
enterData

% --- Executes on button press in generate_pb.
function generate_pb_Callback(hObject, eventdata, handles)
% hObject    handle to generate_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all

% --- Executes on button press in clear_pb.
function clear_pb_Callback(hObject, eventdata, handles)
% hObject    handle to clear_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear handles.plot_ax
guidata(hObject, handles)

% --- Executes on button press in home_pb.
function home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nanohubGUI_sec38_team13
close Var_Plot_schwarb

% --- Executes on button press in atr1_cb.
function atr1_cb_Callback(hObject, eventdata, handles)
% hObject    handle to atr1_cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of atr1_cb
atr1_cb = get(hObject,'Value')

guidata(hObject, handles)

% --- Executes on button press in atr2_cb.
function atr2_cb_Callback(hObject, eventdata, handles)
% hObject    handle to atr2_cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of atr2_cb
atr2_cb = get(hObject,'Value')
guidata(hObject, handles)

% --- Executes on button press in atr3_cb.
function atr3_cb_Callback(hObject, eventdata, handles)
% hObject    handle to atr3_cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of atr3_cb
atr3_cb = get(hObject,'Value')
guidata(hObject, handles)

% --- Executes on button press in atr4_cb.
function atr4_cb_Callback(hObject, eventdata, handles)
% hObject    handle to atr4_cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of atr4_cb
atr4_cb = get(hObject,'Value')
guidata(hObject, handles)
