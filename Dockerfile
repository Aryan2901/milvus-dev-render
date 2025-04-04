FROM milvusdb/milvus:v2.3.0

# FROM milvusdb/milvus:v2.3.0


# Expose Milvus ports
EXPOSE 19530
EXPOSE 9091

# Run Milvus standalone manually as CMD
CMD ["/tini", "--", "milvus", "run", "standalone"]
