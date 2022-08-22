from setuptools import find_packages, setup

setup(
    name="shared-lib",
    version="1.0.0",
    license="AGPLv3",
    packages=find_packages(exclude=["*tests*"]),
)
