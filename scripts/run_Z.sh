#!/bin/bash
#
#SBATCH -n 1
#SBATCH -t 10:00:00
#SBATCH --mem 8GB
#XSBATCH --mail-type=ALL
#SBATCH --mail-user=robin.kurtz@liu.se
#

module purge
source deactivate

module load  Python/3.7.0-anaconda-5.3.0-extras-nsc1;
source deactivate
source activate py37;

CONFIG=$1;shift
D=$1;shift
O=$1;shift

DIR=../egglayingwoolmilkpig/experiments/$D
pwd
rm -rf $DIR
mkdir $DIR

echo $@

python ./src/main.py --config $CONFIG --dir $DIR $@


python test.py conllup-starsem $DIR/cdd.conllup.pred > $DIR/cdd.starsem.pred
python test.py conllup-starsem $DIR/cde.conllup.pred > $DIR/cde.starsem.pred

perl ../egglayingwoolmilkpig/scripts/eval.cd-sco.pl -g ../egglayingwoolmilkpig/data/sherlock_2/$O/cde.starsem.new -s $DIR/cde.starsem.pred > $DIR/cde.scores
perl ../egglayingwoolmilkpig/scripts/eval.cd-sco.pl -g ../egglayingwoolmilkpig/data/sherlock_2/$O/cdd.starsem.new -s $DIR/cdd.starsem.pred > $DIR/cdd.scores
# Script ends here
