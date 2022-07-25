import logging

app_name = "app"
logger_file = "{0}.log".format(app_name)
format = "%(name)s - %(levelname)s - %(message)s"
level = logging.DEBUG

def main():
    print("main function...")

if __name__ == "__main__":
    logging.basicConfig(filename=logger_file, file_mode="w", level=level)
    logging.info("Starting {0}".format(app_name))
    main()
    logging.info("End of {0}".format(app_name))
