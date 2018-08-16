unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls;

type
  TForm2 = class(TForm)
    MainMenu: TMainMenu;
    Opes: TMenuItem;
    Defesa: TMenuItem;
    Sair: TMenuItem;
    Sobre: TMenuItem;
    Ataque: TMenuItem;
    rg_Options: TRadioGroup;
    rb_KmhMph: TRadioButton;
    rb_MFt: TRadioButton;
    bt_Calcular: TButton;
    ed_Result: TEdit;
    lb_Result: TLabel;
    bt_Limpar: TButton;
    lb_Valor: TLabel;
    ed_Valor: TEdit;
    rb_CF: TRadioButton;
    gb_Ops: TGroupBox;
    cb_1: TCheckBox;
    cb_2: TCheckBox;
    N1: TMenuItem;
    procedure SairClick(Sender: TObject);
    procedure SobreClick(Sender: TObject);
    procedure AtaqueClick(Sender: TObject);
    procedure DefesaClick(Sender: TObject);
    procedure ed_ValorKeyPress(Sender: TObject; var Key: Char);
    procedure bt_CalcularClick(Sender: TObject);
    procedure rb_CFClick(Sender: TObject);
    procedure rb_KmhMphClick(Sender: TObject);
    procedure rb_MFtClick(Sender: TObject);
    procedure bt_LimparClick(Sender: TObject);
    procedure rb_1Click(Sender: TObject);
    procedure cb_1Click(Sender: TObject);
    procedure cb_2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  KMH,MPH,M,Ft,C,F:Real;

implementation

uses Beisebol, Unit3;

{$R *.dfm}

procedure TForm2.SairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm2.SobreClick(Sender: TObject);
begin
  MessageDlg ('Beisebol Stats'+sLineBreak+'© 2009'
  +sLineBreak+sLineBreak+'André Vieira'
  +sLineBreak+sLineBreak+'Instituto Federal do Amazonas',
  mtInformation,[mbOk],0);
end;

procedure TForm2.AtaqueClick(Sender: TObject);
begin
  if Form1=Nil then
    begin
      Application.CreateForm(TForm1, Form1);
      Form1.Show;
    end;
  Form2.Release;
  Form2:=Nil;
end;

procedure TForm2.DefesaClick(Sender: TObject);
begin
  if Form3=Nil then
    begin
      Application.CreateForm(TForm3, Form3);
      Form3.Show;
    end;
  Form2.Release;
  Form2:=Nil;
end;

