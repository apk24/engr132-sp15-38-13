function varargout = enterData_akharche(varargin)
%ENTERDATA_AKHARCHE M-file for enterData_akharche.fig
%      ENTERDATA_AKHARCHE, by itself, creates a new ENTERDATA_AKHARCHE or raises the existing
%      singleton*.
%
%      H = ENTERDATA_AKHARCHE returns the handle to a new ENTERDATA_AKHARCHE or the handle to
%      the existing singleton*.
%
%      ENTERDATA_AKHARCHE('Property','Value',...) creates a new ENTERDATA_AKHARCHE using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to enterData_akharche_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      ENTERDATA_AKHARCHE('CALLBACK') and ENTERDATA_AKHARCHE('CALLBACK',hObject,...) call the
%      local function named CALLBACK in ENTERDATA_AKHARCHE.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help enterData_akharche

% Last Modified by GUIDE v2.5 18-Apr-2015 12:55:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @enterData_akharche_OpeningFcn, ...
    'gui_OutputFcn',  @enterData_akharche_OutputFcn, ...
    'gui_LayoutFcn',  [], ...
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


% --- Executes just before enterData_akharche is made visible.
function enterData_akharche_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for enterData_akharche
handles.output = hObject;
if isempty(getappdata(0, 'openGUI'))
    setappdata(0, 'openGUI', @nanohubGUI_sec38_team13);
end
mats = getappdata(0, 'mats');
recipe = getappdata(0, 'recipe');
if isempty(recipe)
    recipe = struct(...
        'ratios', linspace(0,0, length(mats)), ...
        'mats', mats, ...
        'total', 0, ...
        'minUse', 0, ...
        'cost', 0, ...
        'tox', 0, ...
        'relimp', 0, ...
        'goaleg', 1 ...
        );
    setappdata(0, 'recipe', recipe);
end
updateDisplay(hObject, handles, mats, recipe);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes enterData_akharche wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = enterData_akharche_OutputFcn(hObject, eventdata, handles)
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

% --- Executes on button press in home_pb.
function home_pb_Callback(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
save = questdlg('Would you like to save and process entered data?', 'Save', 'Save and Process', 'Don"t Save', 'Cancel');
switch save
    case 'Save and Process'
        [~, iserror] = saveRecipeData(hObject, handles);
        if(~iserror)
        close
        nanohubGUI_sec38_team13
        end
    case 'Don"t Save'
        close
        nanohubGUI_sec38_team13
    case 'Cancel'
end

% --- Executes on button press in close_pb.
function close_pb_Callback(hObject, eventdata, handles)
% hObject    handle to close_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[~, iserror] = saveRecipeData(hObject, handles);
if(~iserror)
    close
    openGUI = getappdata(0, 'openGUI');
    openGUI()
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



function matName_et_Callback(hObject, eventdata, handles)
% hObject    handle to matName_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of matName_et as text
%        str2double(get(hObject,'String')) returns contents of matName_et as a double


% --- Executes during object creation, after setting all properties.
function matName_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matName_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function size_et_Callback(hObject, eventdata, handles)
% hObject    handle to size_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of size_et as text
%        str2double(get(hObject,'String')) returns contents of size_et as a double


% --- Executes during object creation, after setting all properties.
function size_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cost_et_Callback(hObject, eventdata, handles)
% hObject    handle to cost_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cost_et as text
%        str2double(get(hObject,'String')) returns contents of cost_et as a double


% --- Executes during object creation, after setting all properties.
function cost_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cost_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tox_et_Callback(hObject, eventdata, handles)
% hObject    handle to tox_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tox_et as text
%        str2double(get(hObject,'String')) returns contents of tox_et as a double


% --- Executes during object creation, after setting all properties.
function tox_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tox_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eps_et_Callback(hObject, eventdata, handles)
% hObject    handle to eps_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eps_et as text
%        str2double(get(hObject,'String')) returns contents of eps_et as a double


% --- Executes during object creation, after setting all properties.
function eps_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eps_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beg_et_Callback(hObject, eventdata, handles)
% hObject    handle to beg_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beg_et as text
%        str2double(get(hObject,'String')) returns contents of beg_et as a double


% --- Executes during object creation, after setting all properties.
function beg_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beg_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qdeg_et_Callback(hObject, eventdata, handles)
% hObject    handle to qdeg_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qdeg_et as text
%        str2double(get(hObject,'String')) returns contents of qdeg_et as a double


% --- Executes during object creation, after setting all properties.
function qdeg_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qdeg_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in addData_pb.
function addData_pb_Callback(hObject, eventdata, handles)
% hObject    handle to addData_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mats = addMatData(hObject, handles);
recipe = getappdata(0, 'recipe');
updateDisplay(hObject, handles, mats, recipe);

% --- Executes on button press in help_pb.
function help_pb_Callback(hObject, eventdata, handles)
% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
enterData_help_sec38_team13;

% --- Executes on button press in clearAll_pb.
function clearAll_pb_Callback(hObject, eventdata, handles)
% hObject    handle to clearAll_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'mats', []);
setappdata(0, 'matStruct', struct());
recipe = struct(...
    'ratios', [0], ...
    'mats', [], ...
    'total', 0, ...
    'minUse', 0, ...
    'cost', 0, ...
    'tox', 0, ...
    'relimp', 0, ...
    'goaleg', 1 ...
    );
