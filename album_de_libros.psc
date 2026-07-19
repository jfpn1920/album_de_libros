Algoritmo album_de_libros
	Definir opcion, totalLibros Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Dimension id[100]
	Dimension titulo[100]
	Dimension autor[100]
	Dimension genero[100]
	Dimension editorial[100]
	Dimension anio[100]
	Dimension paginas[100]
	Dimension estado[100]
	totalLibros <- 0
	siguienteID <- 1
	//---------------------------------//
	//--|menu_principal_album_libros|--//
	//---------------------------------//
	Repetir
		Escribir "menu principal álbum de libros"
		Escribir "1) registrar libro"
		Escribir "2) editar libro"
		Escribir "3) eliminar libro"
		Escribir "4) buscar libro"
		Escribir "5) listar libros"
		Escribir "6) ver detalles del libro"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//---------------------//
			//--|registrar_libro|--//
			//---------------------//
			1:
				Escribir "registrar libro"
				id[totalLibros + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalLibros + 1]
				Escribir "ingrese el título:"
				Leer titulo[totalLibros + 1]
				Escribir "ingrese el autor:"
				Leer autor[totalLibros + 1]
				Escribir "ingrese el género:"
				Leer genero[totalLibros + 1]
				Escribir "ingrese la editorial:"
				Leer editorial[totalLibros + 1]
				Escribir "ingrese el año de publicación:"
				Leer anio[totalLibros + 1]
				Escribir "ingrese el número de páginas:"
				Leer paginas[totalLibros + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalLibros + 1]
				totalLibros <- totalLibros + 1
				Escribir "libro registrado correctamente."
			//------------------//
			//--|editar_libro|--//
			//------------------//
			2:
				Escribir "editar libro"
				Si totalLibros = 0 Entonces
					Escribir "no hay libros registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalLibros Hacer
						Escribir id[i], " | ", titulo[i], " | ", autor[i], " | ", genero[i], " | ", editorial[i], " | ", anio[i], " | ", paginas[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del libro:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalLibros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo título:"
							Leer titulo[i]
							Escribir "ingrese el nuevo autor:"
							Leer autor[i]
							Escribir "ingrese el nuevo género:"
							Leer genero[i]
							Escribir "ingrese la nueva editorial:"
							Leer editorial[i]
							Escribir "ingrese el nuevo año de publicación:"
							Leer anio[i]
							Escribir "ingrese la nueva cantidad de páginas:"
							Leer paginas[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "libro editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un libro con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|eliminar_libro|--//
			//--------------------//
			3:
				Escribir "eliminar libro"
				Si totalLibros = 0 Entonces
					Escribir "no hay libros registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalLibros Hacer
						Escribir id[i], " | ", titulo[i], " | ", autor[i], " | ", genero[i], " | ", editorial[i], " | ", anio[i], " | ", paginas[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del libro:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalLibros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalLibros Entonces
								Para j <- i Hasta totalLibros - 1 Hacer
									id[j] <- id[j + 1]
									titulo[j] <- titulo[j + 1]
									autor[j] <- autor[j + 1]
									genero[j] <- genero[j + 1]
									editorial[j] <- editorial[j + 1]
									anio[j] <- anio[j + 1]
									paginas[j] <- paginas[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalLibros <- totalLibros - 1
							Escribir "libro eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un libro con ese id."
					FinSi
				FinSi
			//------------------//
			//--|buscar_libro|--//
			//------------------//
			4:
				Escribir "buscar libro"
				Si totalLibros = 0 Entonces
					Escribir "no hay libros registrados."
				SiNo
					Escribir "ingrese el id del libro:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalLibros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos registrados encontrado"
							Escribir id[i], " | ", titulo[i], " | ", autor[i], " | ", genero[i], " | ", editorial[i], " | ", anio[i], " | ", paginas[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un libro con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|listar_libros|--//
			//-------------------//
			5:
				Escribir "listar libros"
				Si totalLibros = 0 Entonces
					Escribir "no hay libros registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalLibros Hacer
						Escribir id[i], " | ", titulo[i], " | ", autor[i], " | ", genero[i], " | ", editorial[i], " | ", anio[i], " | ", paginas[i], " | ", estado[i]
					FinPara
				FinSi
			//------------------------//
			//--|ver_detalles_libro|--//
			//------------------------//
			6:
				Escribir "ver detalles del libro"
				Si totalLibros = 0 Entonces
					Escribir "no hay libros registrados."
				SiNo
					Escribir "ingrese el id del libro:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalLibros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del libro"
							Escribir "id: ", id[i]
							Escribir "título: ", titulo[i]
							Escribir "autor: ", autor[i]
							Escribir "género: ", genero[i]
							Escribir "editorial: ", editorial[i]
							Escribir "año de publicación: ", anio[i]
							Escribir "páginas: ", paginas[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un libro con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|salir_menu_principal|--//
			//--------------------------//
			7:
				Escribir "gracias por utilizar el álbum de libros."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo