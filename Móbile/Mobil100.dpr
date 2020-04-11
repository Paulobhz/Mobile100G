program Mobil100;

uses
  System.StartUpCopy,
  FMX.Forms,
  UntMain in 'UntMain.pas' {frmMain},
  UntBaseLista in 'UntBaseLista.pas' {frmBaseLista},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntCadClientes in 'UntCadClientes.pas' {frmCadClientes},
  Mobile100.Lib in 'Utils\Mobile100.Lib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