setappdata(0, 'recipe', recipe);
updateDisplay(hObject, handles, [], recipe);

% --- Executes on button press in del_pb.
function del_pb_Callback(hObject, eventdata, handles)
% hObject    handle to del_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    selected = get(handles.select_et, 'String');
    matNames = strsplit(selected, ',');
    confirm = questdlg(['Are you sure you want to delete ', selected, '?'], 'Confirm delete', 'Yes', 'No', 'No');
    if isequal(confirm , 'Yes')
        matStruct = getappdata(0, 'matStruct');
        for nameCell = matNames
            n = char(nameCell);
            matStruct = rmfield(matStruct, n);
        end
        setappdata(0, 'matStruct', matStruct);
        setappdata(0, 'mats', struct2array(matStruct));
        set(handles.select_et, 'String', '');
    end
catch ME
    errodlgWait_akharche('Please ensure that you have selected a valid set of materials. Please ensure that you have entered a comma separated list of the materials desired.', 'Invalid Input', 'modal');
    rethrow(ME);
end
saveRecipeData(hObject, handles);
updateDisplay(hObject, handles, getappdata(0, 'mats'), getappdata(0, 'recipe'));


function select_et_Callback(hObject, eventdata, handles)
% hObject    handle to select_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of select_et as text
%        str2double(get(hObject,'String')) returns contents of select_et as a double


% --- Executes during object creation, after setting all properties.
function select_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function goal_et_Callback(hObject, eventdata, handles)
% hObject    handle to goal_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of goal_et as text
%        str2double(get(hObject,'String')) returns contents of goal_et as a double


% --- Executes during object creation, after setting all properties.
function goal_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to goal_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function minUse_et_Callback(hObject, eventdata, handles)
% hObject    handle to minUse_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of minUse_et as text
%        str2double(get(hObject,'String')) returns contents of minUse_et as a double


% --- Executes during object creation, after setting all properties.
function minUse_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to minUse_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function total_et_Callback(hObject, eventdata, handles)
% hObject    handle to total_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of total_et as text
%        str2double(get(hObject,'String')) returns contents of total_et as a double


% --- Executes during object creation, after setting all properties.
function total_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to total_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function matName_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matName_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function size_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function cost_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cost_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function tox_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tox_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function eps_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eps_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function exit_pb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to exit_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function home_pb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to home_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function close_pb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to close_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function beg_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beg_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function qdeg_st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qdeg_st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function addData_pb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to addData_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function help_pb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to help_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes during object creation, after setting all properties.
function clearAll_pb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to clearAll_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function del_pb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to del_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function updateDisplay(hObject, handles, mats, recipe)
numMats = length(mats);
matName = cell(numMats);
r = cell(numMats);
cost = cell(numMats);
tox = cell(numMats);
eps = cell(numMats);
beg = cell(numMats);
qdeg = cell(numMats);
for ct = 1:numMats
    matName(ct) = {mats(ct).name};
    r(ct) = {mats(ct).r};
    cost(ct) = {mats(ct).cost};
    tox(ct) = {mats(ct).tox};
    eps(ct) = {mats(ct).eps};
    beg(ct) = {mats(ct).beg};
    qdeg(ct) = {mats(ct).qdeg};
end
set(handles.matName_st, 'String', matName);
set(handles.cost_st, 'String', cost);
set(handles.tox_st, 'String', tox);
set(handles.eps_st, 'String', eps);
set(handles.beg_st, 'String', beg);
set(handles.qdeg_st, 'String', qdeg);
set(handles.size_st, 'String', r);
if isempty(recipe.mats)
    nameCell = {};
else
nameCell = {recipe.mats.name};
end
nameString = strjoin(nameCell, ',');
set(handles.select_et, 'String', nameString);

set(handles.goal_et, 'String', num2str(recipe.goaleg));
set(handles.minUse_et, 'String', num2str(recipe.minUse));
set(handles.total_et, 'String', num2str(recipe.total));

set(handles.ratio_sl, 'Value', recipe.relimp);
% Update handles structure
guidata(hObject, handles);

