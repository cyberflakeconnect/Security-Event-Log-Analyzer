# Security-Event-Log-Analyzer

Here's a basic shell script to analyze security event logs for detecting and responding to potential security threats. This script will scan a log file for specific patterns that might indicate security incidents such as failed login attempts or unauthorized access. It will then take action, such as sending an alert email if any suspicious activity is detected.

# Explanation:
<b>Log_file:</b> The path to the log file to be analyzed. In this case, it is set to /var/log/auth.log, which is commonly used for authentication-related logs.<br>
<b>Patterns:</b> An array of patterns to search for in the log file. These patterns include common indicators of security incidents.<br>
<b>Send_alert:</b> A function that sends an alert email with the detected security incident details.<br>
<b>Analyze_logs:</b> A function that scans the log file for the specified patterns. If any matches are found, it compiles the information and calls send_alert.<br>
<b>Main Script Execution:</b> The script calls the analyze_logs function to start the analysis process.<br>

# Note:
<ul>
<li>This script requires the sendmail command to be configured on the system for sending emails. Alternatively, you can use other tools like mail or ssmtp depending on your email setup.</li>
<li>Make sure the script has the necessary permissions to read the log file and send emails.</li>
<li>The patterns can be adjusted based on the specific requirements and the type of security incidents you want to detect.</li>
</ul>
<br>
Save this script as security_log_analyzer.sh, make it executable with chmod +x security_log_analyzer.sh, and run it periodically using a cron job to automate the log analysis and alerting process.
