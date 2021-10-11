unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DES, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Label3: TLabel;
    Memo2: TMemo;
    Button2: TButton;
    Memo3: TMemo;
    Label4: TLabel;
    Memo4: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
  private
    { Private declarations }
  public
    Data:TBitString;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Var
I:Integer;
S:String;
begin
IF ((Length(Memo1.Text)mod 8 <> 0) OR (Length(Edit1.Text)mod 8 <> 0)) Then
  Begin
  MessageBox(Handle,
  'Количество букв в сообщении должно быть кратоно 8 (перевод строки считается за 2 буквы)'+
  #10#13'Ключ должен состоять из 8 символов',
  Nil,MB_ICONSTOP);
  Exit;
  End;
SetLength(Data,0);
I:=1;
While I<=Length(Memo1.Text) Do
  Begin
  S:=Copy(Memo1.Text,I,8);
  Data:=ConcatBits([Data,DESEncode(S,Edit1.Text)]);
  I:=I+8;
  End;
Memo2.Text:=BinToAnsiStr(Data);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
I:Integer;
begin
IF ((Length(Memo2.Text)mod 8 <> 0) OR (Length(Edit1.Text)mod 8 <> 0)) Then
  Begin
  MessageBox(Handle,
  'Количество букв в сообщении должно быть кратоно 8 (перевод строки считается за 2 буквы)'+
  #10#13'Ключ должен состоять из 8 символов',
  Nil,MB_ICONSTOP);
  Exit;
  End;
SetLength(Data,0);
I:=1;
While I<=Length(Memo2.Text) Do
  Begin
  Data:=ConcatBits([Data,DESDecode(Copy(Memo2.Text,I,8),Edit1.Text)]);
  I:=I+8;
  End;
Memo1.Text:=BinToAnsiStr(Data);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
IF Memo1.Text<>'' Then
  Memo3.Text:=BinToStr(AnsiStrToBin(Memo1.Text))
Else Memo3.Clear;
Label2.Caption:='Message - ('+IntToStr(Length(Memo1.Text))+' characters)';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Memo1.OnChange(Self);
Edit1.OnChange(Self);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
Label4.Caption:=IntToStr(Length(Edit1.Text))+' characters';
end;

procedure TForm1.Memo2Change(Sender: TObject);
begin
IF Memo2.Text<>'' Then
  Memo4.Text:=BinToStr(AnsiStrToBin(Memo2.Text))
Else Memo4.Clear;
Label3.Caption:='Encoded message - ('+IntToStr(Length(Memo2.Text))+' characters)';
end;

end.
