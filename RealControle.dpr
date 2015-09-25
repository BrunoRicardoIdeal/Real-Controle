program RealControle;

uses
  Vcl.Forms,
  uFrmMasterCad in '..\..\Masters\Master-Forms\uFrmMasterCad.pas' {FrmMasterCad},
  uFrmMasterMenu in '..\..\Masters\Master-Forms\uFrmMasterMenu.pas' {FrmMasterMenu},
  UfrmMasterPesquisa in '..\..\Masters\Master-Forms\UfrmMasterPesquisa.pas' {frmMasterPesquisa},
  uDmPrincipal in 'uDmPrincipal.pas' {dmPrincipal: TDataModule},
  uFrmItens in 'uFrmItens.pas' {frmItens},
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
