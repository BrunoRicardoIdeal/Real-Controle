unit uFrmMasterMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, System.Actions, Vcl.ActnList;

type
  TFrmMasterMenu = class(TForm)
    pnlPessoas: TPanel;
    pnlTopo: TPanel;
    imgFundo: TImage;
    AcMenu: TActionList;
    procedure FormShow(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);

  private
    { Private declarations }
  public
    lado : integer;
    { Public declarations }
  end;

var
  FrmMasterMenu: TFrmMasterMenu;

implementation



{$R *.dfm}

procedure TFrmMasterMenu.btnFinalizarClick(Sender: TObject);
begin
 Close;
end;



procedure TFrmMasterMenu.FormShow(Sender: TObject);
begin
  self.Left   :=  0;
  self.Top    :=  0;
  self.width  :=  Screen.WorkAreawidth;
  self.Height :=  Screen.WorkAreaHeight;
end;

end.
