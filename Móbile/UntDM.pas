unit UntDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB,
  FireDAC.Comp.Client,
  FMX.Objects,
  System.IOUtils
  ;

type
  TDM = class(TDataModule)
    FDConn: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure FDConnBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDM.FDConnBeforeConnect(Sender: TObject);
begin
    {$IFDEF MSWINDOWS}
      FDConn.Params.Values['DataBase'] :=
        'D:\Projetos\Mobile100G\Móbile\DataBase\mobile100.db';
    {$ELSE}
      FDConn.Params.Values['DataBase'] := TPath.Combine(TPath.GetDocumentsPath,'\mobile100.db');
      FDConn.Params.Values['OpenMode'] := 'ReadWrite';
    {$ENDIF}
end;

end.