procedure TForm2.ed_ValorKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    bt_Calcular.SetFocus;
  if key='.' then
    key:=',';
  if rb_CF.Checked=True then
    begin
      if not (key in ['0'..'9', '-', ',', #8]) then
        key:=#0;
    end
  else
    begin
      if not (key in ['0'..'9', ',', #8]) then
        key:=#0;
    end;
end;

procedure TForm2.bt_CalcularClick(Sender: TObject);
begin
  if rb_KmhMph.Checked=True then
    begin
      if (cb_1.Checked=False) and (cb_2.Checked=False) then
        begin
          Application.MessageBox ('Selecione uma unidade de saída.',
          '',mb_IconWarning+mb_Ok);
          gb_Ops.SetFocus;
        end
      else if ed_Valor.Text='' then
        begin
          Application.MessageBox ('Insira um valor a ser convertido.',
          '',mb_IconWarning+mb_Ok);
          ed_Valor.SetFocus;
        end
      else if cb_1.Checked=True then
        begin
          MPH:=StrToFloat(ed_Valor.Text);
          KMH:=MPH*1.609344;
          ed_Result.Text:=FormatFloat('0.0',KMH);
        end
      else if cb_2.Checked=True then
        begin
          KMH:=StrToFloat(ed_Valor.Text);
          MPH:=KMH/1.609344;
          ed_Result.Text:=FormatFloat('0.0',MPH);
        end;
    end;
  if rb_MFt.Checked=True then
    begin
      if (cb_1.Checked=False) and (cb_2.Checked=False) then
        begin
          Application.MessageBox ('Selecione uma unidade de saída.',
          '',mb_IconWarning+mb_Ok);
          gb_Ops.SetFocus;
        end
      else if ed_Valor.Text='' then
        begin
          Application.MessageBox ('Insira um valor a ser convertido.',
          '',mb_IconWarning+mb_Ok);
          ed_Valor.SetFocus;
        end
      else if cb_1.Checked=True then
        begin
          Ft:=StrToFloat(ed_Valor.Text);
          M:=Ft*0.3048;
          ed_Result.Text:=FormatFloat('0.00',M);
        end
      else if cb_2.Checked=True then
        begin
          M:=StrToFloat(ed_Valor.Text);
          Ft:=M*3.28084;
          ed_Result.Text:=FormatFloat('0.00',Ft);
        end;
    end;
  if rb_CF.Checked=True then
    begin
      if (cb_1.Checked=False) and (cb_2.Checked=False) then
        begin
          Application.MessageBox ('Selecione uma unidade de saída.',
          '',mb_IconWarning+mb_Ok);
          gb_Ops.SetFocus;
        end
      else if ed_Valor.Text='' then
        begin
          Application.MessageBox ('Insira um valor a ser convertido.',
          '',mb_IconWarning+mb_Ok);
          ed_Valor.SetFocus;
        end
      else if cb_1.Checked=True then
        begin
          F:=StrToFloat(ed_Valor.Text);
          C:=(F-32)/1.8;
          ed_Result.Text:=FormatFloat('0.0',C);
        end
      else if cb_2.Checked=True then
        begin
          C:=StrToFloat(ed_Valor.Text);
          F:=(C*1.8)+32;
          ed_Result.Text:=FormatFloat('0.0',F);
        end;
    end;
end;

procedure TForm2.rb_CFClick(Sender: TObject);
begin
  ed_Result.Clear;
  gb_Ops.Visible:=True;
  gb_Ops.SetFocus;
  cb_1.Checked:=False;
  cb_1.Caption:='p/ Celsius';
  cb_1.Visible:=True;
  cb_2.Checked:=False;
  cb_2.Caption:='p/ Fahrenheit';
  cb_2.Visible:=True;
  ed_Valor.Clear;
  lb_Valor.Visible:=False;
  ed_Valor.Visible:=False;
end;

procedure TForm2.rb_KmhMphClick(Sender: TObject);
begin
  ed_Result.Clear;
  gb_Ops.Visible:=True;
  gb_Ops.SetFocus;
  cb_1.Checked:=False;
  cb_1.Caption:='p/ Km/h';
  cb_1.Visible:=True;
  cb_2.Checked:=False;
  cb_2.Caption:='p/ Mph';
  cb_2.Visible:=True;
  ed_Valor.Clear;
  lb_Valor.Visible:=False;
  ed_Valor.Visible:=False;
end;

procedure TForm2.rb_MFtClick(Sender: TObject);
begin
  ed_Result.Clear;
  gb_Ops.Visible:=True;
  gb_Ops.SetFocus;
  cb_1.Checked:=False;
  cb_1.Caption:='p/ Metros';
  cb_1.Visible:=True;
  cb_2.Checked:=False;
  cb_2.Caption:='p/ Pés';
  cb_2.Visible:=True;
  ed_Valor.Clear;
  lb_Valor.Visible:=False;
  ed_Valor.Visible:=False;
end;

procedure TForm2.bt_LimparClick(Sender: TObject);
begin
  ed_Result.Clear;
  if ed_Valor.Visible=True then
    begin
      ed_Valor.Clear;
      ed_Valor.SetFocus;
    end;
end;

procedure TForm2.rb_1Click(Sender: TObject);
begin
  if rb_KmhMph.Checked=True then
    begin
      rb_KmhMph.Checked:=True;
      lb_Valor.Caption:='Celsius:';
      lb_Valor.Visible:=True;
      ed_Valor.Visible:=True;
    end;
end;

procedure TForm2.cb_1Click(Sender: TObject);
begin
  ed_Result.Clear;
  ed_Valor.Clear;
  if cb_1.Checked=True then
    cb_2.Checked:=False;
  if rb_KmhMph.Checked=True then
    begin
      lb_Valor.Caption:='Mph:';
      lb_Valor.Visible:=True;
      ed_Valor.Visible:=True;
      ed_Valor.SetFocus;
    end
  else if rb_MFt.Checked=True then
    begin
      lb_Valor.Caption:='Pés:';
      lb_Valor.Visible:=True;
      ed_Valor.Visible:=True;
      ed_Valor.SetFocus;
    end
  else if rb_CF.Checked=True then
    begin
      lb_Valor.Caption:='Fahrenheit:';
      lb_Valor.Visible:=True;
      ed_Valor.Visible:=True;
      ed_Valor.SetFocus;
    end;
  if (cb_1.Checked=False) and (cb_2.Checked=False) then
    begin
      lb_Valor.Visible:=False;
      ed_Valor.Visible:=False;
    end;
end;

procedure TForm2.cb_2Click(Sender: TObject);
begin
  ed_Result.Clear;
  ed_Valor.Clear;
  if cb_2.Checked=True then
    cb_1.Checked:=False;
  if rb_KmhMph.Checked=True then
    begin
      lb_Valor.Caption:='Km/h:';
      lb_Valor.Visible:=True;
      ed_Valor.Visible:=True;
      ed_Valor.SetFocus;
    end
  else if rb_MFt.Checked=True then
    begin
      lb_Valor.Caption:='Metros:';
      lb_Valor.Visible:=True;
      ed_Valor.Visible:=True;
      ed_Valor.SetFocus;
    end
  else if rb_CF.Checked=True then
    begin
      lb_Valor.Caption:='Celsius:';
      lb_Valor.Visible:=True;
      ed_Valor.Visible:=True;
      ed_Valor.SetFocus;
    end;
  if (cb_1.Checked=False) and (cb_2.Checked=False) then
    begin
      lb_Valor.Visible:=False;
      ed_Valor.Visible:=False;
    end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  case Application.MessageBox ('Deseja mesmo sair?',
  'Beisebol Stats',mb_IconQuestion+mb_YesNo+mb_DefButton2) of
    idYes:Application.Terminate;
    idNo:Action:=caNone;
  end;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  rg_Options.SetFocus;
end;

end.
