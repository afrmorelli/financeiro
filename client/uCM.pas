unit uCM;

interface

uses
  System.SysUtils, System.Classes, uCC, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.DB, Data.SqlExpr,midaslib,midas,
  Datasnap.DBClient, Datasnap.DSConnect;

type
  Tcm = class(TDataModule)
    sqlConexao: TSQLConnection;
    dspConexao: TDSProviderConnection;
    cdsUsuario: TClientDataSet;
    cdsTemp: TClientDataSet;
    cdsUsuarioid: TIntegerField;
    cdsUsuarionome: TWideStringField;
    cdsUsuariologin: TWideStringField;
    cdsUsuariosenha: TWideStringField;
  private
    FInstanceOwner: Boolean;
    FSMClient: TSMClient;
    function GetSMClient: TSMClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property SMClient: TSMClient read GetSMClient write FSMClient;

end;

var
  cm: Tcm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

constructor Tcm.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor Tcm.Destroy;
begin
  FSMClient.Free;
  inherited;
end;

function Tcm.GetSMClient: TSMClient;
begin
  if FSMClient = nil then
  begin
    SQLConnection1.Open;
    FSMClient:= TSMClient.Create(SQLConnection1.DBXConnection, FInstanceOwner);
  end;
  Result := FSMClient;
end;

end.
