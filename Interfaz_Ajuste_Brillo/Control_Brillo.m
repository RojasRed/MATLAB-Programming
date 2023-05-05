function varargout = Control_Brillo(varargin)
% CONTROL_BRILLO MATLAB code for Control_Brillo.fig
%      CONTROL_BRILLO, by itself, creates a new CONTROL_BRILLO or raises the existing
%      singleton*.
%
%      H = CONTROL_BRILLO returns the handle to a new CONTROL_BRILLO or the handle to
%      the existing singleton*.
%
%      CONTROL_BRILLO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTROL_BRILLO.M with the given input arguments.
%
%      CONTROL_BRILLO('Property','Value',...) creates a new CONTROL_BRILLO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Control_Brillo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Control_Brillo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Control_Brillo

% Last Modified by GUIDE v2.5 14-Mar-2023 11:34:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Control_Brillo_OpeningFcn, ...
                   'gui_OutputFcn',  @Control_Brillo_OutputFcn, ...
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


% --- Executes just before Control_Brillo is made visible.
function Control_Brillo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Control_Brillo (see VARARGIN)

% Choose default command line output for Control_Brillo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Control_Brillo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Control_Brillo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.x_Brillo = get(hObject, 'value');   %Obtienee el valor de la barra en la que se encuentre cuando se mueve
guidata(hObject, handles);                  %Guarda los datos por handles.variable de manera global  
img = imread(char(handles.img_name));       %Muestra la imagen, mediante imread y char para convertir el string del array que un dato global para el tipo de dato
img_adjust = img + handles.x_Brillo;        %Ecuacion para ajuste de brillo
imshow(img_adjust);                         %Muestra la imgen resultante

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
contenido=cellstr(get(hObject,'String')); %returns popupmenu1 contents as cell array
select=get(hObject,'value');              %returns number selected item from popupmenu1  
handles.img_name = contenido(select);     %Retorna el string del array contenido
guidata(hObject, handles);                %Guarda los datos por handles.variable de manera global  
imshow(imread(char(handles.img_name)));   %Muestra la imagen, mediante imread y char para convertir el string del array para el tipo de dato
set(handles.slider1,'Value',0);           %Setea a 0 el valor de la barra 


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%Se repite el codigo del callback para que cuando se cree el objecto se
%ejecute para mostrar la imagen cuando inicie el programa, el valor inicial
%de la barra es 0 siempre que se ejecuta el programa
contenido=cellstr(get(hObject,'String'));
select=get(hObject,'value');
handles.img_name = contenido(select);
guidata(hObject, handles);
imshow(imread(char(handles.img_name)));

