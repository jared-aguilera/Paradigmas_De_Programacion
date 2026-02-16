archivo = open("holamundo.txt", "r")

texto = archivo.read()
print(texto)

texto_token =  texto.split()
print("Tokens:", texto_token)


