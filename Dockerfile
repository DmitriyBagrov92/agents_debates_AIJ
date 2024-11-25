# Используем официальный образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл зависимостей и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы приложения в контейнер
COPY . .

# Указываем порт, который будет использоваться приложением
EXPOSE 8501

# Указываем команду для запуска приложения
CMD ["streamlit", "run", "debates.py"]