# 🗂️ Simply Big Data: Build a Scalable Data Lake with Iceberg and MinIO 🚀

> **Simplify Big Data Management**: Easily set up a robust data lake leveraging **Apache Iceberg**, **MinIO**, and **Spark**. This setup is perfect for running SQL queries on massive datasets, scaling data processing, and enabling fast and interactive analytics.

---

## 🌟 Key Features

- **Modern Data Lakehouse Architecture**: Combines Iceberg's table format with MinIO's S3-compatible object storage for a powerful, scalable data lake solution.
- **Interactive Analytics**: Integrates **Jupyter Notebook** for easy data exploration and **DBeaver** for SQL-based data querying.
- **High-Performance Data Processing**: Built with **Apache Spark**, allowing distributed data processing and seamless horizontal scaling.
- **Cloud-Ready**: Easily switch from MinIO to **AWS S3** or any S3-compatible service.

---

## 🛠️ Core Components

1. **Iceberg + MinIO**:
   - Iceberg as the table format for managing large datasets.
   - MinIO as the local S3-compatible storage backend (can be replaced with AWS S3).

2. **Spark Cluster**:
   - Distributed data processing with Spark master and worker nodes.
   - Utilizes **Docker Swarm** for scalable clustering.

3. **Jupyter Notebook**:
   - Interactive interface for running and testing Spark jobs.

4. **Spark Thrift Server**:
   - Enables SQL clients like DBeaver to connect and run queries on your data lake.

---

## 🚀 Getting Started

### Prerequisites
- **Docker** and **Docker Compose** installed.
- Basic knowledge of Big Data and containerized environments.

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/simply-big-data.git
   cd simply-big-data
   ```

2. Start all services:
   ```bash
   sh ./runner.sh start
   ```
   > **Note**: Wait for all components to initialize before proceeding.

3. Access the services:
   - **Jupyter Notebook**: [http://localhost:8888](http://localhost:8888)
   - **Spark Master Web UI**: [http://localhost:8080](http://localhost:8080)
   - **MinIO Console**: [http://localhost:9001](http://localhost:9001)

4. Stop all services:
   ```bash
   sh ./runner.sh stop
   ```

---

## 🎨 Demo Usage

### Query Iceberg Tables via SQL

1. Open **DBeaver** and configure a connection to Spark SQL:
   - Host: `localhost`
   - Port: `10000`

2. Run SQL queries on Iceberg tables:
   ```sql
   SELECT * FROM iceberg_table_name LIMIT 10;
   ```

3. Visualize and analyze results directly within DBeaver.

### Explore Data with Jupyter Notebook

- Launch Jupyter Notebook and write Spark jobs in Python or Scala to explore your datasets interactively.

---

## 🤝 Contributing

We welcome contributions! To contribute:

1. Fork the repository.
2. Create a new feature branch:
   ```bash
   git checkout -b feature-branch
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add a meaningful description of your changes"
   ```
4. Push the branch:
   ```bash
   git push origin feature-branch
   ```
5. Open a pull request for review.

---

## 📄 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## 📞 Support

For issues or questions, feel free to open an issue in this repository or contact us via email at support@simplybigdata.com.

---

🎉 **Start building your Big Data solutions today with Simply Big Data!** 🚀
