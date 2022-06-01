//Leer tres n�meros que denoten una fecha (d�a, mes, a�o) y comprobar que sea una fecha
//v�lida. Si la fecha no es v�lida escribir un mensaje de error por pantalla. Si la fecha es
//v�lida se debe imprimir la fecha cambiando el n�mero que representa el mes por su
//nombre. Por ejemplo: si se introduce 1 2 2006, se deber� imprimir ?1 de febrero de 2006?.

Funcion  validarFecha(dia, nomMes, anio, mes)
	dia <- dia
	nomMes <- nomMes
	anio <- anio;
	mes <- mes;
	error <- 'Fecha invalida'
	si mes == 2 Entonces
		Si (anio MOD 400==0) O (anio MOD 4==0) Y (anio MOD 100<>0) Entonces
			Si dia<=29 Entonces
				Escribir dia,nomMes,anio;
			FinSi
		SiNo
			Si dia<=28 Entonces
				Escribir dia,nomMes,anio;
			SiNo
				Escribir  error
			FinSi
		FinSi
	SiNo
		Si (mes == 1) o (mes == 3) o (mes == 5) o (mes == 7) o (mes == 8) o (mes == 10) o (mes == 12) Entonces
			Si dia<=31 Entonces
				Escribir dia, nomMes, anio;
			SiNo
				Escribir  error
			FinSi
		SiNo
			Si dia<=30 Entonces
				Escribir dia, nomMes, anio;
			SiNo
				Escribir error
			FinSi
		FinSi
	FinSi
Fin Funcion

Algoritmo validarFechas
	Definir dia,mes,anio Como Entero;
	Definir nomMes Como Caracter;
	Escribir 'D�a: ';
	Leer dia;
	Escribir 'Mes: ';
	Leer mes;
	Escribir 'A�o: ';
	Leer anio;
	Si (mes<=12) Y (anio>=0) Entonces;
		Segun mes  Hacer
			1:
				nomMes <- ' de Enero de ';
				validarFecha(dia, nomMes, anio, mes);
			2:
				nomMes <- ' de Febrero de ';
				validarFecha(dia, nomMes, anio, mes);
			3:
				nomMes <- ' de Marzo de '
				validarFecha(dia, nomMes, anio, mes);
			4:
				nomMes <- ' de Abril de '
				validarFecha(dia, nomMes, anio, mes);
			5:
				nomMes <- ' de Mayo de '
				validarFecha(dia, nomMes, anio, mes);
			6:
				nomMes <- ' de Junio de '
				validarFecha(dia, nomMes, anio, mes);
			7:
				nomMes <- ' de Julio de '
				validarFecha(dia, nomMes, anio, mes);
			8:
				nomMes <- ' de Agosto de '
				validarFecha(dia, nomMes, anio, mes);
			9:
				nomMes <- ' de Septiembre de '
				validarFecha(dia, nomMes, anio, mes);
			10:
				nomMes <- ' de Octubre de '
				validarFecha(dia, nomMes, anio, mes);
			11:
				nomMes <- ' de Noviembre de '
				validarFecha(dia, nomMes, anio, mes);
			12:
				nomMes <- ' de Diciembre de '
				validarFecha(dia, nomMes, anio, mes);
			De Otro Modo:
				Escribir 'ERROR'
		FinSegun
	SiNo
		Escribir "Fecha error"
	FinSi
FinAlgoritmo
