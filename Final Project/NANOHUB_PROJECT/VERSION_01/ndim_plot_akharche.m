function varargout = ndim_plot_akharche(varargin)
% NDIM_PLOT_AKHARCHE MATLAB code for ndim_plot_akharche.fig
%      NDIM_PLOT_AKHARCHE, by itself, creates a new NDIM_PLOT_AKHARCHE or raises the existing
%      singleton*.
%
%      H = NDIM_PLOT_AKHARCHE returns the handle to a new NDIM_PLOT_AKHARCHE or the handle to
%      the existing singleton*.
%
%      NDIM_PLOT_AKHARCHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NDIM_PLOT_AKHARCHE.M with the given input arguments.
%
%      NDIM_PLOT_AKHARCHE('Property','Value',...) creates a new NDIM_PLOT_AKHARCHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ndim_plot_akharche_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ndim_plot_akharche_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ndim_plot_akharche

% Last Modified by GUIDE v2.5 06-Apr-2015 15:02:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ndim_plot_akharche_OpeningFcn, ...
                   'gui_OutputFcn',  @ndim_plot_akharche_OutputFcn, ...
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


% --- Executes just before ndim_plot_akharche is made visible.
function ndim_plot_akharche_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ndim_plot_akharche (see VARARGIN)

% Choose default command line output for ndim_plot_akharche
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ndim_plot_akharche wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ndim_plot_akharche_OutputFcn(hObject, eventdata, handles) 
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
close all

% --- Executes on button press in generate_pb.
function generate_pb_Callback(hObject, eventdata, handles)
% hObject    handle to generate_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in enterData_pb.
function enterData_pb_Callback(hObject, eventdata, handles)
% hObject    handle to enterData_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
enterData

% --- Executes on button press in clear_pb.
function clear_pb_Callback(hObject, eventdata, handles)
% hObject    handle to clear_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in home_pb.
function home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close ndim_plot_akharche
nanohubGUI_sec38_team13
