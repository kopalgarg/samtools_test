import subprocess

def test_docker_build():
    try:
        subprocess.run(["docker", "build", "-t", "samtools", "."], check=True)
    except subprocess.CalledProcessError:
        assert False, "Docker build failed"

test_docker_build()