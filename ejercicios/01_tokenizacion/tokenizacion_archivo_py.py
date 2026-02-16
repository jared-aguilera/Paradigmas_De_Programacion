import os
import keyword
os.system("cls")
lista_operadores = ["=", "+", "-", "*", "/", "(", ")", "{", "}", ":", '"', "'"]

def analizar(codigo):
    
    tokens = []
    
    for operador in lista_operadores:
        codigo = codigo.replace(operador, f" {operador} ")

    palabras = codigo.split()

    for palabra in palabras:
        if palabra.isdigit():
            tokens.append(f"NUMERO({palabra})")
        elif palabra == "=":
            tokens.append("OPERADOR_ASIGNACION(=)")
        elif palabra == "+":
            tokens.append("OPERADOR_SUMA(+)")
        elif palabra == "-":
            tokens.append("OPERADOR_RESTA(-)")
        elif palabra == "*":
            tokens.append("OPERADOR_MULTIPLICACION(*)")
        elif palabra == "/":
            tokens.append("OPERADOR_DIVISION(/)")
        elif keyword.iskeyword(palabra):
            
            tokens.append(f"PALABRA_RESERVADA({palabra})")            
        elif palabra.isidentifier():
            tokens.append(f"IDENTIFICADOR({palabra})")
        else:
            tokens.append(f"SIMBOLO({palabra})")
    return tokens

with open("holamundo.py", "r") as archivo:
    codigo = archivo.read()
    print("Codigo fuente:\n", codigo)

    print("\nTokens generados:")
    for tok in analizar(codigo):
        print(tok)