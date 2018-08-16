unit Beisebol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, Mask, XPMan;

type
  TForm1 = class(TForm)
    rg_Options: TRadioGroup;
    rb_BA: TRadioButton;
    rb_OBP: TRadioButton;
    rb_SLG: TRadioButton;
    rb_OPS: TRadioButton;
    ed_Result: TEdit;
    lb_Result: TLabel;
    bt_Limpar: TButton;
    bt_Calcular: TButton;
    MainMenu: TMainMenu;
    Sobre: TMenuItem;
    Opes: TMenuItem;
    Defesa: TMenuItem;
    Medidas: TMenuItem;
    Sair: TMenuItem;
    N1: TMenuItem;
    rb_IsoP: TRadioButton;
    rb_TB: TRadioButton;
    rb_SecA: TRadioButton;
    rb_BBK: TRadioButton;
    ed_1: TEdit;
    ed_2: TEdit;
    ed_3: TEdit;
    ed_6: TEdit;
    ed_7: TEdit;
    ed_8: TEdit;
    ed_4: TEdit;
    ed_5: TEdit;
    lb_1: TLabel;
    lb_2: TLabel;
    lb_3: TLabel;
    lb_4: TLabel;
    lb_5: TLabel;
    lb_6: TLabel;
    lb_7: TLabel;
    lb_8: TLabel;
    rb_SBP: TRadioButton;
    XPManifest1: TXPManifest;
    procedure bt_LimparClick(Sender: TObject);
    procedure rb_BAClick(Sender: TObject);
    procedure rb_OBPClick(Sender: TObject);
    procedure rb_SLGClick(Sender: TObject);
    procedure SobreClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure MedidasClick(Sender: TObject);
    procedure bt_CalcularClick(Sender: TObject);
    procedure rb_OPSClick(Sender: TObject);
    procedure DefesaClick(Sender: TObject);
    procedure rb_IsoPClick(Sender: TObject);
    procedure rb_TBClick(Sender: TObject);
    procedure ed_KKeyPress(Sender: TObject; var Key: Char);
    procedure rb_SecAClick(Sender: TObject);
    procedure rb_BBKClick(Sender: TObject);
    procedure rb_SBPClick(Sender: TObject);
    procedure rb_SBRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rb_RCClick(Sender: TObject);
    procedure rb_RCgClick(Sender: TObject);
    procedure ed_1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_2KeyPress(Sender: TObject; var Key: Char);
    procedure ed_3KeyPress(Sender: TObject; var Key: Char);
    procedure ed_4KeyPress(Sender: TObject; var Key: Char);
    procedure ed_5KeyPress(Sender: TObject; var Key: Char);
    procedure ed_6KeyPress(Sender: TObject; var Key: Char);
    procedure ed_7KeyPress(Sender: TObject; var Key: Char);
    procedure ed_8KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  AB,H,BB,HBP,SF,Sim,Dup,Tri,HR,K,SB,CS,TB:Integer;
  BA,OBP,SLG,OPS,SecA,IsoP,BBK,SBP:Real;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.bt_LimparClick(Sender: TObject);
begin
  ed_Result.Clear;
  if ed_1.Visible=True then
    ed_1.SetFocus;
  if (rb_BA.Checked=True) or (rb_BBK.Checked=True) or
  (rb_SBP.Checked=True) then
    ed_1.Clear;
    ed_2.Clear;
  if (rb_OBP.Checked=True) or (rb_SLG.Checked=True) then
    ed_1.Clear;
    ed_2.Clear;
    ed_3.Clear;
    ed_4.Clear;
    ed_5.Clear;
  if (rb_OPS.Checked=True) or (rb_SecA.Checked=True) then
    ed_1.Clear;
    ed_2.Clear;
    ed_3.Clear;
    ed_4.Clear;
    ed_5.Clear;
    ed_6.Clear;
    ed_7.Clear;
    ed_8.Clear;
  if (rb_TB.Checked=True) or (rb_IsoP.Checked=True) then
    ed_1.Clear;
    ed_2.Clear;
    ed_3.Clear;
    ed_4.Clear;
