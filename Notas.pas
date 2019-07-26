Program Pzim ;

Const
Max = 2;

type
Aluno = record
nome:string;
Numero:string;
Nota1:real;
Nota2:real;
Nota3:real;
Nota4:real;
NotaFinal:real;
end;

Var
Classe: array [1..max] of Aluno;
i:integer;
x,n:char;

procedure ColocarNome;
 Begin
  For i:=1 to max do
   Begin
    Write ('Nome do do aluno: ');
    Read (Classe[i].nome);
    Writeln;
    Write ('Número da Chamada: ');
    Read (Classe[i].Numero);
    Writeln;
   End;
 End;
 
Procedure ColocarNota;
 Begin
  For i:=1 to max do
   Begin
    Writeln;
    Write ('Nota do primeiro bimestre do ', Classe[i].nome,': ');
    Read (Classe[i].nota1);
    Writeln;
    Write ('Nota do segundo bimestre do ', Classe[i].nome,': ');
    Read (Classe[i].nota2);
    Writeln;
    Write ('Nota do terceiro bimestre do ', Classe[i].nome,': ');
    Read (Classe[i].nota3);
    Writeln;
    Write ('Nota do quarto bimestre do ', Classe[i].nome,': ');
    Read (Classe[i].nota4);
    Writeln;
   End;
 End;
 
procedure NotaFinall;
 Begin
  For i:=1 to max do
   Begin
    Classe[i].NotaFinal:= (Classe[i].nota1 + Classe[i].nota2 + Classe[i].nota3 + Classe[i].nota4)/4;
    Writeln;
    Writeln ('Média final do ', Classe[i].nome,': ',Classe[i].NotaFinal);
   end;
 end; 
   
Procedure mostrar;
 Begin
  For i:=1 to max do
   Begin
    Writeln;
    Writeln ('Nome: ',Classe[i].nome);
    Writeln ('Número: ',Classe[i].numero);
    Writeln ('Nota Final: ', Classe[i].NotaFinal);
   End; 
 End;   

 Begin
  n:= 's';
  Repeat
  Writeln;
  Writeln ('O quê você quer fazer?');
  Writeln ('1 - Colocar nome e número do Aluno');
  Writeln ('2 - Colocar notas');
  Writeln ('3 - Calcular média final');
  Writeln ('4 - Mostrar lista');
  Read (x);
   if x = '1' then
    ColocarNome;
   if x = '2' then
    ColocarNota;
   If x = '3' then
    NotaFinall;
   if x = '4' then
    mostrar;
  Writeln;  
  Writeln ('Continuar?');
  Read (n);
  Until n = 'n';               
 End.
