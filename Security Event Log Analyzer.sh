#!/bin/bash

# Define the log file to be analyzed
LOG_FILE="/var/log/auth.log"

# Define the patterns to search for
PATTERNS=("Failed password" "authentication failure" "Invalid user" "root login")

# Define the email address to send alerts
ALERT_EMAIL="admin@example.com"

# Function to send an alert email
send_alert() {
    local message=$1
    echo -e "Subject: Security Alert\n\n$message" | sendmail $ALERT_EMAIL
}

# Function to analyze the log file
analyze_logs() {
    local detected=false
    local message="Security Incident Detected:\n\n"

    for pattern in "${PATTERNS[@]}"; do
        matches=$(grep -i "$pattern" "$LOG_FILE")
        if [ ! -z "$matches" ]; then
            detected=true
            message+="Pattern: $pattern\n"
            message+="Matches:\n$matches\n\n"
        fi
    done

    if $detected; then
        send_alert "$message"
    fi
}

# Run the log analysis
analyze_logs
