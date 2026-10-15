hl.monitor({
    output = "eDP-1",
    mode = "1920x1200@60",
    position = "3840x1100",
    scale = 1
})

-- Dell U27 desks
for _, desc in ipairs({
    "Dell Inc. DELL U2724DE 9SY0M04",
    "Dell Inc. DELL U2724DE 1GVDJ04",
    "Dell Inc. DELL U2724DE 4TY0M04",
    "Dell Inc. DELL U2719DC 6RBBLS2",
}) do
    hl.monitor({
        output = "desc:" .. desc,
        mode = "2560x1440@60",
        position = "1280x420",
        scale = 1
    })
end

hl.monitor({
    output = "desc:LG Electronics LG UltraFine 701NTXR30482",
    mode = "preferred",
    position = "0x0",
    scale = 1.2
})

for _, desc in ipairs({
    "LG Electronics LG HDR 4K 410NTLEAJ480",
    "LG Electronics LG HDR 4K 410NTFAAJ491",
}) do
    hl.monitor({
        output = "desc:" .. desc,
        mode = "3840x2160@60",
        position = "0x0",
        scale = 1
    })
end

-- centered straight above eDP-1
hl.monitor({
    output = "desc:Dell Inc. DELL U2725QE JWJ0G84",
    mode = "3840x2160@120",
    position = "2880x-1060",
    scale = 1
})

hl.monitor({
    output = "DP-4",
    disabled = true
})

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1
})
