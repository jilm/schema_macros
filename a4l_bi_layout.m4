define(`__LAYOUT__', `
        __G_ADD__(WAGO:750-430)
        __LAYOUT_STEP__(8)
')


define(`__LAYOUT_STEP__', `

        ifelse(`$1', `0', , `
            <g transform="translate(__TIMES__(__INDEX_WIDTH__, $1), 0)">
                <rect 
                    class="thin-line"
                    x="0"
                    y="0"
                    width="__INDEX_WIDTH__"
                    height="24" />
                <path
                    class="thin-line"
                    d="M0,6h __INDEX_WIDTH__" />
                <path
                    class="thin-line"
                    d="M0,12h __INDEX_WIDTH__" />
                <path
                    class="thin-line"
                    d="M0,18h __INDEX_WIDTH__" />
                <text 
                    class="small-text text-cent" 
                    x="__HALF(__INDEX_WIDTH__)" 
                    y="15.5" > substr(__ADDRESS__, decr($1), 1) </text>
                <text 
                    class="small-text text-cent" 
                    x="__HALF(__INDEX_WIDTH__)" 
                    y="21.5" > $1</text>
                <text 
                    class="small-text text-cent" 
                    x="13.6" 
                    y="3.5" >CONCAT(CONCAT(__NAME,$1),__)</text>
            </g>
            __LAYOUT_STEP__(decr($1))
        ')

')

define(`__PNP_SENSOR__', `

        <use 
            xlink:href="#pnp-sensor" 
            x="0" 
            y="__F__" />

')

define(`__TERMINAL_Y1__', `__PLUS__($1, -1.5)')
define(`__TERMINAL_Y2__', `__PLUS__($1, 1.5)')
define(`__IO_Y__', 24)
define(`__SENSOR_Y__', `__PLUS__(__F__, -9)')


define(`__SENSOR__',`

        <path
            class="thin-line"
            d="M0,__IO_Y__ V __TERMINAL_Y1__(__D__)" />
        <use 
            xlink:href="#terminal" 
            x="0" 
            y="__D__" />
        <text class="tiny-text" x="0" y="__D__">$1</text>
        <use 
            xlink:href="#terminal" 
            x="6" 
            y="__D__" />
        <text class="tiny-text" x="6" y="__D__">-</text>
        <use 
            xlink:href="#terminal" 
            x="-6" 
            y="__D__" />
        <text class="tiny-text" x="-6" y="__D__">+</text>
        <path
            class="thin-line" 
            d="M0,__TERMINAL_Y2__(__D__)v6" />
        <path
            class="thin-line" 
            d="M6,__TERMINAL_Y2__(__D__)v6" />
        <path
            class="thin-line" 
            d="M-6,__TERMINAL_Y2__(__D__)v6" />
        <path
            class="mid-line"
            d="M-6,__PLUS__(__TERMINAL_Y2__(__D__), 6) h 12" />
        <path
            class="mid-line"
            d="M0,__PLUS__(__TERMINAL_Y2__(__D__), 6) V __SENSOR_Y__" />
        <path 
            class="thin-line" 
            d="M3,__PLUS__(__E__, 3)v-3H __HALF(__INDEX_WIDTH__)" />
        <path 
            class="thin-line" 
            d="M-3,__PLUS__(__E__, 3)v-3H __MINUS(__HALF(__INDEX_WIDTH__))" />
        __PNP_SENSOR__

')

define(`__ADDRESS__', `02461357')

define(`__CONTENT__', `

        <g transform="translate(__2__, 0)">
            __CIRCUIT1__
        </g>

        <g transform="translate(__3__, 0)">
            __CIRCUIT2__
        </g>

        <g transform="translate(__4__, 0)">
            __CIRCUIT3__
        </g>

        <g transform="translate(__5__, 0)">
            __CIRCUIT4__
        </g>

        <g transform="translate(__6__, 0)">
            __CIRCUIT5__
        </g>

        <g transform="translate(__7__, 0)">
            __CIRCUIT6__
        </g>

        <g transform="translate(__8__, 0)">
            __CIRCUIT7__
        </g>

        <g transform="translate(__9__, 0)">
            __CIRCUIT8__
        </g>
            
')
