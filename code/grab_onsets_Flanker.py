import glob
import pandas as pd

files = glob.glob('*events.tsv')  # grab onsets for each run

for f in files:  # for each run
    events = pd.read_csv(f, sep='\t')  # read in the tsv files

    # label stimuli as congruent or incongruent
    cong = events.loc[events['Stimulus'] == 'congruent']
    incong = events.loc[events['Stimulus'] == 'incongruent']

    # convert from series to dataframe
    cong_TR = (cong['onset']).to_frame()

    # write congruent onsets out to file
    filename = 'Flanker_01_Congruent.txt'
    with open(filename, 'a') as fname:
        cong_TR.T.to_csv(fname,
                         sep=' ',
                         header=False,
                         index=False,
                         line_terminator='')
        fname.write('\n')

    # convert from series to dataframe
    incong_TR = (incong['onset']).to_frame()

    # write congruent onsets out to file
    filename = 'Flanker_02_Incongruent.txt'
    with open(filename, 'a') as fname:
        incong_TR.T.to_csv(fname,
                           sep=' ',
                           header=False,
                           index=False,
                           line_terminator='')
        fname.write('\n')