end;

procedure TForm1.rb_BAClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Vezes ao bastão (AB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Rebatidas (H)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Visible:=False;
  ed_3.Visible:=False;
  lb_4.Visible:=False;
  ed_4.Visible:=False;
  lb_5.Visible:=False;
  ed_5.Visible:=False;
  lb_6.Visible:=False;
  ed_6.Visible:=False;
  lb_7.Visible:=False;
  ed_7.Visible:=False;
  lb_8.Visible:=False;
  ed_8.Visible:=False;
end;

procedure TForm1.rb_OBPClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Vezes ao bastão (AB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Rebatidas (H)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Walks (BB)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
  lb_4.Caption:='Hits by pitch (HBP)';
  lb_4.Visible:=True;
  ed_4.Clear;
  ed_4.Visible:=True;
  lb_5.Caption:='Flies de sacrifício (SF)';
  lb_5.Visible:=True;
  ed_5.Clear;
  ed_5.Visible:=True;
  lb_6.Visible:=False;
  ed_6.Visible:=False;
  lb_7.Visible:=False;
  ed_7.Visible:=False;
  lb_8.Visible:=False;
  ed_8.Visible:=False;
end;

procedure TForm1.rb_SLGClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Vezes ao bastão (AB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Rebatidas (H)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Duplas (2B)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
  lb_4.Caption:='Triplas (3B)';
  lb_4.Visible:=True;
  ed_4.Clear;
  ed_4.Visible:=True;
  lb_5.Caption:='Home runs (HR)';
  lb_5.Visible:=True;
  ed_5.Clear;
  ed_5.Visible:=True;
  lb_6.Visible:=False;
  ed_6.Visible:=False;
  lb_7.Visible:=False;
  ed_7.Visible:=False;
  lb_8.Visible:=False;
  ed_8.Visible:=False;
end;

procedure TForm1.SobreClick(Sender: TObject);
begin
  MessageDlg ('Beisebol Stats'+sLineBreak+'© 2009'
  +sLineBreak+sLineBreak+'André Vieira'
  +sLineBreak+sLineBreak+'Instituto Federal do Amazonas',
  mtInformation,[mbOk],0);
end;

procedure TForm1.SairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MedidasClick(Sender: TObject);
begin
  if Form2=Nil then
    begin
      Application.CreateForm(TForm2, Form2);
      Form2.Show;
    end;
  Form1.Release;
  Form1:=Nil;
end;

procedure TForm1.bt_CalcularClick(Sender: TObject);
begin
  if rb_BA.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Vezes ao bastão (AB).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira as Rebatidas (H).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else
        begin
          AB:=StrToInt(ed_1.Text);
          H:=StrToInt(ed_2.Text);
          BA:=H/AB;
          ed_Result.Text:=FormatFloat('0.000',BA);
        end;
    end;
  if rb_OBP.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Vezes ao bastão (AB).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira as Rebatidas (H).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else if ed_3.Text='' then
        begin
          Application.MessageBox ('Insira os Walks (BB).',
          '',mb_IconWarning+mb_Ok);
          ed_3.SetFocus;
        end
      else if ed_4.Text='' then
        begin
          Application.MessageBox ('Insira os Hits by pitch (HBP).',
          '',mb_IconWarning+mb_Ok);
          ed_4.SetFocus;
        end
      else if ed_5.Text='' then
        begin
          Application.MessageBox ('Insira os Flies de sacrifício (SF).',
          '',mb_IconWarning+mb_Ok);
          ed_5.SetFocus;
        end
      else
        begin
          AB:=StrToInt(ed_1.Text);
          H:=StrToInt(ed_2.Text);
          BB:=StrToInt(ed_3.Text);
          HBP:=StrToInt(ed_4.Text);
          SF:=StrToInt(ed_5.Text);
          OBP:=(H+BB+HBP)/(AB+BB+SF+HBP);
          ed_Result.Text:=FormatFloat('0.000',OBP);
        end;
    end;
  if rb_SLG.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Vezes ao bastão (AB).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
    else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira as Rebatidas (H).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
    else if ed_3.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Duplas (2B).',
          '',mb_IconWarning+mb_Ok);
          ed_3.SetFocus;
        end
    else if ed_4.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Triplas (3B).',
          '',mb_IconWarning+mb_Ok);
          ed_4.SetFocus;
        end
    else if ed_5.Text='' then
        begin
          Application.MessageBox ('Insira os Home runs (HR).',
          '',mb_IconWarning+mb_Ok);
          ed_5.SetFocus;
        end
    else
      begin
        AB:=StrToInt(ed_1.Text);
        H:=StrToInt(ed_2.Text);
        Dup:=StrToInt(ed_3.Text);
        Tri:=StrToInt(ed_4.Text);
        HR:=StrToInt(ed_5.Text);
        Sim:=H-Dup-Tri-HR;
        SLG:=(Sim+(2*Dup)+(3*Tri)+(4*HR))/AB;
        ed_Result.Text:=FormatFloat('0.000',SLG);
      end;
    end;
  if rb_OPS.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Vezes ao bastão (AB).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira as Rebatidas (H).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else if ed_3.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Duplas (2B).',
          '',mb_IconWarning+mb_Ok);
          ed_3.SetFocus;
        end
      else if ed_4.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Triplas (3B).',
          '',mb_IconWarning+mb_Ok);
          ed_4.SetFocus;
        end
      else if ed_5.Text='' then
        begin
          Application.MessageBox ('Insira os Home runs (HR).',
          '',mb_IconWarning+mb_Ok);
          ed_5.SetFocus;
        end
      else if ed_6.Text='' then
        begin
          Application.MessageBox ('Insira os Walks (BB).',
          '',mb_IconWarning+mb_Ok);
          ed_6.SetFocus;
        end
      else if ed_7.Text='' then
        begin
          Application.MessageBox ('Insira os Hits by pitch (HBP).',
          '',mb_IconWarning+mb_Ok);
          ed_7.SetFocus;
        end
      else if ed_8.Text='' then
        begin
          Application.MessageBox ('Insira os Flies de sacrifício (SF).',
          '',mb_IconWarning+mb_Ok);
          ed_8.SetFocus;
        end
      else
        begin
          AB:=StrToInt(ed_1.Text);
          H:=StrToInt(ed_2.Text);
          Dup:=StrToInt(ed_3.Text);
          Tri:=StrToInt(ed_4.Text);
          HR:=StrToInt(ed_5.Text);
          BB:=StrToInt(ed_6.Text);
          HBP:=StrToInt(ed_7.Text);
          SF:=StrToInt(ed_8.Text);
          Sim:=H-Dup-Tri-HR;
          OBP:=(H+BB+HBP)/(AB+BB+SF+HBP);
          SLG:=(Sim+(2*Dup)+(3*Tri)+(4*HR))/AB;
          OPS:=OBP+SLG;
          ed_Result.Text:=FormatFloat('0.000',OPS);
        end;
    end;
  if rb_TB.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Rebatidas (H).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Duplas (2B).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else if ed_3.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Triplas (3B).',
          '',mb_IconWarning+mb_Ok);
          ed_3.SetFocus;
        end
      else if ed_4.Text='' then
        begin
          Application.MessageBox ('Insira os Home runs (HR).',
          '',mb_IconWarning+mb_Ok);
          ed_4.SetFocus;
        end
      else
        begin
          H:=StrToInt(ed_1.Text);
          Dup:=StrToInt(ed_2.Text);
          Tri:=StrToInt(ed_3.Text);
          HR:=StrToInt(ed_4.Text);
          Sim:=H-Dup-Tri-HR;
          TB:=Sim+(2*Dup)+(3*Tri)+(4*HR);
          ed_Result.Text:=IntToStr(TB);
        end;
    end;
  if rb_SecA.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Vezes ao bastão (AB).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira as Rebatidas (H).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else if ed_3.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Duplas (2B).',
          '',mb_IconWarning+mb_Ok);
          ed_3.SetFocus;
        end
      else if ed_4.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Triplas (3B).',
          '',mb_IconWarning+mb_Ok);
          ed_4.SetFocus;
        end
      else if ed_5.Text='' then
        begin
          Application.MessageBox ('Insira os Home runs (HR).',
          '',mb_IconWarning+mb_Ok);
          ed_5.SetFocus;
        end
      else if ed_6.Text='' then
        begin
          Application.MessageBox ('Insira os Walks (BB).',
          '',mb_IconWarning+mb_Ok);
          ed_6.SetFocus;
        end
      else if ed_7.Text='' then
        begin
          Application.MessageBox ('Insira as Bases roubadas (SB).',
          '',mb_IconWarning+mb_Ok);
          ed_7.SetFocus;
        end
      else if ed_8.Text='' then
        begin
          Application.MessageBox ('Insira os Roubos capturados (CS).',
          '',mb_IconWarning+mb_Ok);
          ed_8.SetFocus;
        end
      else
        begin
          AB:=StrToInt(ed_1.Text);
          H:=StrToInt(ed_2.Text);
          Dup:=StrToInt(ed_3.Text);
          Tri:=StrToInt(ed_4.Text);
          HR:=StrToInt(ed_5.Text);
          BB:=StrToInt(ed_6.Text);
          SB:=StrToInt(ed_7.Text);
          CS:=StrToInt(ed_8.Text);
          Sim:=H-Dup-Tri-HR;
          TB:=Sim+(2*Dup)+(3*Tri)+(4*HR);
          SecA:=(TB-H+BB+SB-CS)/AB;
          ed_Result.Text:=FormatFloat('0.000',SecA);
        end;
    end;
  if rb_IsoP.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Vezes ao bastão (AB).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Duplas (2B).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else if ed_3.Text='' then
        begin
          Application.MessageBox ('Insira as rebatidas Triplas (3B).',
          '',mb_IconWarning+mb_Ok);
          ed_3.SetFocus;
        end
      else if ed_4.Text='' then
        begin
          Application.MessageBox ('Insira os Home runs (HR).',
          '',mb_IconWarning+mb_Ok);
          ed_4.SetFocus;
        end
      else
        begin
          AB:=StrToInt(ed_1.Text);
          Dup:=StrToInt(ed_2.Text);
          Tri:=StrToInt(ed_3.Text);
          HR:=StrToInt(ed_4.Text);
          IsoP:=(Dup+Tri+(3*HR))/AB;
          ed_Result.Text:=FormatFloat('0.000',IsoP);
        end;
    end;
  if rb_BBK.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira os Walks (BB).',
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
          BB:=StrToInt(ed_1.Text);
          K:=StrToInt(ed_2.Text);
          BBK:=BB/K;
          ed_Result.Text:=FormatFloat('0.00',BBK);
        end;
    end;
  if rb_SBP.Checked=True then
    begin
      if ed_1.Text='' then
        begin
          Application.MessageBox ('Insira as Bases roubadas (SB).',
          '',mb_IconWarning+mb_Ok);
          ed_1.SetFocus;
        end
      else if ed_2.Text='' then
        begin
          Application.MessageBox ('Insira os Roubos capturados (CS).',
          '',mb_IconWarning+mb_Ok);
          ed_2.SetFocus;
        end
      else
        begin
          SB:=StrToInt(ed_1.Text);
          CS:=StrToInt(ed_2.Text);
          SBP:=SB/(SB+CS)*100;
          ed_Result.Text:=FormatFloat('0.0',SBP);
        end;
    end;
