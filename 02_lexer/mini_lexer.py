import keyword
import os


os.system("cls")

class Token:
    def __init__(self, tipo, valor):
        self.tipo = tipo
        self.valor = valor

    def __repr__(self):
        return f"Token({self.tipo}, {repr(self.valor)})"

def simple_lexer(codigo):
    tokens = []
    i = 0
    while i < len(codigo):
        c = codigo[i]

        # --- Este es para numeros ---
        if c.isdigit():
            num = c
            i += 1
            while i < len(codigo) and codigo[i].isdigit():
                num += codigo[i]
                i += 1
            # Numeros
            tokens.append(Token("NUMBER", num))
            continue

        # --- Este es para palabras reservadas e identificadores ---
        elif c.isalpha():
            ident = c
            i += 1
            while i < len(codigo) and codigo[i].isalnum():
                ident += codigo[i]
                i += 1
                
            # Palabras Reservadas
            if (keyword.iskeyword(ident)):
                tokens.append(Token("KEYWORD", ident))
            
            # Identificadores
            else:
                tokens.append(Token("IDENTIFIER", ident))
            continue
        
        # --- Este es para cadenas de texto ---
        elif c == '"' or c == "'":
            quote = c
            i += 1
            texto = ""

            while i < len(codigo) and codigo[i] != quote:
                texto += codigo[i]
                i += 1
            # Cadenas de texto
            tokens.append(Token("STRING", texto))

            i += 1 
            continue
        
        # --- Este es para comentarios ---
        elif c == '#':
            while i < len(codigo) and codigo[i] != '\n':
                i += 1
            continue
        

        # --- Este es para operadores y otros caracteres ---
        elif c == '+':  # Operador suma
            tokens.append(Token("PLUS", c))
        elif c == '=':  # Asignación
            tokens.append(Token("ASSIGN", c))
        elif c == "-":
            tokens.append(Token("MINUS", c))
        elif c == "*":
            tokens.append(Token("MULTIPLY", c))
        elif c.isspace():
            pass  # ignorar espacios
        else:
            tokens.append(Token("UNKNOWN", c))

        i += 1

    return tokens



# Probar
with open("ejemplo_code.py", "r") as f:
    codigo = f.read()

print(simple_lexer(codigo))
