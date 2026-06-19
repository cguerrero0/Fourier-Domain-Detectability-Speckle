Algorithm: Construction of an attenuation-dependent detectability map

Input:
    Grid of normalized separations q
    Grid of magnitude differences Delta m
    Global attenuation factor eta_eff
    Residual Fourier-domain noise level sigma_P
    Number of realizations N

For each value of Delta m:
    Convert Delta m into flux ratio r = 10^(-0.4 Delta m)

    For each value of q:
        Initialize an empty list of detectability values

        Repeat N times:
            Construct the Fourier-domain grid
            Generate the ideal binary power spectrum
            Apply the cutoff-support function W(f)
            Apply the global attenuation factor eta_eff to the modulation term
            Add residual Fourier-domain noise
            Evaluate the detectability metric D
            Store the resulting value of D

        Compute the mean detectability over the N realizations
        Assign that mean value to the corresponding location in the detectability map

Output:
    Attenuation-dependent detectability map D(q, Delta m; eta_eff)