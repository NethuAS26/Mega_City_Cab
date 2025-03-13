# Mega City Cab System

## 🚖 Overview
The **Mega City Cab System** is a Java-based application designed to manage cab bookings efficiently. It enables users to book rides, manage drivers, and calculate fares. The project follows an MVC architecture and is built using **Maven** for dependency management.

## 🏗 Features
- 🔐 **User Authentication** (Login system with username/password)
- 📝 **Customer Booking Management** (Register and track cab bookings)
- 📄 **View Booking Details** (Displays customer orders)
- 💰 **Fare Calculation** (Auto-calculates trip cost with taxes/discounts)
- 🚘 **Driver & Car Management** (Add/manage driver and car details)
- 🛠 **Error Handling & Validation** (Prevents invalid data entry)
- 📊 **Report Generation** (Summarized trip and revenue reports)
- 📅 **Ride Scheduling** (Schedule rides for later)


## 🛠️ Technology Stack
- **Language:** Java (JDK 17+)
- **Build Tool:** Maven
- **Database:** MySQL
- **Frontend:** HTML, CSS, JavaScript 
- **Version Control:** Git, GitHub


## 📸 Screenshots
### Login Page
![Login UI](screenshots/login.png)



## 🚀 Installation & Setup
### Prerequisites
Ensure you have installed:
- Java Development Kit (JDK 11 or later)
- Maven
- MySQL Database
- Git

### Steps to Set Up
1. **Clone the Repository:**
   ```sh
   git clone https://github.com/your-repo-link.git
   cd megacab
   ```
2. **Configure the Database:**
   - Create a MySQL database named `megacab`
   - Update `application.properties` with database credentials
3. **Build & Run the Application:**
   ```sh
   mvn clean install
   mvn spring-boot:run
   ```
4. **Access the System:**
   - Open `http://localhost:8080` in your browser
   - Use test credentials (`admin / password123`)

## 🔄 Version Control Workflow
- **Branching Strategy:** `main` (stable), `develop` (active), feature branches
- **Commit Convention:** `feat: Added booking feature`, `fix: Resolved login issue`
- **Merging Process:** Feature branches → `develop` → `main`



## 📢 Future Enhancements
- 📲 Mobile app integration (Android/iOS)
- 🚀 AI-based fare estimation
- 🤖 Chatbot support for booking assistance
- 🌍 Multi-language support

## 📝 License
This project is licensed under the MIT License.



