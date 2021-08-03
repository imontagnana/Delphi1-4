unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Sair1: TMenuItem;
    Editar1: TMenuItem;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    Editar2: TMenuItem;
    N1: TMenuItem;
    Sair2: TMenuItem;
    btnEditar: TPanel;
    btnImprimir: TButton;
    Button2: TButton;
    Button3: TButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  var x : string;
begin
   x := 'Bem vindos!';
   showmessage(x);
end;

end.
