function varargout = Print_Recipe_shah213(varargin)
% PRINT_RECIPE_SHAH213 MATLAB code for Print_Recipe_shah213.fig
%      PRINT_RECIPE_SHAH213, by itself, creates a new PRINT_RECIPE_SHAH213 or raises the existing
%      singleton*.
%
%      H = PRINT_RECIPE_SHAH213 returns the handle to a new PRINT_RECIPE_SHAH213 or the handle to
%      the existing singleton*.
%
%      PRINT_RECIPE_SHAH213('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRINT_RECIPE_SHAH213.M with the given input arguments.
%
%      PRINT_RECIPE_SHAH213('Property','Value',...) creates a new PRINT_RECIPE_SHAH213 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Print_Recipe_shah213_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Print_Recipe_shah213_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Print_Recipe_shah213

% Last Modified by GUIDE v2.5 06-Apr-2015 14:05:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Print_Recipe_shah213_OpeningFcn, ...
                   'gui_OutputFcn',  @Print_Recipe_shah213_OutputFcn, ...
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


% --- Executes just before Print_Recipe_shah213 is made visible.
function Print_Recipe_shah213_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Print_Recipe_shah213 (see VARARGIN)

% Choose default command line output for Print_Recipe_shah213
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Print_Recipe_shah213 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Print_Recipe_shah213_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Toxicity_pb.
function Toxicity_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Toxicity_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Cost_pb.
function Cost_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Cost_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Both_pb.
function Both_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Both_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Print_pb.
function Print_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Print_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Clear_pb.
function Clear_pb_Callback(hObject, eventdata, handles)
% hObject    handle to Clear_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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
nanohubGUI_sec38_team13
close Print_Recipe_shah213


function Display_et_Callback(hObject, eventdata, handles)
% hObject    handle to Display_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Display_et as text
%        str2double(get(hObject,'String')) returns contents of Display_et as a double


% --- Executes during object creation, after setting all properties.
function Display_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Display_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in AddData_pb.
function AddData_pb_Callback(hObject, eventdata, handles)
% hObject    handle to AddData_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
enterData