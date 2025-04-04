# FROM milvusdb/milvus:v2.3.9

# # FROM milvusdb/milvus:v2.3.0


# # Expose Milvus ports
# EXPOSE 19530
# EXPOSE 9091

# # Run Milvus standalone manually as CMD
# CMD ["/tini", "--", "milvus", "run", "standalone"]

FROM milvusdb/milvus:v2.3.9

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

