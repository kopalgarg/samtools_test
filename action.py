import subprocess

def construct_docker_push_command(image_name, tag):
    return f"docker push {image_name}:{tag}"

def function_that_calls_docker_push():
    try:
        subprocess.run(["docker", "push", "samtools:latest"], check=True)
    except subprocess.CalledProcessError as e:
        print(f"An error occurred while pushing the Docker image: {e}")
