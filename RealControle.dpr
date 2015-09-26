program RealControle;

uses
  Vcl.Forms,
  uDmPrincipal in 'uDmPrincipal.pas' {dmPrincipal: TDataModule},
  uFrmItens in 'uFrmItens.pas' {frmItens},
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  uFrmMasterCad in 'Master-Forms\uFrmMasterCad.pas' {FrmMasterCad},
  uFrmMasterMenu in 'Master-Forms\uFrmMasterMenu.pas' {FrmMasterMenu},
  UfrmMasterPesquisa in 'Master-Forms\UfrmMasterPesquisa.pas' {frmMasterPesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
