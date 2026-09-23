FROM python:3.11-slim

WORKDIR /workspace

# Install the pinned notebook dependencies first so Docker can reuse this layer
# when only the notebook or README changes.
COPY requirements.txt .
RUN python -m pip install --no-cache-dir --upgrade pip \
    && python -m pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
