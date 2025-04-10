# 📈 Análisis de Recomendación de Marca con SQL y Power BI

Este proyecto simulado analiza el comportamiento de recomendación de marcas dentro de un ecommerce. El objetivo es identificar patrones de consumo por día (festivo/no festivo) y por género, y sugerir estrategias que las marcas puedan adaptar junto con sus equipos de análisis para mejorar ventas y experiencia del cliente.

---

## 🛠 Herramientas Utilizadas

- **SQL:** Extracción, limpieza y transformación de datos.
- **Power BI:** Visualización interactiva de los datos y análisis descriptivo.

---

## 🗂 Estructura del Proyecto

### 1. `Data Normalization & Setup`
Preparación del dataset, limpieza, manejo de valores nulos y estructuración para asegurar calidad y consistencia en el análisis.

### 2. `Query`
Consultas SQL enfocadas en:
- Probabilidad de recomendación por marca.
- Comportamiento por días festivos y no festivos.
- Diferencias por género.
- Precio de productos más recomendados.

### 3. `Data Project (data_proyect)`
Dataset principal procesado que contiene:
- Marca
- Probabilidad de recomendación
- Género del cliente
- Precio
- Día (festivo o no festivo)

### 4. `Insights`

#### 🔝 Marcas con Mayor Probabilidad de Recomendación (1.0):
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

#### 📅 Comparación por Tipo de Día:

**Días Festivos:**
- Godrej Interio (10000, 1.0)  
- Manyavar Mohey (10000, 1.0)  
- Allen Solly Woman (10000, 0.9)  
- Dettol (10000, 1.0)  

**Días No Festivos:**
- Pepe Jeans London (10000, 1.0)  
- Lee Cooper (10000, 0.5)  
- AmazonBasics (10000, 0.4)  

#### 👩‍🦰👨 Promedio de Recomendación por Género:

| Tipo de Día     | Femenino | Masculino |
|----------------|----------|-----------|
| General        | 0.63125  | 0.72944   |
| Festivos       | 0.60298  | 0.70658   |
| No Festivos    | 0.65167  | 0.74489   |

---

## 📊 Visualización en Power BI

- Distribución de la probabilidad de recomendación por marca.
- Comparación entre días festivos y no festivos.
- Análisis del comportamiento de compra por género.
- Relación entre precio y recomendación.

---

## 💡 Conclusiones

- **Estrategias exitosas en días festivos** pueden ser replicadas en días no festivos por marcas como Godrej Interio o Dettol.
- **Los hombres tienen mayor probabilidad de recomendar**, pero **las mujeres suelen comprar más**, lo que indica una posible brecha en experiencia de usuario.
- Marcas con bajo rendimiento festivo (Lee Cooper, AmazonBasics) pueden mejorar con promociones específicas o campañas dirigidas.
- Productos con alta recomendación en días festivos tienden a tener **precios elevados (10000)**.

---

## 🚀 Propuesta de Estrategia General

Consulta el archivo [`estrategia_general.md`](estrategia_general.md) para una estrategia general basada en este análisis, que las marcas pueden adaptar con sus propios datos.

---

## 📝 Nota Final

Este proyecto tiene fines educativos y los datos son simulados. Las ideas aquí propuestas pueden adaptarse con mayor precisión en un entorno real mediante la incorporación de más variables como edad, región, frecuencia de compra, etc.



