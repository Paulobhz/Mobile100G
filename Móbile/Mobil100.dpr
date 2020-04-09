program Mobil100;

uses
  System.StartUpCopy,
  FMX.Forms,
  UntMain in 'UntMain.pas' {frmMain},
  UntBaseLista in 'UntBaseLista.pas' {frmBaseLista},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntCadClientes in 'UntCadClientes.pas' {frmCadClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmBaseLista, frmBaseLista);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmCadClientes, frmCadClientes);
  Application.Run;
end.
