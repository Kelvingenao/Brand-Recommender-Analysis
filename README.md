# Brand-Recommender-Analysis
Analisis_de_Recomendacion_de_Marca_con_SQL_Power_BI
# Análisis de Marcas con Mayor Probabilidad de Recomendación

Este proyecto se enfoca en analizar las marcas con la mayor probabilidad de recomendación dentro de un ecommerce. El objetivo es identificar tendencias clave para optimizar las estrategias de marketing y la experiencia del cliente.

## Herramientas Utilizadas
- **SQL**: Para la extracción y procesamiento de datos del ecommerce.
- **Power BI**: Para crear visualizaciones interactivas y realizar el análisis de los datos.

## Estructura del Proyecto

El proyecto está organizado de la siguiente manera:

### 1. **Data Normalization & Setup**
   En esta sección, se realiza la normalización y preparación de los datos. Esto incluye la limpieza de datos, el manejo de valores nulos y la organización de las tablas para asegurar que los datos estén listos para su análisis.

### 2. **QUERY**
   Se utilizan consultas SQL para extraer los datos relevantes para el análisis. Los datos incluyen información sobre las marcas, la probabilidad de recomendación, los precios de los productos, y el comportamiento de los usuarios en días festivos y no festivos.

     ```

### 3. **Data Project (data_proyect)**
   Este es el conjunto de datos principal que contiene la información sobre las marcas, los productos, las recomendaciones y otros atributos relevantes. Los datos fueron procesados para obtener información clave que permita realizar el análisis de recomendación.

### 4. **Insight**
   Los insights derivados del análisis muestran las marcas con mayor probabilidad de recomendación, así como las variaciones en la recomendación según el género y los días festivos.

   #### Marcas con Mayor Probabilidad de Recomendación:
   Las siguientes marcas tienen una probabilidad máxima de recomendación (1.0), lo que indica una alta satisfacción del cliente:
   - PUMA
   - Lee
   - Head Hunters
   - Johnson & Johnson
   - Wakefit
   - Himalaya Liv.52
   - Manyavar Mohey
   - Pepperfry
   - Lee Cooper
   - Flying Machine
   - SleepyCat
   - Streax
   - Lakme Ayurveda
   - Forest Essentials
   - Pepe Jeans London

   #### Comparación por Días Festivos:
   - **Días No Festivos**:
     - Pepe Jeans London (Precio: 10000, Probabilidad: 1.0)
     - Lee Cooper (Precio: 10000, Probabilidad: 0.5)
     - AmazonBasics (Precio: 10000, Probabilidad: 0.4)
   - **Días Festivos**:
     - Godrej Interio (Precio: 10000, Probabilidad: 1.0)
     - Manyavar Mohey (Precio: 10000, Probabilidad: 1.0)
     - Allen Solly Woman (Precio: 10000, Probabilidad: 0.9)
     - Dettol (Precio: 10000, Probabilidad: 1.0)

   #### Promedio de Probabilidad de Recomendación por Género:
   - **General**:
     - Female: 0.63125
     - Male: 0.72944
   - **Días Festivos**:
     - Female: 0.60298
     - Male: 0.70658
   - **Días No Festivos**:
     - Female: 0.65167
     - Male: 0.74489

### 5. **Visualización**
   En esta sección se presentan las visualizaciones interactivas creadas en Power BI. Estas visualizaciones permiten explorar las tendencias de recomendación de marcas, el comportamiento de los usuarios según días festivos, y las variaciones entre géneros.

   - Visualizaciones clave incluyen:
     - Distribución de la probabilidad de recomendación por marca.
     - Comparación de la probabilidad de recomendación entre días festivos y no festivos.
     - Análisis por género de los usuarios.

## Conclusiones
- **Variación en días festivos**: Aunque las marcas con una probabilidad de recomendación de 1.0 no muestran grandes diferencias entre días festivos y no festivos, algunos productos, como **Allen Solly Woman** y **Dettol**, tienen un incremento notable en su probabilidad de recomendación durante los días festivos.
- **Género**: El género masculino muestra una ligera mayor probabilidad de recomendación en comparación con el femenino, tanto en días festivos como no festivos.
- **Precios elevados**: Las marcas con alta probabilidad de recomendación durante los días festivos tienden a tener precios elevados (10000).

---
##para clonar el proyecto 
https://github.com/Kelvingenao/Brand-Recommender-Analysis.git


