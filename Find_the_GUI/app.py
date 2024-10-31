from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    # HTML with flag message and hidden source comment, change the below to change the flags
    return """
    <!-- MiniCTF-{Recon-1s-t3h-F1rst-St3p-T0-3everyth1ng} -->
    <html>
        <body>
            <h1>MiniCTF-{Recon-1s-t3h-F1rst-St3p-T0-3everyth1ng}</h1>
        </body>
    </html>
    """

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=1337)
