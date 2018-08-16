program Project_Beisebol;

uses
  Forms,
  Beisebol in 'Beisebol.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Beisebol Stats';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
