from flask import Flask
app = Flask(__name__)

# route
@app.route('/')
# route function
def index():
  return 'server starting...'

# listen
if __name__ == "__main__":
  app.run(host='0.0.0.0', port=8000)
  # if you need to make it live debuging add 'debug=True'
  # app.run(port=3000, debug=True)
