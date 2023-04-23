BITRATE_TYPES = {
    BIT = 1,
    KBIT = 3,
    KBYTE = 4,
    MBIT = 5,
    MBYTE = 6,
    GBIT = 7,
    GBYTE = 8,
    BYTE = 9,
}

local bitrateFuncs = {
    [BITRATE_TYPES.BIT] = function(rs_fps)
        return rs_fps
    end,
    [BITRATE_TYPES.BYTE] = function(rs_fps)
        return rs_fps/8
    end,
    [BITRATE_TYPES.KBIT] = function(rs_fps)
        return rs_fps/1024
    end,
    [BITRATE_TYPES.KBYTE] = function(rs_fps)
        return rs_fps/1024/8
    end,
    [BITRATE_TYPES.MBIT] = function(rs_fps)
        return rs_fps/1024/8/128
    end,
    [BITRATE_TYPES.MBYTE] = function(rs_fps)
        return rs_fps/1024/8/128/8
    end,
    [BITRATE_TYPES.GBIT] = function(rs_fps)
        return rs_fps/1024/8/128/8/128
    end,
    [BITRATE_TYPES.GBYTE] = function(rs_fps)
        return rs_fps/1024/8/128/8/128/8
    end,
}

function BitrateCount(w,h,framerate,type)
    
    return bitrateFuncs[type](w*h*framerate)

end
