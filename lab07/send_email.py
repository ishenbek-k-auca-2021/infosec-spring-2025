import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

def send_email():
    sender = "ishenbek_k@auca.kg"
    receiver = "ishenbek_k@auca.kg"
    subject = "Cron Job Status"
    body = "This is a test email from the cron job."

    # Setup the MIME
    msg = MIMEMultipart()
    msg['From'] = sender
    msg['To'] = receiver
    msg['Subject'] = subject
    msg.attach(MIMEText(body, 'plain'))

    # SMTP Server configuration
    server = smtplib.SMTP('smtp.auca.kg', 587)
    server.starttls()
    server.login(sender, 'pswd123')

    # Send email
    text = msg.as_string()
    server.sendmail(sender, receiver, text)
    server.quit()

if __name__ == "__main__":
    send_email()
