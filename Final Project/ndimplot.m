function varargout = ndimplot(varargin)
% NDIMPLOT MATLAB code for ndimplot.fig
%      NDIMPLOT, by itself, creates a new NDIMPLOT or raises the existing
%      singleton*.
%
%      H = NDIMPLOT returns the handle to a new NDIMPLOT or the handle to
%      the existing singleton*.
%
%      NDIMPLOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NDIMPLOT.M with the given input arguments.
%
%      NDIMPLOT('Property','Value',...) creates a new NDIMPLOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ndimplot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ndimplot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ndimplot

% Last Modified by GUIDE v2.5 02-Apr-2015 11:58:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ndimplot_OpeningFcn, ...
                   'gui_OutputFcn',  @ndimplot_OutputFcn, ...
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


% --- Executes just before ndimplot is made visible.
function ndimplot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ndimplot (see VARARGIN)

% Choose default command line output for ndimplot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ndimplot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ndimplot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
