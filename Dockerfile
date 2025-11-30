# Use official lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Initialize Database & Memory on startup
# (In prod, you'd connect to Cloud SQL, but this inits the local db for the container)
RUN python -c "from insightswarm import init_db; init_db()"

# Expose port for Agent Engine or Cloud Run
EXPOSE 8080

# Start the Agent
CMD ["python", "insightswarm.py"]