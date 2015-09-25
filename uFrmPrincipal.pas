unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterMenu, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmPrincipal = class(TFrmMasterMenu)
    btnItens: TButton;
    acMenuItens: TAction;
    spdFechar: TSpeedButton;
    procedure acMenuItensExecute(Sender: TObject);
    procedure spdFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

 uses uFrmItens;

{$R *.dfm}

procedure TFrmPrincipal.acMenuItensExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(frmItens) then
  begin
    frmItens := TfrmItens.Create(Self);
  end;
  frmItens.Show;

end;

procedure TFrmPrincipal.spdFecharClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja realmente fechar o Controle Financeiro?', 'Atenção', MB_YESNO) = mrYes then
  begin
   Self.Close;
  end;
end;

end.
