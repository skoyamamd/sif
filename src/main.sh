wget -O ../dockerfile/bamsurgeon.dockerfile \
  https://raw.githubusercontent.com/adamewing/bamsurgeon/master/Dockerfile

spython recipe ../dockerfile/bamsurgeon.dockerfile > ../recipe/Singularity.bam

wget -O ../dockerfile/neusomatic.dockerfile \
  https://raw.githubusercontent.com/bioinform/neusomatic/master/docker/Dockerfile

spython recipe ../dockerfile/neusomatic.dockerfile > ../recipe/Singularity.neu


