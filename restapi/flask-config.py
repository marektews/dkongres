""" Flask App configuration """

SECRET_KEY = "grzegorzbrzeczyszczykiewicz"
ACTIVE_DAY = "d1"     # d1 | d2| d3

MAIL_SERVER = 'smtp.gmail.com'
MAIL_PORT = 587
MAIL_DEFAULT_SENDER = 'kwra2023@gmail.com'
MAIL_USERNAME = 'kwra2023@gmail.com'
MAIL_PASSWORD = 'fjylfjzokmsohoyb'
MAIL_USE_TLS = True
MAIL_USE_SSL = False

#
# dialect+driver://username:password@host:port/database
#
# mysql://username:password@host:port/database_name
# Production
# SQLALCHEMY_DATABASE_URI = "mysql+mysqldb://api:matuzalem@127.0.0.1:33060/kw23"
# Debug
# SQLALCHEMY_DATABASE_URI = "mysql+mysqldb://kongres:kr2024@127.0.0.1:3306/kongres"
# Inside Docker networking
SQLALCHEMY_DATABASE_URI = "mysql+mysqldb://kongres:kr2024@db:3306/kongres"
# SQLALCHEMY_BINDS = 

# Websockets
SOCK_SERVER_OPTIONS = {'ping_interval': 25}

# MQTT broker
MQTT_BROKER_HOST = "broker"
MQTT_BROKER_PORT = 1883
MQTT_BROKER_USERNAME = None
MQTT_BROKER_PASSWORD = None