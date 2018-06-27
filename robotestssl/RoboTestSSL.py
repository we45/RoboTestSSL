import docker
from robot.api import logger
from docker.types import Mount

class RoboTestSSL(object):

    def __init__(self):
        self.client = docker.from_env()
        self.depcheck_docker = "we45/testssl"

    def run_testssl_against_target(self, target, results_path):
        self.target = target
        self.results_path = results_path
        self.environment = ["TARGET={0}".format(self.target)]
        results_mount = Mount("/results", self.results_path, type = "bind")
        self.client.containers.run(self.depcheck_docker, mounts = [results_mount], environment=self.environment)
        logger.info("Successfully ran TestSSL against the Target. Please find *.json file in the results directory")
