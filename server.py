import os
from main import app

os.environ["OAUTHLIB_RELAX_TOKEN_SCOPE"] = "1"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)