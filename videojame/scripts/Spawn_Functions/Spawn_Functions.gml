function add_to_pool(_object,_weight,_type=0,_low=1,_high=1,_median=1,_spread = 1.5) constructor
{
	obj    = _object;
	weight = _weight;
	type   = _type;
	low    = _low;
	high   = _high ;
	M      = _median;
	spread = _spread;
}

function irandom_range_weighted(_low, _high, _mean, _spread) {
    // Ensure valid spread
    if (_spread <= 0) _spread = 1;

    // Generate a Gaussian random value using the Box-Muller transform
    var u1 = max(random(1), 0.00001); // Ensure u1 > 0 to avoid ln(0)
    var u2 = max(random(1), 0.00001); // Uniform random [0
    var z0 = sqrt(-2 * ln(u1)) * cos(2 * pi * u2); // Standard normal distribution (mean=0, std dev=1)

    // Scale and shift the Gaussian value to the desired mean and spread
    var weighted = _mean + z0 * _spread;

    // Clamp to the specified range and round to integer
    return clamp(round(weighted), _low, _high);
}