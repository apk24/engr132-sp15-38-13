function varargout = nanohubGUI_sec38_team13(varargin)
% NANOHUBGUI_SEC38_TEAM13 MATLAB code for nanohubGUI_sec38_team13.fig
%      NANOHUBGUI_SEC38_TEAM13, by itself, creates a new NANOHUBGUI_SEC38_TEAM13 or raises the existing
%      singleton*.
%
%      H = NANOHUBGUI_SEC38_TEAM13 returns the handle to a new NANOHUBGUI_SEC38_TEAM13 or the handle to
%      the existing singleton*.
%
%      NANOHUBGUI_SEC38_TEAM13('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NANOHUBGUI_SEC38_TEAM13.M with the given input arguments.
%
%      NANOHUBGUI_SEC38_TEAM13('Property','Value',...) creates a new NANOHUBGUI_SEC38_TEAM13 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nanohubGUI_sec38_team13_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nanohubGUI_sec38_team13_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help nanohubGUI_sec38_team13

% Last Modified by GUIDE v2.5 05-Apr-2015 18:02:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @nanohubGUI_sec38_team13_OpeningFcn, ...
                   'gui_OutputFcn',  @nanohubGUI_sec38_team13_OutputFcn, ...
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


% --- Executes just before nanohubGUI_sec38_team13 is made visible.
function nanohubGUI_sec38_team13_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nanohubGUI_sec38_team13 (see VARARGIN)

% Choose default command line output for nanohubGUI_sec38_team13
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes nanohubGUI_sec38_team13 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nanohubGUI_sec38_team13_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in exit_pb.
function exit_pb_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in RashidGUI_pb.
function RashidGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to RashidGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in YashGUI_pb.
function YashGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to YashGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BrodyGUI_pb.
function BrodyGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to BrodyGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ApoorvaGUI_pb.
function ApoorvaGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to ApoorvaGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in citations_pb.
function citations_pb_Callback(hObject, eventdata, handles)
% hObject    handle to citations_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in dataEntry_pb.
function dataEntry_pb_Callback(hObject, eventdata, handles)
% hObject    handle to dataEntry_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
