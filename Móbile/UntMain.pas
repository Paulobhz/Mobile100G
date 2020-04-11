unit UntMain;

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
  FMX.TabControl,
  FMX.Layouts,
  FMX.Edit,

  Mobile100.Lib, FMX.MultiView
  ;

type
  TfrmMain = class(TForm)
    lytMain: TLayout;
    tbcMain: TTabControl;
    tbiLogin: TTabItem;
    tbiMain: TTabItem;
    lytNavegacao: TLayout;
    toolLogin: TLayout;
    recToolLogin: TRectangle;
    lblTituloLogin: TLabel;
    recBack: TRectangle;
    lytBoxLogin: TLayout;
    edtSenha: TEdit;
    edtUsuario: TEdit;
    lblNaoTemCad: TLabel;
    swtCadastro: TSwitch;
    lytBtnLogin: TLayout;
    recBtnLogin: TRectangle;
    lblBtnLogin: TLabel;
    sprBtnLogin: TSpeedButton;
    lytLoginAlternativo: TLayout;
    lytBtnFacebook: TLayout;
    Rectangle1: TRectangle;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    lytGoogle: TLayout;
    Rectangle2: TRectangle;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    lytEmail: TLayout;
    Rectangle3: TRectangle;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    mtvMenu: TMultiView;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure sprBtnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

Uses
  UntDM, UntCadClientes;
{$R *.fmx}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    tbcMain.TabPosition := TTabPosition.None;
    tbcMain.ActiveTab   := tbiLogin;

    TLibrary.ActiveForm := nil;
    TLibrary.MainMenu   := mtvMenu;
    TLibrary.LayoutMain := lytNavegacao;

    mtvMenu.HideMaster;
end;

procedure TfrmMain.sprBtnLoginClick(Sender: TObject);
begin
    TLibrary.OpemForm(TFrmCadClientes,nil);
    tbcMain.Next;
end;

end.
