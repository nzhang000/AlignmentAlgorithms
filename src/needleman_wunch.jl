# Labs 3 & 4

"""
    nwscore(base1, base2)

Method 1
- Takes two characters and determines if they match or mismatch. 
Returns 1 for match and -1 for mismatch.

Method 2
- Takes a character and nothing and returns gap which is -1.

Method 3
- Takes nothing and a character and does the same as method 2.

Method 4
- Takes nothing and nothing and returns an error. 
"""
function nwscore(base1::Char, base2::Char; match = 1, mismatch = -1, gap = -1)
    if base1 == base2
        return match
    else base1 != base2
        return mismatch
    end
end

function nwscore(base::Char, ::Nothing; match = 1, mismatch = -1, gap = -1)
    return gap
end

function nwscore(::Nothing, base::Char; match = 1, mismatch = -1, gap = -1)
    nwscore(base, nothing; match, mismatch, gap)
end

function nwscore(::Nothing, ::Nothing; match = 1, mismatch = -1, gap = -1)
    throw(ArgumentError("Score for two gaps is not defined"))
end
# don't know how to write tests
