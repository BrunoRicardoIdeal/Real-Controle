inherited FrmPrincipal: TFrmPrincipal
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited imgFundo: TImage
    Top = 41
    Height = 868
    ExplicitLeft = 167
    ExplicitTop = 46
    ExplicitHeight = 868
  end
  inherited pnlPessoas: TPanel
    Top = 41
    Height = 868
    object btnItens: TButton
      Left = 1
      Top = 1
      Width = 160
      Height = 45
      Action = acMenuItens
      Align = alTop
      TabOrder = 0
      ExplicitLeft = -4
      ExplicitTop = 6
    end
  end
  inherited pnlTopo: TPanel
    Height = 41
    Alignment = taLeftJustify
    ExplicitHeight = 41
    object spdFechar: TSpeedButton
      Left = 1448
      Top = 1
      Width = 84
      Height = 39
      Align = alRight
      Caption = 'Finalizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = spdFecharClick
      ExplicitHeight = 63
    end
  end
  inherited AcMenu: TActionList
    object acMenuItens: TAction
      Caption = 'Itens'
      OnExecute = acMenuItensExecute
    end
  end
end
