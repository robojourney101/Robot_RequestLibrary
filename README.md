# 🚀 API Testing with Robot Framework - RequestsLibrary

## 📖 Overview
This project demonstrates how to test REST APIs using **Robot Framework** with **RequestsLibrary**.  
It covers the four main HTTP methods used in RESTful services:
- `GET` – Read data
- `POST` – Create data
- `PUT` – Update data
- `DELETE` – Remove data

We use **[httpbin.org](https://httpbin.org)** as the test API, which is a public HTTP request & response service perfect for learning and demonstrations.

---

## 🛠 Prerequisites
- Python 3.8+  
- [Robot Framework](https://robotframework.org/)  
- [RequestsLibrary](https://github.com/MarketSquare/robotframework-requests)  
- [RequestsLibrary Keywords](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html) 

Install required packages:
```bash
pip3 install robotframework
pip3 install robotframework-requests
```

Run the test suite with:
```bash
robot -d result api_tests.robot
```

📚 References
[Robot Framework Official Site](https://robotframework.org/) 
[RequestsLibrary Documentation](https://marketsquare.github.io/robotframework-requests/)
[httpbin.org](https://httpbin.org/)

💡 Notes
- **verify=False** & **disable_warnings=1** are used here to avoid SSL verification issues during demos.
In production, always enable SSL verification for security.
- httpbin.org echoes back your request, making it ideal for learning and debugging.
- Each test is isolated — Create Session is called in each case for clarity in teaching.

