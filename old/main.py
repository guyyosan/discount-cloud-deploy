import os

from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/hi")
def test():
    return jsonify({"status": 200, "msg": "hi"})


if __name__ == "__main__":
    os.environ["OAUTHLIB_RELAX_TOKEN_SCOPE"] = "1"
    os.environ["OAUTHLIB_INSECURE_TRANSPORT"] = "1"
    app.run(debug=True)  # nosec
