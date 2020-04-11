unit UntBaseLista;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,

  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Layouts

  ;

type
  TfrmBaseLista = class(TForm)
    ToolBar1: TToolBar;
    Rectangle1: TRectangle;
    lytGeral: TLayout;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseLista: TfrmBaseLista;

implementation


Uses
  UntDM;

{$R *.fmx}

end.
