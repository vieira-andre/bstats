unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    MainMenu: TMainMenu;
    Opes: TMenuItem;
    Ataque: TMenuItem;
    Medidas: TMenuItem;
    Sair: TMenuItem;
    Sobre: TMenuItem;
    rg_Options: TRadioGroup;
    rb_ERA: TRadioButton;
    rb_WHIP: TRadioButton;
    bt_Calcular: TButton;
    bt_Limpar: TButton;
    lb_Result: TLabel;
    ed_Result: TEdit;
    N1: TMenuItem;
    ed_1: TEdit;
    ed_2: TEdit;
    ed_3: TEdit;
    rb_KBB: TRadioButton;
    rb_K9: TRadioButton;
    rb_FPct: TRadioButton;
    rb_RF: TRadioButton;
    lb_1: TLabel;
    lb_2: TLabel;
    lb_3: TLabel;
    procedure SobreClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure MedidasClick(Sender: TObject);
    procedure AtaqueClick(Sender: TObject);
    procedure ed_1KeyPress(Sender: TObject; var Key: Char);
    procedure rb_ERAClick(Sender: TObject);
    procedure bt_CalcularClick(Sender: TObject);
    procedure bt_LimparClick(Sender: TObject);
    procedure rb_WHIPClick(Sender: TObject);
    procedure ed_2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure ed_3KeyPress(Sender: TObject; var Key: Char);
    procedure rb_K9Click(Sender: TObject);
    procedure rb_KBBClick(Sender: TObject);
    procedure rb_FPctClick(Sender: TObject);
    procedure rb_RFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  ER,BB,H,K,PO,A,E:Integer;
  IP,ERA,WHIP,KBB,K9,FPct,Inn,RF:Real;

implementation

uses Beisebol, Unit2;

{$R *.dfm}

procedure TForm3.SobreClick(Sender: TObject);
begin
  MessageDlg ('Beisebol Stats'+sLineBreak+'© 2009'
  +sLineBreak+sLineBreak+'André Vieira'
  +sLineBreak+sLineBreak+'Instituto Federal do Amazonas',
  mtInformation,[mbOk],0);
end;

procedure TForm3.SairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm3.MedidasClick(Sender: TObject);
begin
  if Form2=Nil then
    begin
      Application.CreateForm(TForm2, Form2);
      Form2.Show;
    end;
  Form3.Release;
  Form3:=Nil;
end;

procedure TForm3.AtaqueClick(Sender: TObject);
begin
  if Form1=Nil then
    begin
      Application.CreateForm(TForm1, Form1);
      Form1.Show;
    end;
  Form3.Release;
  Form3:=Nil;
end;

