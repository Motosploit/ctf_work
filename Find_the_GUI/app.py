from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    # HTML with flag message and hidden source comment
    return """
    <!-- Flag1337 -->
    <html>
        <body>
            <h1>flag you found it!</h1>
        </body>
    </html>
    """

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=1337)
