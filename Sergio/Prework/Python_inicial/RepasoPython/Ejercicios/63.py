'''PALABRAS COMUNES 
Encuentra o crea algunos textos que te gustaría analizar (puedes visitar 
Project Gutenberg (http://gutenberg.org/) o crear textos usando ChatGPT). 
Copia el texto sin formato desde tu navegador en un archivo de texto en tu 
computadora (o descarga los archivos). Averigua cuántas veces aparece una 
palabra o frase en el texto (puedes usar el método count()).'''

def contarPalabras(archivo):
    try:
        f = open(archivo)
    except FileNotFoundError:
        print('ERROR: Archivo no encontrado')
    else:
        texto = f.read()
        palabras = texto.count('casa')
        print(palabras)

contarPalabras('texto.txt')
contarPalabras('notexto.txt')