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
    TPanel: TPanel;
    btnImprimir: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Image1: TImage;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    a : string;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmCadastroProdutos;

procedure TfrmPrincipal.btnEditarClick(Sender: TObject);
  var vendas, media : integer;
  var mensagemboa, mensagemruim : string;
begin

vendas := 15;
media := 10;
mensagemboa := 'As vendas foram boas';
mensagemruim := 'As vendas foram ruins';

  if vendas > media then
    begin
        showmessage(mensagemboa);
    end
  else
    begin
        showmessage(mensagemruim);
    end;

end;

procedure TfrmPrincipal.btnImprimirClick(Sender: TObject);
begin
     // botão 'imprimir'
     a := 'Imprimir';
     showmessage(a);
end;

procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
  var a : string;
  var b : integer;

begin
  a := 'Fora dos Valores';
  b := 100;

  case b of
    10 : a := 'Vale 10';
    50 : a := 'Vale 50';
    100 : a := 'Vale 100';
  end;
    showmessage(a);
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  frmCadastroProdutos := TfrmCadastroProdutos.Create(nil);
  try
    frmCadastroProdutos.ShowModal;
  finally
     FreeAndNil (frmCadastroProdutos);     
  end;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

end.
