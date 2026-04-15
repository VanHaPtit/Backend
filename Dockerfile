# Dùng Java runtime nhẹ
FROM openjdk:17-jdk-slim

# Tạo thư mục trong container
WORKDIR /app

# Copy file jar vào container
COPY target/app.jar app.jar

# Chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]