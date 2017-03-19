import glob
import pandas as pd

files = glob.glob('*events.tsv')  # grab onsets for each run

for f in files:  # for each run
    events = pd.read_csv(f, sep='\t')  # read in the tsv files

    # label stimuli as congruent or incongruent
    cong = events.loc[events['condition'] == 'congruent']
    incong = events.loc[events['condition'] == 'incongruent']
    neutral = events.loc[events['condition'] == 'neutral']

    # convert from series to dataframe
    cong_TR = (cong['onset']).to_frame()

    # write congruent onsets out to file
    filename = 'Stroop_01_Congruent.txt'
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
    filename = 'Stroop_02_Incongruent.txt'
    with open(filename, 'a') as fname:
        incong_TR.T.to_csv(fname,
                           sep=' ',
                           header=False,
                           index=False,
                           line_terminator='')
        fname.write('\n')

    # convert from series to dataframe
    neutral_TR = (neutral['onset']).to_frame()
    
    # write congruent onsets out to file
    filename = 'Stroop_03_Neutral.txt'
    with open(filename, 'a') as fname:
        incong_TR.T.to_csv(fname,
                           sep=' ',
                           header=False,
                           index=False,
                           line_terminator='')
        fname.write('\n')
