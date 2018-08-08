unit uSM;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client;

type
  TSM = class(TDSServerModule)
    fdConexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function LimparString(Value: string): string;

  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TSM.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TSM.LimparString(Value: string): string;
var
  temp:string;
  i:integer;
begin
  temp:='';
  for i:=1 to length(Value) do
  begin
    if ((Value[i]<>'.') and (Value[i]<>'-')) then
    temp:=temp+Value[i];
  end;
  LimparString:=temp
end;


function TSM.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

