function varargout = ndim_plot_akharche(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Apoorva Kharche, akharche@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #: 38     Team #:13
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%In text citations for this GUI were not included because we found no
%justification for their inclusion as they were already enumerated in the
%Citations GUI.
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

% Last Modified by GUIDE v2.5 18-Apr-2015 13:32:27

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

aNames = cell(7,4);
aNames(1, 1:4) = {'Cost', 'cost', 0, 2000};
aNames(2, 1:4) = {'Toxicity', 'tox', 0, 500};
aNames(3, 1:4) = {'Goal Band Gap Energy', 'goaleg', 0, 10};
aNames(4, 1:4) = {'Relative Importance', 'relimp', 0, 100};
aNames(5, 1:4) = {'Minimum Use', 'minUse', 0, 100};
aNames(6, 1:4) = {'Total Required', 'total', 0, 1000};
aNames(7, 1:4) = {'None', 'none', 0, 0};

handles.data.xNames = aNames(1:6, :);
handles.data.yNames = aNames(1:6, :);
handles.data.zNames = aNames([1,2,7], :);
handles.data.attrNames = aNames;

xNames = handles.data.xNames;
yNames = handles.data.yNames;
zNames = handles.data.zNames;

set(handles.x_axis_pm, 'String', xNames(:,1));
set(handles.y_axis_pm, 'String', yNames(:,1));
set(handles.z_axis_pm, 'String', zNames(:,1));

setappdata(0, 'openGUI', @ndim_plot_akharche);

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
try
xNames = handles.data.xNames;
yNames = handles.data.yNames;
zNames = handles.data.zNames;
xstep = str2num(get(handles.x_axis_et, 'String'));
ystep = str2num(get(handles.y_axis_et, 'String'));
xitem = char(xNames(get(handles.x_axis_pm, 'Value'), 2));
yitem = char(yNames(get(handles.y_axis_pm, 'Value'), 2));
zitem = char(zNames(get(handles.z_axis_pm, 'Value'), 2));
recipe = getappdata(0, 'recipe');
plotType = @plot;
yvals = [];
xvals = [];
zvals = [];
if(~(isempty(xstep) || isempty(ystep)))
    yvals = ystep;
    zvals = zeros(length(ystep),length(xstep));
    xvals = xstep;
    for ctx = 1:length(xstep)
        recipe.(xitem) = xvals(ctx);
        for cty = 1:length(ystep)
            recipe.(yitem) = yvals(cty);
            recipe = DoubleMinAttr_sec38_team13(recipe.mats, 'cost', 'tox', recipe);
            if(isempty(recipe.(zitem)))
                errordlg('Something is wrong about this plot. Perhaps there are no values left to be evaluated by the program?');
            end
            zvals(cty,ctx) = recipe.(zitem);
        end
    end
    plotType = @surfc;
elseif(~isempty(xstep))
    yvals = linspace(0,0,length(xstep));
    zvals = yvals;
    xvals = xstep;
    for ct = 1:length(xvals)
        recipe.(xitem) = xvals(ct);
        recipe = DoubleMinAttr_sec38_team13(recipe.mats, 'cost', 'tox', recipe);
        yvals(ct) = recipe.(yitem);
        try
            zvals(ct) = recipe.(zitem);
        catch
            if(isempty(recipe.(zitem)))
                zvals = [];
            end
        end
    end
    plotType = @plot3;
elseif(ystep)
    xvals = linspace(0,0,length(ystep));
    zvals = xvals;
    yvals = ystep;
    for ct = 1:length(yvals)
        recipe.(yitem) = yvals(ct);
        recipe = DoubleMinAttr_sec38_team13(recipe.mats, 'cost', 'tox', recipe);
        xvals(ct) = recipe.(xitem);
        try
            zvals(ct) = recipe.(zitem);
        catch
            if(isempty(recipe.(zitem)))
                zvals = [];
            end
        end
    end
    plotType = @plot3;
else
    errordlg('Please define the range for at least one of the variables to plot');
end
if(isempty(zvals))
    customPlot_akharche_sec38_team13(@plot, handles.plot_ax, {}, {}, xvals, yvals);
else
    customPlot_akharche_sec38_team13(plotType, handles.plot_ax, {}, {}, xvals, yvals, zvals);
end
xlabel(xNames{get(handles.x_axis_pm, 'Value'), 1});
ylabel(yNames{get(handles.y_axis_pm, 'Value'), 1});
zlabel(zNames{get(handles.z_axis_pm, 'Value'), 1});
catch ME
    disp(ME.identifier);
    switch ME.identifier
        case 'MATLAB:surfc:NonMatrixInput'
            errordlg('Please ensure you are plotting more than a single point or line when giving two ranges to plot over');
        otherwise
            rethrow(ME)
    end
end

% --- Executes on button press in enterData_pb.
function enterData_pb_Callback(hObject, eventdata, handles)
% hObject    handle to enterData_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
enterData_akharche

% --- Executes on button press in clear_pb.
function clear_pb_Callback(hObject, eventdata, handles)
% hObject    handle to clear_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.plot_ax);

% --- Executes on button press in home_pb.
function home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close ndim_plot_akharche
nanohubGUI_sec38_team13


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in x_axis_pm.
function x_axis_pm_Callback(hObject, eventdata, handles)
% hObject    handle to x_axis_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns x_axis_pm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from x_axis_pm


% --- Executes during object creation, after setting all properties.
function x_axis_pm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_axis_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function x_axis_sl_Callback(hObject, eventdata, handles)
% hObject    handle to x_axis_sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function x_axis_sl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_axis_sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in y_axis_pm.
function y_axis_pm_Callback(hObject, eventdata, handles)
% hObject    handle to y_axis_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns y_axis_pm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from y_axis_pm


% --- Executes during object creation, after setting all properties.
function y_axis_pm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_axis_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function y_axis_sl_Callback(hObject, eventdata, handles)
% hObject    handle to y_axis_sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function y_axis_sl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_axis_sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in z_axis_pm.
function z_axis_pm_Callback(hObject, eventdata, handles)
% hObject    handle to z_axis_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns z_axis_pm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from z_axis_pm


% --- Executes during object creation, after setting all properties.
function z_axis_pm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_axis_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function z_axis_sl_Callback(hObject, eventdata, handles)
% hObject    handle to z_axis_sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function z_axis_sl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_axis_sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function y_axis_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y_axis_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function x_axis_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_axis_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function z_axis_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z_axis_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function x_axis_et_Callback(hObject, eventdata, handles)
% hObject    handle to x_axis_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_axis_et as text
%        str2double(get(hObject,'String')) returns contents of x_axis_et as a double



function y_axis_et_Callback(hObject, eventdata, handles)
% hObject    handle to y_axis_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y_axis_et as text
%        str2double(get(hObject,'String')) returns contents of y_axis_et as a double



function z_axis_et_Callback(hObject, eventdata, handles)
% hObject    handle to z_axis_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z_axis_et as text
%        str2double(get(hObject,'String')) returns contents of z_axis_et as a double
