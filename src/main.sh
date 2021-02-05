git clone https://github.com/broadinstitute/gtex-pipeline.git

cd ./gtex-pipeline/rnaseq

git checkout master
spython recipe Dockerfile > ../../../recipe/Singularity.rnaseq.v9

git checkout -b b_gtex_v8 gtex_v8
spython recipe Dockerfile > ../../../recipe/Singularity.rnaseq.v8

wget -O ../dockerfile/bamsurgeon.dockerfile \
  https://raw.githubusercontent.com/adamewing/bamsurgeon/master/Dockerfile

spython recipe ../dockerfile/bamsurgeon.dockerfile > ../recipe/Singularity.bamsurgeon

wget -O ../dockerfile/neusomatic.edockerfile \
  https://raw.githubusercontent.com/bioinform/neusomatic/master/docker/Dockerfile

spython recipe ../dockerfile/neusomatic.edockerfile > ../recipe/Singularity.neusomatic


