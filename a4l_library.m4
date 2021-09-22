define(`__LIBRARY__', `
    <defs>
        <g id="pnp-sensor" viewbox="-9 -9 9 9">
            <rect
                class="thin-line"
                x="-9"
                y="-9"
                width="18"
                height="18" />
        </g>
        <g id="PLC" viewbox="-9 -30 9 30">
            <rect
                class="thin-line"
                x="-9"
                y="-30"
                width="18"
                height="60" />
        </g>
        <g id="PLC-joint-f" >
            <path
                class="thin-line"
                d="M0,0H __PLUS__(__HALF(__INDEX_WIDTH__), -10)
                   m2,1h-1a1,1,0,0,1,0,-2h1" />
        </g>
        <g id="PLC-proc" viewbox="-9 -30 9 30">
            <use xlink:href="#PLC" />
            <path class="thin-line" d="M-9,24h-6" />
            <path class="thin-line" d="M-9,18h-6" />
            <path class="thin-line" d="M-9,12h-6" />
            <path class="thin-line" d="M-9,6h-6" />
            <path class="thin-line" d="M-9,0h-6" />
            <path class="thin-line" d="M-9,-6h-6" />
            <path class="thin-line" d="M-9,-12h-6" />
            <path class="thin-line" d="M-9,-18h-6" />
            <use xlink:href="#PLC-joint-f" x="9" y="15" />
            <use xlink:href="#PLC-joint-f" x="9" y="-15" />
            <text
                transform="translate(8,29)rotate(-90)"
                class="tiny-text"
                x="0"
                y="0"
                >750-8212</text>
            <path
                class="thin-line"
                d="M-3,30v6" />
            <path
                class="thin-line"
                d="M3,30v6" />
        </g>
        <g id="PLC-bi" viewbox="-9 -30 9 30">
            <use xlink:href="#PLC" />
            <use xlink:href="#PLC-joint-f" x="9" y="15" />
            <use xlink:href="#PLC-joint-f" x="9" y="-15" />
            <text
                transform="translate(8,29)rotate(-90)"
                class="tiny-text"
                x="0"
                y="0"
                >750-430</text>
            <path
                class="thin-line"
                d="M-9,-15 H __PLUS__(__TIMES__(__INDEX_WIDTH__, -0.5), 0)" />
            <path
                class="thin-line"
                d="M-9,15 H __PLUS__(__TIMES__(__INDEX_WIDTH__, -0.5), 0)" />
        </g>
        <g id="PLC-bo" viewbox="-9 -30 9 30">
            <use xlink:href="#PLC" />
            <use xlink:href="#PLC-joint-f" x="9" y="15" />
            <use xlink:href="#PLC-joint-f" x="9" y="-15" />
            <text
                transform="translate(8,29)rotate(-90)"
                class="tiny-text"
                x="0"
                y="0"
                >750-530</text>
            <path
                class="thin-line"
                d="M-9,-15 H __PLUS__(__TIMES__(__INDEX_WIDTH__, -0.5), 0)" />
            <path
                class="thin-line"
                d="M-9,15 H __PLUS__(__TIMES__(__INDEX_WIDTH__, -0.5), 0)" />
        </g>
        <g id="PLC-ps">
            <use xlink:href="#PLC" />
            <use xlink:href="#PLC-joint-f" x="9" y="15" />
            <use xlink:href="#PLC-joint-f" x="9" y="-15" />
            <text
                transform="translate(8,29)rotate(-90)"
                class="tiny-text"
                x="0"
                y="0"
                >750-630</text>
            <path
                class="thin-line"
                d="M-3,30v6" />
            <path
                class="thin-line"
                d="M3,30v6" />
        </g>
        <g id="PLC-R-bridge">
            <use xlink:href="#PLC" />
            <text
                transform="translate(8,29)rotate(-90)"
                class="tiny-text"
                x="0"
                y="0"
                >750-630</text>
        </g>
        <g id="PLC-end">
            <use xlink:href="#PLC" />
            <text
                transform="translate(8,29)rotate(-90)"
                class="tiny-text"
                x="0"
                y="0"
                >750-600</text>
        </g>
        <g id="main-switch" >
            <use xlink:href="#switch_3f" />
            <path class="thin-line" 
                d="M-9,-6
                   l-3.1058,11.5911
                   l-3.1058,-11.5911" />
            <path class="mid-line"
                d="M-24,-6
                   h3
                   v12
                   h3" />
            <path class="thin-line"
                d="M-1.5529,0
                   h-8.8942" />
            <path class="thin-line"
                d="M-13.5529,0
                   H-21" />
        </g>
        <!-- power supply -->
        <g id="ps" viewbox="-12 -12 12 12">
            <rect class="thin-line" x="-12" y="-12" width="24" height="24" />
            <path class="thin-line" d="M-12,12L12,-12" />
        </g>
        <!-- svorka prubezna -->
        <g id="terminal" class="component">
            <circle r="1.5" cx="0" cy="0" class="mid-line" />
            <path class="thin-line" d="M-1.6,1.6L1.6,-1.6" />
        </g>
        <!-- binary input -->
        <g id="bi" >
            <rect class="mid-line" width="27.2" height="27.2" x="0" />
            <path class="thin-line" d="M0,6.8h27.2" />
            <path class="thin-line" d="M0,13.6h27.2" />
            <path class="thin-line" d="M0,20.4h27.2" />
        </g>
        <!-- Coil of the rele -->
        <g id="coil" viewbox="-9 -6 9 6" >
            <rect 
                class="thin-line"
                x="-9"
                y="-6"
                width="18"
                height="12" />
        </g>
        <g id="plug-m" viewbox="-1 -2 1 4">
            <rect
                x="-1" y="-2" width="2" height="6" />
        </g>
        <g id="plug-f" viewbox="-3 -5 3 0" >
            <path
                class="mid-line"
                d="M-2,0v-2a2,2,0,0,1,4,0v2" />
        </g>
        <!-- switch -->
        <g id="switch_3f" viewbox="-4 -9 4 9">
            <path class="mid-line" d="M0,9v-3l-3.1058,-11.5911" />
            <path class="mid-line" d="M0,-6v-3" />
        </g>
        <g id="switch-1f" viewbox="-4 -9 4 9">
            <path class="thin-line" d="M0,9v-3l-3.1058,-11.5911" />
            <path class="thin-line" d="M0,-6v-3" />
        </g>
        <g id="circuit-break">
        </g>
        <!-- motor -->
        <g id="motor">
            <circle class="thin-line" r="9" />
            <text class="small-text" >M</text>
        </g>
    </defs>
')

