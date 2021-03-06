object Form_DBSessions: TForm_DBSessions
  Left = 0
  Top = 0
  ActiveControl = DBGrid_Sessions
  BorderStyle = bsNone
  Caption = 'Form_DBSessions'
  ClientHeight = 869
  ClientWidth = 1162
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape_BorderLeft: TShape
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 1
    Height = 868
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 1
    Margins.Bottom = 0
    Align = alLeft
    Pen.Color = clBtnShadow
    ExplicitTop = -36
    ExplicitHeight = 372
  end
  object Shape_BorderRight: TShape
    AlignWithMargins = True
    Left = 1161
    Top = 0
    Width = 1
    Height = 868
    Margins.Left = 1
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alRight
    Pen.Color = clBtnShadow
    ExplicitLeft = 821
    ExplicitTop = -36
    ExplicitHeight = 372
  end
  object Shape_BorderBottom: TShape
    AlignWithMargins = True
    Left = 0
    Top = 868
    Width = 1162
    Height = 1
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    Pen.Color = clBtnShadow
    ExplicitLeft = -73
    ExplicitTop = 335
    ExplicitWidth = 895
  end
  object Panel_DBSessions: TPanel
    Left = 2
    Top = 0
    Width = 1158
    Height = 868
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape_BorderTop: TShape
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 1152
      Height = 1
      Margins.Top = 0
      Margins.Bottom = 1
      Align = alTop
      Pen.Color = clWindow
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 814
    end
    object Panel_Sessions: TPanel
      AlignWithMargins = True
      Left = 0
      Top = 2
      Width = 224
      Height = 866
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Panel_SessionsTableBack: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 221
        Height = 835
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 0
        object Panel_SessionsTable: TPanel
          Left = 0
          Top = 0
          Width = 217
          Height = 831
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object DBGrid_Sessions: TDBGridEh
            Left = 0
            Top = 0
            Width = 217
            Height = 831
            Align = alClient
            AutoFitColWidths = True
            Color = cl3DLight
            DataSource = DBForm.Sessions_DS
            DynProps = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterRowCount = 1
            FooterParams.Color = clGradientInactiveCaption
            FrozenCols = 1
            IndicatorOptions = [gioShowRecNoEh]
            OddRowColor = cl3DLight
            Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                DisplayFormat = 'DD/MM/YYYY HH:NN:SS'
                DynProps = <>
                EditButtons = <>
                FieldName = 'VREMYA_SEANSA'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1089#1077#1072#1085#1089#1072
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'FLAG_FILTR_SEANS'
                Footers = <>
                Title.Caption = #1060#1083#1072#1075' '#1074#1082#1083#1102#1095#1077#1085#1080#1103' '#1089#1077#1072#1085#1089#1072'| '#1074' '#1088#1072#1089#1095#1077#1090#1099
                Width = 200
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object Panel_SessionsButtons: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 839
        Width = 224
        Height = 26
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object DBNavigator_Sessions: TDBNavigator
          AlignWithMargins = True
          Left = 3
          Top = 2
          Width = 221
          Height = 20
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 4
          DataSource = DBForm.Sessions_DS
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alTop
          TabOrder = 0
        end
      end
    end
    object Panel_SessionsDatas: TPanel
      AlignWithMargins = True
      Left = 225
      Top = 2
      Width = 933
      Height = 866
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object DBText_VremyaSeansa: TDBText
        AlignWithMargins = True
        Left = 5
        Top = 8
        Width = 923
        Height = 17
        Margins.Left = 5
        Margins.Top = 8
        Margins.Right = 5
        Align = alTop
        Alignment = taRightJustify
        DataField = 'VREMYA_SEANSA'
        DataSource = DBForm.Sessions_DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 280
        ExplicitTop = 112
        ExplicitWidth = 65
      end
      object Shape_Split1: TShape
        AlignWithMargins = True
        Left = 3
        Top = 28
        Width = 927
        Height = 1
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        Pen.Color = clWindow
        ExplicitLeft = 19
        ExplicitTop = 8
        ExplicitWidth = 665
      end
      object Shape_Split2: TShape
        AlignWithMargins = True
        Left = 3
        Top = 150
        Width = 927
        Height = 1
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        Pen.Color = clWindow
        ExplicitTop = 172
        ExplicitWidth = 610
      end
      object Label14: TLabel
        Left = 3
        Top = 10
        Width = 198
        Height = 13
        Caption = #1044#1086#1083#1103' '#1086#1090#1073#1088#1072#1082#1086#1074#1072#1085#1085#1099#1093' '#1089#1077#1072#1085#1089#1086#1074' '#1087#1086' '#1089#1080#1075#1084#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 370
        Top = 10
        Width = 73
        Height = 13
        Caption = #1069#1096#1077#1083#1086#1085' '#1074#1099#1089#1086#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 560
        Top = 10
        Width = 32
        Height = 13
        Caption = '+1200'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GrPanel_Sessions: TGridPanel
        Left = 0
        Top = 29
        Width = 933
        Height = 121
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 430.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Panel_SessionsData1
            Row = 0
          end
          item
            Column = 1
            Control = Panel_SessionsData2
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        object Panel_SessionsData1: TPanel
          Left = 0
          Top = 0
          Width = 430
          Height = 121
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label_Interval: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 7
            Width = 422
            Height = 13
            Margins.Left = 5
            Margins.Top = 7
            Align = alTop
            Caption = #1048#1085#1090#1077#1088#1074#1072#1083' '#1089#1077#1072#1085#1089#1072
            ExplicitWidth = 86
          end
          object Label_KolichestvoSamoletov: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 53
            Width = 422
            Height = 13
            Margins.Left = 5
            Margins.Top = 7
            Align = alTop
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1086#1088#1090#1086#1074', '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1084#1086#1085#1080#1090#1086#1088#1080#1085#1075#1072
            ExplicitWidth = 280
          end
          object Label_ObscheeKolichestvoSamoletov: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 30
            Width = 422
            Height = 13
            Margins.Left = 5
            Margins.Top = 7
            Align = alTop
            Caption = #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1086#1088#1090#1086#1074
            ExplicitWidth = 136
          end
          object Label_DolyaSamoletovMonitoring: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 76
            Width = 422
            Height = 13
            Margins.Left = 5
            Margins.Top = 7
            Align = alTop
            Caption = 
              #1044#1086#1083#1103' '#1073#1086#1088#1090#1086#1074', '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1084#1086#1085#1080#1090#1086#1088#1080#1085#1075#1072', '#1082' '#1086#1073#1097#1077#1084#1091' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1091 +
              ' '#1073#1086#1088#1090#1086#1074
            ExplicitWidth = 402
          end
          object Label_SrZnSrRaznosti: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 145
            Width = 422
            Height = 13
            Margins.Left = 5
            Margins.Top = 7
            Align = alTop
            Caption = 
              #1057#1088#1077#1076#1085#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1088#1072#1079#1085#1086#1089#1090#1080' '#1074#1099#1089#1086#1090' '#1089#1072#1084#1086#1083#1077#1090#1086#1074', '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1084#1086 +
              #1085#1080#1090#1086#1088#1080#1085#1075#1072
            ExplicitWidth = 414
          end
          object Label1: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 122
            Width = 422
            Height = 13
            Margins.Left = 5
            Margins.Top = 7
            Align = alTop
            Caption = 
              #1057#1088#1077#1076#1085#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1088#1072#1079#1085#1086#1089#1090#1080' '#1074#1099#1089#1086#1090' '#1089#1072#1084#1086#1083#1077#1090#1086#1074', '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1084#1086 +
              #1085#1080#1090#1086#1088#1080#1085#1075#1072
            ExplicitWidth = 414
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 99
            Width = 422
            Height = 13
            Margins.Left = 5
            Margins.Top = 7
            Align = alTop
            Caption = 
              #1057#1088#1077#1076#1085#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1088#1072#1079#1085#1086#1089#1090#1080' '#1074#1099#1089#1086#1090' '#1089#1072#1084#1086#1083#1077#1090#1086#1074', '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1084#1086 +
              #1085#1080#1090#1086#1088#1080#1085#1075#1072
            ExplicitWidth = 414
          end
        end
        object Panel_SessionsData2: TPanel
          Left = 430
          Top = 0
          Width = 503
          Height = 121
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Panel_Interval: TPanel
            Left = 0
            Top = 0
            Width = 503
            Height = 26
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label_InkrementIntervalaSI: TLabel
              AlignWithMargins = True
              Left = 490
              Top = 7
              Width = 10
              Height = 13
              Margins.Top = 7
              Margins.Bottom = 6
              Align = alRight
              AutoSize = False
              Caption = #1095'.'
              Layout = tlCenter
              ExplicitLeft = 59
              ExplicitTop = 6
            end
            object Label_SetIntervalDateTimePlus: TLabel
              AlignWithMargins = True
              Left = 422
              Top = 7
              Width = 15
              Height = 13
              Margins.Left = 0
              Margins.Top = 7
              Margins.Right = 0
              Margins.Bottom = 6
              Align = alRight
              Alignment = taCenter
              AutoSize = False
              Caption = '+'
              Layout = tlCenter
              ExplicitLeft = 264
              ExplicitTop = 0
              ExplicitHeight = 25
            end
            object DTEdit_VremyaIntervala: TDBDateTimeEditEh
              AlignWithMargins = True
              Left = 1
              Top = 4
              Width = 419
              Height = 21
              Margins.Left = 1
              Margins.Top = 4
              Margins.Right = 2
              Margins.Bottom = 1
              Align = alClient
              Color = cl3DLight
              DataField = 'VREMYA_INTERVALA'
              DataSource = DBForm.Sessions_DS
              DynProps = <>
              EditButton.ShortCut = 0
              EditButton.Visible = False
              EditButtons = <>
              ReadOnly = True
              TabOrder = 0
              Visible = True
              EditFormat = 'DD/MM/YYYY HH:NN:SS'
            end
            object Edit_InkrementIntervala: TDBEditEh
              AlignWithMargins = True
              Left = 437
              Top = 4
              Width = 50
              Height = 21
              Margins.Left = 0
              Margins.Top = 4
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alRight
              Alignment = taLeftJustify
              Color = cl3DLight
              DataField = 'INKREMENT_INTERVALA'
              DataSource = DBForm.Sessions_DS
              DynProps = <>
              EditButtons = <>
              ReadOnly = True
              TabOrder = 1
              Visible = True
            end
          end
          object Edit_KolichestvoSamoletov: TDBEditEh
            AlignWithMargins = True
            Left = 1
            Top = 50
            Width = 499
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alTop
            Alignment = taLeftJustify
            Color = cl3DLight
            DataField = 'KOLICHESTVO_SAMOLETOV'
            DataSource = DBForm.Sessions_DS
            DynProps = <>
            EditButtons = <>
            ReadOnly = True
            TabOrder = 1
            Visible = True
          end
          object Edit_SrZnSrRaznosti: TDBEditEh
            AlignWithMargins = True
            Left = 1
            Top = 96
            Width = 499
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alTop
            Alignment = taLeftJustify
            Color = cl3DLight
            DataField = 'SRZN_SRRAZNOSTI'
            DataSource = DBForm.Sessions_DS
            DynProps = <>
            EditButtons = <>
            ReadOnly = True
            TabOrder = 2
            Visible = True
          end
          object Edit_ObscheeKolichestvoSamoletov: TDBEditEh
            AlignWithMargins = True
            Left = 1
            Top = 27
            Width = 499
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alTop
            Alignment = taLeftJustify
            Color = cl3DLight
            DataField = 'OBSCHEE_KOLICHESTVO_SAMOLETOV'
            DataSource = DBForm.Sessions_DS
            DynProps = <>
            EditButtons = <>
            ReadOnly = True
            TabOrder = 3
            Visible = True
          end
          object Edit_DolyaSamoletovMonitoring: TDBEditEh
            AlignWithMargins = True
            Left = 1
            Top = 73
            Width = 499
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alTop
            Alignment = taLeftJustify
            Color = cl3DLight
            DataField = 'DOLYA_SAMOLETOV_MONITORING'
            DataSource = DBForm.Sessions_DS
            DynProps = <>
            EditButtons = <>
            ReadOnly = True
            TabOrder = 4
            Visible = True
          end
        end
      end
      object Panel_TargsInSesAndIsobaraButtons: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 514
        Width = 930
        Height = 351
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 1
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          930
          351)
        object Shape_Split3: TShape
          AlignWithMargins = True
          Left = 930
          Top = 1
          Width = -1
          Height = 349
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alRight
          Pen.Color = clWindow
          ExplicitLeft = 498
          ExplicitHeight = 24
        end
        object Label4: TLabel
          Left = 227
          Top = 7
          Width = 196
          Height = 14
          Caption = #1047#1085#1072#1095#1077#1085#1080#1077' '#1089#1080#1075#1084#1099' '#1076#1086' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 227
          Top = 27
          Width = 216
          Height = 14
          Caption = #1047#1085#1072#1095#1077#1085#1080#1077' '#1089#1080#1075#1084#1099' '#1087#1086#1089#1083#1077' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 227
          Top = 50
          Width = 235
          Height = 14
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1072#1084#1086#1083#1077#1090#1086#1074' '#1076#1086' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 227
          Top = 73
          Width = 236
          Height = 14
          Caption = #1057#1088#1077#1076#1085#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1094#1077#1085#1082#1080' '#1087#1086#1075#1088#1077#1096#1085#1086#1089#1090#1077#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 602
          Top = 3
          Width = 316
          Height = 19
          Anchors = [akRight, akBottom]
          Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1086#1090#1073#1088#1072#1082#1086#1074#1082#1080' '#1087#1086' '#1082#1088#1080#1090#1077#1088#1080#1102' NAC '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 590
          Top = 28
          Width = 238
          Height = 14
          Anchors = [akRight, akBottom]
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1086#1088#1090#1086#1074' '#1089' '#1082#1088#1080#1090#1077#1088#1080#1077#1084' NAC = 8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 590
          Top = 48
          Width = 238
          Height = 14
          Anchors = [akRight, akBottom]
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1086#1088#1090#1086#1074' '#1089' '#1082#1088#1080#1090#1077#1088#1080#1077#1084' NAC = 9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 590
          Top = 74
          Width = 245
          Height = 14
          Anchors = [akRight, akBottom]
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1086#1088#1090#1086#1074' '#1089' '#1082#1088#1080#1090#1077#1088#1080#1077#1084' NAC = 10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 227
          Top = 96
          Width = 222
          Height = 14
          Caption = #1044#1086#1083#1103' NAC=10, '#1082' '#1086#1073#1097#1077#1084#1091' '#1095#1080#1089#1083#1091' '#1073#1086#1088#1090#1086#1074
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 227
          Top = 116
          Width = 219
          Height = 14
          Caption = #1060#1083#1072#1075' '#1086#1090#1092#1084#1083#1100#1090#1088#1086#1074#1082#1080' '#1089#1077#1072#1085#1089#1086#1074' '#1087#1086' '#1089#1080#1075#1084#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Btn_Delete: TButton
          AlignWithMargins = True
          Left = 729
          Top = 92
          Width = 97
          Height = 29
          Margins.Top = 1
          Margins.Bottom = 1
          Anchors = [akRight, akBottom]
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 0
          OnClick = Btn_DeleteClick
        end
        object Btn_DeleteAll: TButton
          AlignWithMargins = True
          Left = 832
          Top = 95
          Width = 97
          Height = 28
          Margins.Top = 1
          Margins.Right = 0
          Margins.Bottom = 1
          Anchors = [akRight, akBottom]
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
          TabOrder = 1
          OnClick = Btn_DeleteAllClick
        end
        object DBEditEh1: TDBEditEh
          AlignWithMargins = True
          Left = 9
          Top = 2
          Width = 212
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Alignment = taLeftJustify
          Color = cl3DLight
          DataField = 'ZNACHENIE_S'
          DataSource = DBForm.Sessions_DS
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Visible = True
        end
        object DBEditEh2: TDBEditEh
          AlignWithMargins = True
          Left = 9
          Top = 25
          Width = 212
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Alignment = taLeftJustify
          Color = cl3DLight
          DataField = 'NEW_S'
          DataSource = DBForm.Sessions_DS
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Visible = True
        end
        object DBEditEh3: TDBEditEh
          AlignWithMargins = True
          Left = 9
          Top = 48
          Width = 212
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Alignment = taLeftJustify
          Color = cl3DLight
          DataField = 'KOL_FILTR'
          DataSource = DBForm.Sessions_DS
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Visible = True
          OnChange = DBEditEh3Change
        end
        object DBEditEh4: TDBEditEh
          AlignWithMargins = True
          Left = 9
          Top = 71
          Width = 212
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Alignment = taLeftJustify
          Color = cl3DLight
          DataField = 'SRZNPOGRESHNOSTEY'
          DataSource = DBForm.Sessions_DS
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Visible = True
          OnChange = DBEditEh3Change
        end
        object DBEditEh6: TDBEditEh
          AlignWithMargins = True
          Left = 839
          Top = 49
          Width = 87
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Alignment = taLeftJustify
          Anchors = [akRight, akBottom]
          Color = cl3DLight
          DataField = 'KOL_NAC9'
          DataSource = DBForm.Sessions_DS
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Visible = True
        end
        object DBEditEh7: TDBEditEh
          AlignWithMargins = True
          Left = 839
          Top = 72
          Width = 87
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Alignment = taLeftJustify
          Anchors = [akRight, akBottom]
          Color = cl3DLight
          DataField = 'KOL_NAC10'
          DataSource = DBForm.Sessions_DS
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Visible = True
        end
        object DBEditEh8: TDBEditEh
          AlignWithMargins = True
          Left = 9
          Top = 94
          Width = 212
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Alignment = taLeftJustify
          Color = cl3DLight
          DataField = 'DOLY_NAC10'
          DataSource = DBForm.Sessions_DS
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Visible = True
        end
        object DBEditEh5: TDBEditEh
          AlignWithMargins = True
          Left = 839
          Top = 26
          Width = 87
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Alignment = taLeftJustify
          Anchors = [akRight, akBottom]
          Color = cl3DLight
          DataField = 'KOL_NAC8'
          DataSource = DBForm.Sessions_DS
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Visible = True
        end
        object DBEditEh9: TDBEditEh
          AlignWithMargins = True
          Left = 9
          Top = 117
          Width = 212
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 1
          Alignment = taLeftJustify
          Color = cl3DLight
          DataField = 'FLAG_FILTR_SEANS'
          DataSource = DBForm.Sessions_DS
          DynProps = <>
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Visible = True
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 629
          Top = 92
          Width = 97
          Height = 28
          Margins.Top = 1
          Margins.Right = 0
          Margins.Bottom = 1
          Caption = #1048#1079#1086#1073#1072#1088#1072
          TabOrder = 11
          OnClick = Btn_DeleteAllClick1
          OnExit = Btn_DeleteAllClick1
        end
      end
      object Panel_TargsInSesTableBack: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 155
        Width = 927
        Height = 358
        Margins.Top = 4
        Margins.Bottom = 1
        Align = alTop
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 2
        object Panel_TargsInSesTable: TPanel
          Left = 0
          Top = 0
          Width = 649
          Height = 354
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object DBGrid_TargsInSes: TDBGridEh
            Left = 0
            Top = 0
            Width = 649
            Height = 354
            Align = alClient
            Color = cl3DLight
            DataSource = DBForm.TargsInSes_DS
            DynProps = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterRowCount = 1
            FooterParams.Color = clGradientInactiveCaption
            FrozenCols = 1
            IndicatorOptions = [gioShowRecNoEh]
            OddRowColor = cl3DLight
            Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                AutoFitColWidth = False
                DynProps = <>
                EditButtons = <>
                FieldName = 'IDENTIFIKATOR'
                Footers = <>
                Title.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
                Width = 150
              end
              item
                DisplayFormat = '0.00'
                DynProps = <>
                EditButtons = <>
                FieldName = 'SRRAZNOST'
                Footers = <>
                Title.Caption = #1055#1086' '#1076#1072#1085#1085#1086#1084#1091' '#1089#1077#1072#1085#1089#1091'|'#1057#1088#1077#1076#1085#1103#1103' '#1088#1072#1079#1085#1086#1089#1090#1100' '#1074#1099#1089#1086#1090
                Width = 110
              end
              item
                DisplayFormat = '0.00'
                DynProps = <>
                EditButtons = <>
                FieldName = 'OCENKA_POGRESHNOSTEY'
                Footers = <>
                Title.Caption = #1055#1086' '#1076#1072#1085#1085#1086#1084#1091' '#1089#1077#1072#1085#1089#1091'|'#1054#1094#1077#1085#1082#1072' '#1087#1086#1075#1088#1077#1096#1085#1086#1089#1090#1077#1081'|'#1076#1086' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080' '
                Width = 110
              end
              item
                Color = clWindow
                DisplayFormat = '0.00'
                DynProps = <>
                EditButtons = <>
                FieldName = 'NEW_OCENKA_POGRESHNOSTEY'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Footers = <>
                Title.Caption = #1055#1086' '#1076#1072#1085#1085#1086#1084#1091' '#1089#1077#1072#1085#1089#1091'| '#1054#1094#1077#1085#1082#1072' '#1087#1086#1075#1088#1077#1096#1085#1086#1089#1090#1077#1081' |'#1087#1086#1089#1083#1077' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080
                Width = 110
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'OCENKA_S_VESOM'
                Footers = <>
                Title.Caption = #1055#1086' '#1088#1072#1079#1085#1099#1084' '#1089#1077#1072#1085#1089#1072#1084'|'#1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072'|'#1076#1086' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080
                Width = 110
              end
              item
                DisplayFormat = '0.00'
                DynProps = <>
                EditButtons = <>
                FieldName = 'NEW_OCENKA_S_VESOM'
                Footers = <>
                Title.Caption = #1055#1086' '#1088#1072#1079#1085#1099#1084' '#1089#1077#1072#1085#1089#1072#1084'| '#1059#1090#1086#1095#1085#1077#1085#1085#1072#1103' '#1086#1094#1077#1085#1082#1072' | '#1087#1086#1089#1083#1077' '#1086#1090#1092#1080#1083#1100#1090#1088#1086#1074#1082#1080
                Width = 100
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'KOLICHESTVO_SAMOLETOV'
                Footers = <>
                Title.Caption = #1055#1086' '#1088#1072#1079#1085#1099#1084' '#1089#1077#1072#1085#1089#1072#1084'| '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1093' '#1089#1072#1084#1086#1083#1077#1090#1086#1074
                Width = 90
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'OCENKA_NAKLONA_ISOBARA'
                Footers = <>
                Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072#1082#1083#1086#1085#1072' '#1080#1079#1086#1073#1072#1088#1099'| 100'#1084'/'#1082#1084
                Width = 80
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'FLAG_FILTR'
                Footers = <>
                Title.Caption = #1060#1083#1072#1075' '#1087#1086#1087#1072#1076#1072#1085#1080#1103' '#1074' '#1080#1085#1090#1077#1088#1074#1072#1083
                Width = 100
              end>
            object RowDetailData: TRowDetailPanelControlEh
              object Label3: TLabel
                AlignWithMargins = True
                Left = 5
                Top = 7
                Width = -8
                Height = 13
                Margins.Left = 5
                Margins.Top = 7
                Align = alTop
                Caption = 
                  #1057#1088#1077#1076#1085#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1088#1072#1079#1085#1086#1089#1090#1080' '#1074#1099#1089#1086#1090' '#1089#1072#1084#1086#1083#1077#1090#1086#1074', '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1084#1086 +
                  #1085#1080#1090#1086#1088#1080#1085#1075#1072
                ExplicitWidth = 414
              end
            end
          end
        end
        object Panel_IsobaraTable: TPanel
          AlignWithMargins = True
          Left = 653
          Top = 0
          Width = 270
          Height = 354
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object DBGrid_Isobara: TDBGridEh
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 264
            Height = 348
            Align = alClient
            AutoFitColWidths = True
            Color = cl3DLight
            DataSource = DBForm.Isobara_DS
            DynProps = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterRowCount = 1
            FooterParams.Color = clGradientInactiveCaption
            FrozenCols = 1
            IndicatorOptions = [gioShowRecNoEh]
            OddRowColor = cl3DLight
            Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghFrozen3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghHotTrack, dghExtendVertLines]
            ParentFont = False
            ReadOnly = True
            SumList.Active = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                DisplayFormat = '0.00'
                DynProps = <>
                EditButtons = <>
                FieldName = 'RAZNOST_BG_VISOT'
                Footer.DisplayFormat = '0.00'
                Footer.FieldName = 'RAZNOST_BG_VISOT'
                Footer.ValueType = fvtAvg
                Footers = <
                  item
                    DisplayFormat = '0.00'
                    FieldName = 'RAZNOST_BG_VISOT'
                    ValueType = fvtAvg
                  end>
                Title.Caption = #1056#1072#1079#1085#1086#1089#1090#1100' '#1074#1099#1089#1086#1090'|'#1084
                Width = 80
              end
              item
                AutoFitColWidth = False
                DynProps = <>
                EditButtons = <>
                FieldName = 'DIAPAZON_VISOTI'
                Footers = <>
                Title.Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1074#1099#1089#1086#1090#1099'|'#1084
                Width = 80
              end
              item
                AutoFitColWidth = False
                DisplayFormat = '0.000'
                DynProps = <>
                EditButtons = <>
                FieldName = 'RASSTOYANIE'
                Footer.DisplayFormat = '0.000'
                Footer.FieldName = 'RASSTOYANIE'
                Footer.ValueType = fvtSum
                Footers = <
                  item
                    DisplayFormat = '0.000'
                    FieldName = 'RASSTOYANIE'
                    ValueType = fvtSum
                  end>
                Title.Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077'|'#1084
                Width = 80
              end
              item
                DynProps = <>
                EditButtons = <>
                Footers = <>
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object DBEditEh10: TDBEditEh
        AlignWithMargins = True
        Left = 239
        Top = 6
        Width = 83
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Margins.Bottom = 1
        Alignment = taLeftJustify
        Color = cl3DLight
        DataField = 'PROCENT_OTBRAKOVKI'
        DataSource = DBForm.Sessions_DS
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Visible = True
      end
      object DBEditEh11: TDBEditEh
        AlignWithMargins = True
        Left = 447
        Top = 4
        Width = 83
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Margins.Bottom = 1
        Alignment = taLeftJustify
        Color = cl3DLight
        DataField = 'EHELON'
        DataSource = DBForm.Sessions_DS
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Visible = True
      end
      object DBEditEh12: TDBEditEh
        AlignWithMargins = True
        Left = 703
        Top = 4
        Width = 83
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Margins.Bottom = 1
        Alignment = taLeftJustify
        Color = cl3DLight
        DataField = 'SIGMA_APR'
        DataSource = DBForm.Sessions_DS
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Visible = True
      end
    end
  end
end
