import logging as logging 

# initialize the logging configuration
# file name added in the log file

logging.basicConfig(
    level=logging.INFO,
    # file python file name
    #format="%(asctime)s %(levelname)s - [%(filename)s::%(lineno)d]  %(message)s",
    # create a json file with the log details 
    format="{\"time\":%(asctime)s ,\"loglevel\":%(levelname)s , \"filedetails\": %(filename)s::%(lineno)d  , \"msg\":%(message)s}",
    handlers=[
        logging.FileHandler("000-resources/python-test-debug.log"),
        logging.StreamHandler()
    ]
)

# 5 log levels: CRITICAL, ERROR, WARNING, INFO, DEBUG.

logging.debug("This is a debug message")
logging.info("This is an info message")
logging.warning("This is a warning message")
logging.error("This is an error message")
logging.critical("This is a critical message")
logging.fatal("This is a fatal message")
