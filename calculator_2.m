function varargout = calculator_2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @calculator_2_OpeningFcn, ...
    'gui_OutputFcn',  @calculator_2_OutputFcn, ...
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
function calculator_2_OpeningFcn(hObject, ~, handles, varargin)
handles.textoutput = hObject;

guidata(hObject, handles);

function varargout = calculator_2_OutputFcn(~, ~, handles) %#ok<*DEFNU>
varargout{1} = handles.textoutput;


function minus_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'-');
set(handles.input,'String',str);

function plus_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'+');
set(handles.input,'String',str);

function division_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'/');
set(handles.input,'String',str);
function multiplication_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'*');
set(handles.input,'String',str);

function one_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'1');
set(handles.input,'String',str);

function four_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'4');
set(handles.input,'String',str);

function seven_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'7');
set(handles.input,'String',str);

function two_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'2');
set(handles.input,'String',str);

function three_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'3');
set(handles.input,'String',str);

function five_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'5');
set(handles.input,'String',str);

function six_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'6');
set(handles.input,'String',str);

function eight_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'8');
set(handles.input,'String',str);

function zero_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'0');
set(handles.input,'String',str);

function nine_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'9');
set(handles.input,'String',str);

function rightbracket_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,')');
set(handles.input,'String',str);

function leftbracket_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'(');
set(handles.input,'String',str);

function decimal_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'.');
set(handles.input,'String',str);

function solve_Callback(~, ~, handles)
str=get(handles.input,'String');
degrad = get(handles.DegreeButton,'Value');
if degrad==1
    str = strrep(str,'sin(','sind(');
    str = strrep(str,'cos(','cosd(');
    str = strrep(str,'tan(','tand(');
    str = strrep(str,'cot(','cotd(');
    str = strrep(str,'sinh(','sinhd(');
    str = strrep(str,'cosh(','coshd(');
    str = strrep(str,'tanh(','tanhd(');
    str = strrep(str,'coth(','cothd(');
    str = strrep(str,'sec(','secd(');
    str = strrep(str,'csc(','cscd(');
    str = strrep(str,'asin(','asind(');
    str = strrep(str,'acos(','acosd(');
    str = strrep(str,'atan(','atand(');
    str = strrep(str,'acot(','acotd(');
    str = strrep(str,'asec(','asecd(');
    str = strrep(str,'acsc(','acscd(');
    str = strrep(str,'asinh(','asinhd(');
    str = strrep(str,'acosh(','acoshd(');
    str = strrep(str,'atanh(','atanhd(');
    str = strrep(str,'acoth(','acothd(');
end
str=eval(str);
set(handles.input,'String',str);

function clear_Callback(~, ~, handles)
set(handles.input,'String','');

function backspace_Callback(~, ~, handles)
str=get(handles.input,'String');
str=str(1:end-1);
set(handles.input,'String',str);

function uipanel4_ResizeFcn(~, ~, ~)
function pushbutton23_Callback(~, ~, ~)

function Trigonometry_Callback(~, ~, handles)
set (handles.ScientificPanel,'Visible','off');
set(handles.TrigonometryPanel, 'Visible', 'on');

function sin_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'sin(');
set(handles.input,'String',str);

function arcsin_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'asin(');
set(handles.input,'String',str);

function cot_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'cot(');
set(handles.input,'String',str);

function tan_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'tan(');
set(handles.input,'String',str);

function cos_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'cos(');
set(handles.input,'String',str);

function sinh_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'sinh(');
set(handles.input,'String',str);

function arccos_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'acos(');
set(handles.input,'String',str);

function coth_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'coth(');
set(handles.input,'String',str);

function tanh_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'tanh(');
set(handles.input,'String',str);

function cosh_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'cosh(');
set(handles.input,'String',str);

function sec_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'sec(');
set(handles.input,'String',str);

function arctan_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'atan(');
set(handles.input,'String',str);

function arccsc_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'acsc(');
set(handles.input,'String',str);

function arcsec_Callback(~, ~, handles)

str=get(handles.input,'String');
str=strcat(str,'asec(');
set(handles.input,'String',str);

function csc_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'csc(');
set(handles.input,'String',str);

function arcsinh_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'asinh(');
set(handles.input,'String',str);

function arccot_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'acot(');
set(handles.input,'String',str);

function arccoth_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'acoth(');
set(handles.input,'String',str);

function arctanh_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'atanh(');
set(handles.input,'String',str);

function arccosh_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'acosh(');
set(handles.input,'String',str);

function pi_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'pi');
set(handles.input,'String',str);

function i_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'i');
set(handles.input,'String',str);

function DegreeButton_Callback(~, ~, ~)

function exptavan_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'exp(');
set(handles.input,'String',str);

function tavan_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'.^(');
set(handles.input,'String',str);

function sqrt_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'sqrt(');
set(handles.input,'String',str);

function log_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'log10 (');
set(handles.input,'String',str);

function abs_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'abs(');
set(handles.input,'String',str);

function inf_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'inf');
set(handles.input,'String',str);

function comma_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,',');
set(handles.input,'String',str);

function x_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'x');
set(handles.input,'String',str);

function integral_Callback(~, ~, handles)
str=get(handles.input,'String');
syms x;
f = eval(str);
f2=figure('Name','Integral');
out = string(int(f,'x'));
text(0.5,0.5,out);

function b_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'b');
set(handles.input,'String',str);

function z_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'z');
set(handles.input,'String',str);

function ceil_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'ceil(');
set(handles.input,'String',str);

function floor_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'floor(');
set(handles.input,'String',str);

function y_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strcat(str,'y');
set(handles.input,'String',str);

function LEU_Callback(~, ~, handles)
str=get(handles.input,'String');
str=strrep(str,"=","==");
out=split(str,",");
syms x y z
out1=eval(out(1));
out2=eval(out(2));
out3=eval(out(3));
[A,B]=equationsToMatrix([out1,out2,out3],[x,y,z]);
output = linsolve(A,B);
f4=figure();
text(0.5,0.5,"x = "+string(output(1)) + " , " +"y = "+string(output(2)) + " , " + "z = "+string(output(3)));

function diff_Callback(~, ~, handles)
str=get(handles.input,'String');
syms x;
out1=extractBefore(str,",");
out2=extractAfter(str,",");
a=eval(out1);
b=eval(out2);
f3=figure();
output = string (diff(a,b));
text(0.5,0.5,output);

function Scientific_Callback(~, ~, handles)
set (handles.TrigonometryPanel,'Visible','off');
set(handles.ScientificPanel, 'Visible', 'on');

function none_Callback(~, ~, handles)
set (handles.TrigonometryPanel,'Visible','off');
set(handles.ScientificPanel, 'Visible', 'off');

function plot_Callback(~, ~, handles)
str=get(handles.input,'String');
f1=figure('Name','Plot');
x = [0:0.0001:10];
y=eval(str);
plot(x,y);


function pushbutton70_Callback(~, ~, handles)

str=get(handles.input,'String');
str=strcat(str,'=');
set(handles.input,'String',str);
