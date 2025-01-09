''' PALABRAS COMUNES 
Encuentra o crea algunos textos que te gustaría analizar (puedes visitar 
Project Gutenberg (http://gutenberg.org/) o crear textos usando ChatGPT). 
Copia el texto sin formato desde tu navegador en un archivo de texto en tu 
computadora (o descarga los archivos). Averigua cuántas veces aparece una 
palabra o frase en el texto (puedes usar el método count()).'''

try:
    texto = open('texto.txt', 'r+')
except FileNotFoundError:
    print('Error: archivo no encontrado')
else:
    texto = texto.read()
    contador = texto.count('casa')
    print(f'La palabra "casa" aparece {contador} veces')