procedure TForm3.ed_1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    ed_2.SetFocus;
  if (rb_ERA.Checked=True) or (rb_WHIP.Checked=True) or
  (rb_K9.Checked=True) or (rb_RF.Checked=True) then
    begin
      if key='.' then
        key:=',';
      if not (key in ['0'..'9', ',', #8]) then
      key:=#0;
    end
  else
    begin
      if not (key in ['0'..'9', #8]) then
      key:=#0;
    end;
end;

procedure TForm3.rb_ERAClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Entradas arremessadas (IP)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Corridas limpas (ER)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Visible:=False;
  ed_3.Visible:=False;
end;

procedure TForm3.bt_CalcularClick(Sender: TObject);
begin
  if rb_ERA.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Entradas arremessadas (IP).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira as Corridas limpas (ER).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else
        begin
          IP:=StrToFloat(ed_1.Text);
          ER:=StrToInt(ed_2.Text);
          ERA:=9*(ER/IP);
          ERA:=Trunc(ERA*100)/100;
          ed_Result.Text:=FormatFloat('0.00',ERA);
        end;
    end;
  if rb_WHIP.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Entradas arremessadas (IP).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira os Walks (BB).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else if ed_3.Text='' then
        begin
          Application.MessageBox ('Insira as Rebatidas (H).',
          '',mb_IconWarning+mb_Ok);
          ed_3.SetFocus;
        end
      else
        begin
          IP:=StrToFloat(ed_1.Text);
          BB:=StrToInt(ed_2.Text);
          H:=StrToInt(ed_3.Text);
          WHIP:=(BB+H)/IP;
          WHIP:=Trunc(WHIP*100)/100;
          ed_Result.Text:=FormatFloat('0.00',WHIP);
        end;
    end;
  if rb_KBB.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira os Strikeouts (K).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira os Walks (BB).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else
        begin
          K:=StrToInt(ed_1.Text);
          BB:=StrToInt(ed_2.Text);
          KBB:=K/BB;
          ed_Result.Text:=FormatFloat('0.00',KBB);
        end;
    end;
  if rb_K9.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Entradas arremessadas (IP).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira os Strikeouts (K).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else
        begin
          IP:=StrToFloat(ed_1.Text);
          K:=StrToInt(ed_2.Text);
          K9:=9*(K/IP);
          ed_Result.Text:=FormatFloat('0.0',K9);
        end;
    end;
  if rb_FPct.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira os Putouts (PO).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira as Assistências (A).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else if ed_3.Text='' then
        begin
          Application.MessageBox ('Insira os Erros (E).',
          '',mb_IconWarning+mb_Ok);
          ed_3.SetFocus;
        end
      else
        begin
          PO:=StrToInt(ed_1.Text);
          A:=StrToInt(ed_2.Text);
          E:=StrToInt(ed_3.Text);
          FPct:=(A+PO)/(A+PO+E);
          ed_Result.Text:=FormatFloat('0.000',FPct);
        end;
    end;
  if rb_RF.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Entradas jogadas (Inn).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira os Putouts (PO).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else if ed_3.Text='' then
        begin
          Application.MessageBox ('Insira as Assistências (A).',
          '',mb_IconWarning+mb_Ok);
          ed_3.SetFocus;
        end
      else
        begin
          Inn:=StrToFloat(ed_1.Text);
          PO:=StrToInt(ed_2.Text);
          A:=StrToInt(ed_3.Text);
          RF:=(PO+A)*9/Inn;
          ed_Result.Text:=FormatFloat('0.00',RF);
        end;
    end;
end;

procedure TForm3.bt_LimparClick(Sender: TObject);
begin
  ed_Result.Clear;
  if ed_1.Visible=True then
    ed_1.SetFocus;
  if (rb_ERA.Checked=True) or (rb_KBB.Checked=True) or
  (rb_K9.Checked=True) then
    ed_1.Clear;
    ed_2.Clear;
  if (rb_WHIP.Checked=True) or (rb_FPct.Checked=True) or
  (rb_RF.Checked=True) then
    ed_1.Clear;
    ed_2.Clear;
    ed_3.Clear;
end;

procedure TForm3.rb_WHIPClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Entradas arremessadas (IP)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Walks (BB)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Rebatidas (H)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
end;

procedure TForm3.ed_2KeyPress(Sender: TObject; var Key: Char);
begin
  if (rb_ERA.Checked=True) or (rb_KBB.Checked=True) or
  (rb_K9.Checked=True) then
    begin
      if key=#13 then
        bt_Calcular.SetFocus;
    end
  else
    begin
      if key=#13 then
        ed_3.SetFocus;
    end;
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  case Application.MessageBox ('Deseja mesmo sair?',
  'Beisebol Stats',mb_IconQuestion+mb_YesNo+mb_DefButton2) of
    idYes:Application.Terminate;
    idNo:Action:=caNone;
  end;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  rg_Options.SetFocus;
end;

procedure TForm3.ed_3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    bt_Calcular.SetFocus;
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm3.rb_K9Click(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Entradas arremessadas (IP)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Strikeouts (K)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Visible:=False;
  ed_3.Visible:=False;
end;

procedure TForm3.rb_KBBClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Strikeouts (K)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Walks (BB)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Visible:=False;
  ed_3.Visible:=False;
end;

procedure TForm3.rb_FPctClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Putouts (PO)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Assistências (A)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Erros (E)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
end;

procedure TForm3.rb_RFClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Entradas (Inn)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Putouts (PO)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Assistências (A)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
end;

end.

