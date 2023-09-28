import unittest
from unittest.mock import patch
from action import function_that_calls_docker_push, construct_docker_push_command

class TestDockerActions(unittest.TestCase):

    def test_construct_docker_push_command(self):
        self.assertEqual(construct_docker_push_command("samtools", "latest"), "docker push samtools:latest")

    @patch("action.subprocess.run")
    def test_docker_push(self, mock_run):
        function_that_calls_docker_push()
        mock_run.assert_called_with(["docker", "push", "samtools:latest"], check=True)
    
if __name__ == '__main__':
    unittest.main()
