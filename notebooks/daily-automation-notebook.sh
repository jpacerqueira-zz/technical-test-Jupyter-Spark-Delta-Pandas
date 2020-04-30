#!/usr/bin/env bash
#
HOME=/home/notebookuser
source $HOME/.profile
cd $HOME/crontab
DATENB=$(date +'%Y-%m-%d')
#
$HOME/anaconda3/bin/jupyter \
       nbconvert --to notebook --execute --allow-errors --ExecutePreprocessor.timeout=1800 \
       $HOME/notebooks/Analyser-CVs-PDF-YYYYMMDD.ipynb  \
       --output $HOME/notebooks/Analyser-CVs-PDF-${DATENB}-output-candidate.ipynb > crontab-run-$DATENB.log
#
