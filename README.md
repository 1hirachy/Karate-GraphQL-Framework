# Karate GraphQL Automation Framework

## 🚀 Overview
This framework supports testing GraphQL APIs using the [Rick and Morty API](https://rickandmortyapi.com/graphql). It covers:

- ✅ GraphQL Queries with Variables
- ✅ Negative and Schema Tests
- ✅ Mutations (mocked sample)
- ✅ Load/Performance test samples
- ✅ Extensible structure with JUnit 5 support

## 🧱 Structure
```bash
src/test
├── java/com.example.runner/GraphQLTestRunner.java
├── resources/
│   ├── graphql/ (GraphQL .graphql files)
│   ├── features/ (Karate feature files)
│   └── karate-config.js (timeout/config)
```

## 🏃 How to Run Tests
```bash
mvn test -Dtest=GraphQLTestRunner
```

## 📊 Reporting
This project uses [Karate Reports](https://github.com/intuit/karate#reporting):
```bash
mvn surefire-report:report
```
Then view:
```
target/surefire-reports/index.html
```

## 🧪 CI/CD Integration
GitHub Actions configured under `.github/workflows/karate.yml`
