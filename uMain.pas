unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, DBAccess, Uni,
  MemDS;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    qBibleCalc: TUniQuery;
    UniConnection: TUniConnection;
    UniQuery1: TUniQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    function CalculateValue(Str: String): Integer;
    function GetGematriaValuefromChar(Chr: Char): Integer;
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

type
  TGematria = record
    Buchstabe: Char;
    Wert: Integer;
  end;


const
   EnglishGematriaArray : Array[0..25] of TGematria =        ((Buchstabe:'A';Wert:6),
                                                              (Buchstabe:'B';Wert:12),
                                                              (Buchstabe:'C';Wert:18),
                                                              (Buchstabe:'D';Wert:24),
                                                              (Buchstabe:'E';Wert:30),
                                                              (Buchstabe:'F';Wert:36),
                                                              (Buchstabe:'G';Wert:42),
                                                              (Buchstabe:'H';Wert:48),
                                                              (Buchstabe:'I';Wert:54),
                                                              (Buchstabe:'J';Wert:60),
                                                              (Buchstabe:'K';Wert:66),
                                                              (Buchstabe:'L';Wert:72),
                                                              (Buchstabe:'M';Wert:78),
                                                              (Buchstabe:'N';Wert:84),
                                                              (Buchstabe:'O';Wert:90),
                                                              (Buchstabe:'P';Wert:96),
                                                              (Buchstabe:'Q';Wert:102),
                                                              (Buchstabe:'R';Wert:108),
                                                              (Buchstabe:'S';Wert:114),
                                                              (Buchstabe:'T';Wert:120),
                                                              (Buchstabe:'U';Wert:126),
                                                              (Buchstabe:'V';Wert:132),
                                                              (Buchstabe:'W';Wert:138),
                                                              (Buchstabe:'X';Wert:144),
                                                              (Buchstabe:'Y';Wert:150),
                                                              (Buchstabe:'Z';Wert:156));

  SimpleGematriaArray : Array[0..25] of TGematria =          ((Buchstabe:'A';Wert:1),
                                                              (Buchstabe:'B';Wert:2),
                                                              (Buchstabe:'C';Wert:3),
                                                              (Buchstabe:'D';Wert:4),
                                                              (Buchstabe:'E';Wert:5),
                                                              (Buchstabe:'F';Wert:6),
                                                              (Buchstabe:'G';Wert:7),
                                                              (Buchstabe:'H';Wert:8),
                                                              (Buchstabe:'I';Wert:9),
                                                              (Buchstabe:'J';Wert:10),
                                                              (Buchstabe:'K';Wert:11),
                                                              (Buchstabe:'L';Wert:12),
                                                              (Buchstabe:'M';Wert:13),
                                                              (Buchstabe:'N';Wert:14),
                                                              (Buchstabe:'O';Wert:15),
                                                              (Buchstabe:'P';Wert:16),
                                                              (Buchstabe:'Q';Wert:17),
                                                              (Buchstabe:'R';Wert:18),
                                                              (Buchstabe:'S';Wert:19),
                                                              (Buchstabe:'T';Wert:20),
                                                              (Buchstabe:'U';Wert:21),
                                                              (Buchstabe:'V';Wert:22),
                                                              (Buchstabe:'W';Wert:23),
                                                              (Buchstabe:'X';Wert:24),
                                                              (Buchstabe:'Y';Wert:25),
                                                              (Buchstabe:'Z';Wert:26));

var
  MainForm: TMainForm;
  Bible: TStringList;

implementation

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);
begin
  Bible := TStringList.Create;
  Bible.LoadFromFile('C:\Users\Entwicklung\Desktop\Bible Gematria\bible.txt');
  ShowMessage('Loaded');
end;

procedure TMainForm.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Bible.Count do
    begin
    //Calc
    end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Bible.Free;
end;

function TMainForm.CalculateValue(Str: String): Integer;
var
  Target:       String;
  TargetLength: Integer;
  i:            Integer;
  CharValue:    Integer;
begin
  CharValue := 0;
  Result := 0;

  Target := UpperCase(Str);
  TargetLength := Length(Target);

  for i := 1 to TargetLength  do
  begin
    CharValue := GetGematriaValuefromChar(Target[i]);
    Result := Result + CharValue;
  end;

 // Result := Result;
end;

function TMainForm.GetGematriaValuefromChar(Chr: Char): Integer;
var
  i: Integer;
begin
  if (Chr = #0) OR (Chr = '') OR (Chr = ' ') OR (Chr = '.')  then
  begin
    Result := 0;
  end
  else
  begin
    for i := 0 to 26  do
      begin
        if Chr = EnglishGematriaArray[i].Buchstabe then
        begin
          Result := EnglishGematriaArray[i].Wert;
          Exit;
        end;
      end;
  end
end;

end.