end;

procedure TForm1.rb_OPSClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Vezes ao bastão (AB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Rebatidas (H)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Duplas (2B)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
  lb_4.Caption:='Triplas (3B)';
  lb_4.Visible:=True;
  ed_4.Clear;
  ed_4.Visible:=True;
  lb_5.Caption:='Home runs (HR)';
  lb_5.Visible:=True;
  ed_5.Clear;
  ed_5.Visible:=True;
  lb_6.Caption:='Walks (BB)';
  lb_6.Visible:=True;
  ed_6.Clear;
  ed_6.Visible:=True;
  lb_7.Caption:='Hits by pitch (HBP)';
  lb_7.Visible:=True;
  ed_7.Clear;
  ed_7.Visible:=True;
  lb_8.Caption:='Flies de sacrifício (SF)';
  lb_8.Visible:=True;
  ed_8.Clear;
  ed_8.Visible:=True;
end;

procedure TForm1.DefesaClick(Sender: TObject);
begin
  if Form3=Nil then
    begin
      Application.CreateForm(TForm3, Form3);
      Form3.Show;
    end;
  Form1.Release;
  Form1:=Nil;
end;

procedure TForm1.rb_IsoPClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Vezes ao bastão (AB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Duplas (2B)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Triplas (3B)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
  lb_4.Caption:='Home runs (HR)';
  lb_4.Visible:=True;
  ed_4.Clear;
  ed_4.Visible:=True;
  lb_5.Visible:=False;
  ed_5.Visible:=False;
  lb_6.Visible:=False;
  ed_6.Visible:=False;
  lb_7.Visible:=False;
  ed_7.Visible:=False;
  lb_8.Visible:=False;
  ed_8.Visible:=False;
end;

procedure TForm1.rb_TBClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Rebatidas (H)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Duplas (2B)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Triplas (3B)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
  lb_4.Caption:='Home runs (HR)';
  lb_4.Visible:=True;
  ed_4.Clear;
  ed_4.Visible:=True;
  lb_5.Visible:=False;
  ed_5.Visible:=False;
  lb_6.Visible:=False;
  ed_6.Visible:=False;
  lb_7.Visible:=False;
  ed_7.Visible:=False;
  lb_8.Visible:=False;
  ed_8.Visible:=False;
end;

procedure TForm1.ed_KKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm1.rb_SecAClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Vezes ao bastão (AB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Rebatidas (H)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Duplas (2B)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
  lb_4.Caption:='Triplas (3B)';
  lb_4.Visible:=True;
  ed_4.Clear;
  ed_4.Visible:=True;
  lb_5.Caption:='Home runs (HR)';
  lb_5.Visible:=True;
  ed_5.Clear;
  ed_5.Visible:=True;
  lb_6.Caption:='Walks (BB)';
  lb_6.Visible:=True;
  ed_6.Clear;
  ed_6.Visible:=True;
  lb_7.Caption:='Bases roubadas (SB)';
  lb_7.Visible:=True;
  ed_7.Clear;
  ed_7.Visible:=True;
  lb_8.Caption:='Roubos capturados (CS)';
  lb_8.Visible:=True;
  ed_8.Clear;
  ed_8.Visible:=True;
end;

procedure TForm1.rb_BBKClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Walks (BB)';
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
  lb_4.Visible:=False;
  ed_4.Visible:=False;
  lb_5.Visible:=False;
  ed_5.Visible:=False;
  lb_6.Visible:=False;
  ed_6.Visible:=False;
  lb_7.Visible:=False;
  ed_7.Visible:=False;
  lb_8.Visible:=False;
  ed_8.Visible:=False;
end;

procedure TForm1.rb_SBPClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Bases roubadas (SB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Roubos capturados (CS)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Visible:=False;
  ed_3.Visible:=False;
  lb_4.Visible:=False;
  ed_4.Visible:=False;
  lb_5.Visible:=False;
  ed_5.Visible:=False;
  lb_6.Visible:=False;
  ed_6.Visible:=False;
  lb_7.Visible:=False;
  ed_7.Visible:=False;
  lb_8.Visible:=False;
  ed_8.Visible:=False;
end;

procedure TForm1.rb_SBRClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Bases roubadas (SB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Roubos capturados (CS)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Visible:=False;
  ed_3.Visible:=False;
  lb_4.Visible:=False;
  ed_4.Visible:=False;
  lb_5.Visible:=False;
  ed_5.Visible:=False;
  lb_6.Visible:=False;
  ed_6.Visible:=False;
  lb_7.Visible:=False;
  ed_7.Visible:=False;
  lb_8.Visible:=False;
  ed_8.Visible:=False;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  case Application.MessageBox ('Deseja mesmo sair?',
  'Beisebol Stats',mb_IconQuestion+mb_YesNo+mb_DefButton2) of
    idYes:Application.Terminate;
    idNo:Action:=caNone;
  end;
end;

procedure TForm1.rb_RCClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Vezes ao bastão (AB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Rebatidas (H)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Duplas (2B)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
  lb_4.Caption:='Triplas (3B)';
  lb_4.Visible:=True;
  ed_4.Clear;
  ed_4.Visible:=True;
  lb_5.Caption:='Home runs (HR)';
  lb_5.Visible:=True;
  ed_5.Clear;
  ed_5.Visible:=True;
  lb_6.Caption:='Walks (BB)';
  lb_6.Visible:=True;
  ed_6.Clear;
  ed_6.Visible:=True;
  lb_7.Caption:='Bases roubadas (SB)';
  lb_7.Visible:=True;
  ed_7.Clear;
  ed_7.Visible:=True;
  lb_8.Caption:='Roubos capturados (CS)';
  lb_8.Visible:=True;
  ed_8.Clear;
  ed_8.Visible:=True;
end;

procedure TForm1.rb_RCgClick(Sender: TObject);
begin
  ed_Result.Clear;
  lb_1.Caption:='Vezes ao bastão (AB)';
  lb_1.Visible:=True;
  ed_1.Clear;
  ed_1.Visible:=True;
  ed_1.SetFocus;
  lb_2.Caption:='Rebatidas (H)';
  lb_2.Visible:=True;
  ed_2.Clear;
  ed_2.Visible:=True;
  lb_3.Caption:='Duplas (2B)';
  lb_3.Visible:=True;
  ed_3.Clear;
  ed_3.Visible:=True;
  lb_4.Caption:='Triplas (3B)';
  lb_4.Visible:=True;
  ed_4.Clear;
  ed_4.Visible:=True;
  lb_5.Caption:='Home runs (HR)';
  lb_5.Visible:=True;
  ed_5.Clear;
  ed_5.Visible:=True;
  lb_6.Caption:='Walks (BB)';
  lb_6.Visible:=True;
  ed_6.Clear;
  ed_6.Visible:=True;
  lb_7.Caption:='Bases roubadas (SB)';
  lb_7.Visible:=True;
  ed_7.Clear;
  ed_7.Visible:=True;
  lb_8.Caption:='Roubos capturados (CS)';
  lb_8.Visible:=True;
  ed_8.Clear;
  ed_8.Visible:=True;
end;

procedure TForm1.ed_1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    ed_2.SetFocus;
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm1.ed_2KeyPress(Sender: TObject; var Key: Char);
begin
  if (rb_BA.Checked=True) or (rb_BBK.Checked=True) or
  (rb_SBP.Checked=True) then
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

procedure TForm1.ed_3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    ed_4.SetFocus;
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm1.ed_4KeyPress(Sender: TObject; var Key: Char);
begin
  if (rb_TB.Checked=True) or (rb_IsoP.Checked=True) then
    begin
      if key=#13 then
        bt_Calcular.SetFocus;
    end
  else
    begin
      if key=#13 then
        ed_5.SetFocus;
    end;
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm1.ed_5KeyPress(Sender: TObject; var Key: Char);
begin
  if (rb_OBP.Checked=True) or (rb_SLG.Checked=True) then
    begin
      if key=#13 then
        bt_Calcular.SetFocus;
    end
  else
    begin
      if key=#13 then
        ed_6.SetFocus;
    end;
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm1.ed_6KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    ed_7.SetFocus;
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm1.ed_7KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    ed_8.SetFocus;
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm1.ed_8KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    bt_Calcular.SetFocus;
  if not (key in ['0'..'9', #8]) then
    key:=#0;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  rg_Options.SetFocus;
end;

end.

