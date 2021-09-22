
        define(`__PLC_BO_PATTERN__', `

            <use xlink:href="#PLC-bo" 
                x="0"
                y="__C__" />
            <text
                class="mid-text text-north"
                x="0" y="__PLUS__(-31, __C__)"
                > $1 </text>
            <text
                class="mid-text text-north"
                x="0" y="__PLUS__(-25, __C__)"
                > BO </text>

        ')


        define(`__PLC_IO_PATTERN__', `

            <use xlink:href="#PLC-proc" 
                x="0"
                y="__C__" />
            define(`__PS1_COORD__', `-3, __PLUS__(__C__, 36)')
            define(`__PS2_COORD__', `3, __PLUS__(__C__, 36)')
            <text
                class="mid-text text-north"
                x="0" y="__PLUS__(-31, __C__)"
                > $1 </text>
            <text
                class="mid-text text-north"
                x="0" y="__PLUS__(-25, __C__)"
                > PLC </text>

        ')

