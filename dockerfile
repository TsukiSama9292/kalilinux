FROM kalilinux/kali-rolling:latest

RUN apt update && apt upgrade -y && \
    apt install -y \
    nmap \
    traceroute \
    tcptraceroute

# Clean up
RUN apt clean && \
    rm -rf /var/lib/apt/lists/*