function [recipe, iserror] =  saveRecipeData(hObject, handles)
iserror = 1;
recipe = getappdata(0, 'recipe');
recipe.goaleg = str2num(get(handles.goal_et, 'String'));
recipe.minUse = str2num(get(handles.minUse_et, 'String'));
recipe.total = str2num(get(handles.total_et, 'String'));
recipe.relimp = get(handles.ratio_sl, 'Value');
try
matNames = strsplit(get(handles.select_et, 'String'), ',');
if isempty(char(matNames))
    recipe.mats = getappdata(0, 'mats');
else
    matStruct = getappdata(0, 'matStruct');
    mats = [];
    for nameCell = matNames
        n = char(nameCell);
        mats = [mats, matStruct.(n)];
    end
    recipe.mats = mats;
end
catch ME
    errodlgWait_akharche('Please ensure that you have selected a valid set of materials. Please ensure that you have entered a comma separated list of the materials desired.', 'Invalid Input', 'modal');
    rethrow(ME);
end
numMat = length(recipe.mats);
if(numMat < 2)
    errodlgWait_akharche('There are not enough materials entered. Please ensure there are atleast 2 materials.', 'Invalid Input', 'modal');
elseif(recipe.minUse*numMat > recipe.total)
    errodlgWait_akharche('It is impossible to maintain that level of minimum usage. Please ensure that the minimum usage does not exceed total requirement. Take care that 5 materials with a minimum usage of 2g, result in a minimum of 10g of product', 'Invalid Input', 'modal');
elseif(recipe.total <=0)
    errodlgWait_akharche('Total required product cannot be less than or equal to zero', 'Invalid Input', 'modal');
elseif(recipe.minUse < 0)
    errodlgWait_akharche('Minimum usage cannot be less than zero', 'Invalid Input', 'modal');
else
    recipe = DoubleMinAttr_sec38_team13(recipe.mats, 'cost', 'tox', recipe);
    iserror = 0;
    setappdata(0, 'recipe' ,recipe);
end

function [mats, iserror] = addMatData(hObject, handles)
iserror = 1;
matStruct = getappdata(0, 'matStruct');
uncheckedNewMatName = get(handles.matName_et, 'String');
[startIndex, endIndex] = regexp(uncheckedNewMatName, '\w*');
if ~isempty(startIndex)
    newMatName = uncheckedNewMatName(startIndex(1):endIndex(1));
    for ct = 2:length(startIndex)
        newMatName = [newMatName, '_', uncheckedNewMatName(startIndex(ct):endIndex(ct))];
    end
else
    newMatName = uncheckedNewMatName;
end
if length(newMatName) > 5
    newMatName = newMatName(1:5);
elseif isempty(newMatName)
    errodlgWait_akharche('Material must be named', 'Invalid Input', 'modal');
end
if(~isequal(newMatName, uncheckedNewMatName))
    uiwait(warndlg(['"', uncheckedNewMatName, '" has been changed to "', newMatName, '"'], 'Material Name automatically modified', 'modal'));
end
if(isfield(matStruct, newMatName))
    overwrite = questdlg(['Are you sure you want to overwrite the material ', newMatName], 'Overwrite?', 'Yes', 'No', 'No');
    if(isequal(overwrite, 'No'))
        error('User does not want to overwrite material');
    end
end
newMat = struct( ...
    'qdeg', str2num(get(handles.qdeg_et, 'String')), ...
    'beg', str2num(get(handles.beg_et, 'String')), ...
    'r', str2num(get(handles.size_et, 'String')), ...
    'eps', str2num(get(handles.eps_et, 'String')), ...
    'cost', str2num(get(handles.cost_et, 'String')), ...
    'tox', str2num(get(handles.tox_et, 'String')) ...
    );
newMatArray = struct2array(newMat);
if(any(newMatArray <= 0) || length(newMatArray) < 5)
    errodlgWait_akharche('Please ensure all values are positive real numbers.', 'Invalid Input', 'modal');
else
    newMat.name = newMatName;
%     mats = getappdata(0, 'mats');
%     mats = [mats, newMat];
    try
    matStruct.(newMatName) = newMat;
    catch err
        disp(err.identifier);
        switch(err.identifier)
            case 'MATLAB:AddField:InvalidFieldName'
                errodlgWait_akharche('The material name is invalid, please choose another material name');
            otherwise
                rethrow(err);
        end
    end
    mats = struct2array(matStruct);
    iserror = 0;
    setappdata(0, 'matStruct', matStruct);
    setappdata(0, 'mats', mats);
end

function errodlgWait_akharche(varargin)
uiwait(errordlg(varargin{:}));
