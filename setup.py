from setuptools import setup

setup(
    name='microblog',
    version='0.1',
    py_modules=['microblog'],
    entry_points={
        'console_scripts': ['microblog = microblog:run']
    },
)
