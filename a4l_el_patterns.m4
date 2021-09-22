define(`__PS__', `

        __G_ROW__(D)
        <use
            xlink:href="#ps"
            x="__INDEX_WIDTH__"
            y="__D__" />
        <path
            class="thin-line"
            d="M __PLUS__(__INDEX_WIDTH__, -12),__PLUS__(__D__, 6)
               H 0
               V __N_Y__" />
        <path
            class="thin-line"
            d="M __PLUS__(__INDEX_WIDTH__, -12),__PLUS__(__D__, -6)
               H 0
               V __BC__" />
        <path
            class="thin-line"
            d="M __PLUS__(__INDEX_WIDTH__, 12),__PLUS__(__D__, 6)
               H __2X(__INDEX_WIDTH__)" />
        <path
            class="thin-line"
            d="M __PLUS__(__INDEX_WIDTH__, 12),__PLUS__(__D__, -6)
               H __2X(__INDEX_WIDTH__)" />

')

define(`__TEE_L1NPE__', `

        <path class="thin-line" 
            d="M0,__L1_Y__

')

define(`__LABEL__', `
        <text
            class="mid-text"
            x="0"
            y="$2"
            > $1 </text>
        __G_ADD__($1)
')

define(`__TEE_123NPE__', `

        <path class="thin-line" d="M0,__L2_Y__ l6,-6" />
        <path class="thin-line" d="M0,__L3_Y__ l6,-6" />
        <path class="thin-line" d="M0,__PLUS__(__L3_Y__,6) l6,-6" />
        <path class="thin-line" d="M0,__PE_Y__ l6,-6" />
        <path class="thin-line" d="M0,__PLUS__(__PE_Y__,6) l6,-6" />
        <path
            class="mid-line"
            d="M0,__L2_Y__

')

define(`__SWITCH_Y1__',
        `__PLUS__($1, -9)'
)

define(`__SWITCH_Y2__',
        `__PLUS__($1, 9)'
)

define(`__COIL__', `
            L0,__COIL_Y1__(__D__)" />
        <use
            xlink:href="#coil"
            x="0"
            y="__D__" />
        __G_ROW__(D)
        __LABEL__($1, __D__)
        <path
            class="thin-line"
            d="M0,__COIL_Y2__(__D__)
               L0,__N_Y__" />

')

define(`__COIL_Y1__',
        `__PLUS__($1, -6)'
)

define(`__COIL_Y2__',
        `__PLUS__($1, 6)'
)

define(`__CONTACTOR_1F__', `

            L0,__SWITCH_Y1__(__C__)" />
        <use 
            xlink:href="#switch-1f" 
            x="0" 
            y="__C__" />
        __G_ROW__(C)
        __LABEL__($1, __C__)
        <path
            class="thin-line"
            d="M0,__SWITCH_Y2__(__C__)

')

define(`__CIRCUIT_BREAK_1F__', `

            L0,__SWITCH_Y1__(__B__)" />
        <use 
            xlink:href="#switch-1f" 
            x="0" 
            y="__B__" />
        __G_ROW__(B)
        __LABEL__($1, __B__)
        <path
            class="thin-line"
            d="M0,__SWITCH_Y2__(__B__)

')

define(`__SWITCH__', `

            L0,__SWITCH_Y1__(__C__)" />
        <use 
            xlink:href="#switch-1f" 
            x="0" 
            y="__C__" />
        __G_ROW__(C)
        __LABEL__($1, __C__)
        <path
            class="thin-line"
            d="M0,__SWITCH_Y2__(__C__)

')

define(`__MAIN_SWITCH__', `

            L0,__SWITCH_Y1__(__C__)" />
        <use 
            xlink:href="#main-switch" 
            x="0" 
            y="__C__" />
        __G_ROW__(C)
        __LABEL__(-QA, __C__)
        <path
            class="mid-line"
            d="M0,__SWITCH_Y2__(__C__)

')

define(`__PLUG_M__', `

            L0,__BORDER_Y__" />
        <use 
            xlink:href="#plug-m" 
            x="0" 
            y="__TIMES__(5.5, __INDEX_HEIGHT__)" />
        <path
            class="thin-line"
            d="M __TIMES__(__INDEX_WIDTH__, -0.5),__BORDER_Y__
               H-4" />
        <path
            class="thin-line"
            d="M __TIMES__(__INDEX_WIDTH__, 0.5),__BORDER_Y__
               H4" />

')

define(`__PLUG_F__', `

            L0,__PLUG_F_Y1__(__F__)" />
        <use 
            xlink:href="#plug-f" 
            x="0" 
            y="__F__" />
        <path
            class="thin-line"
            d="M __TIMES__(__INDEX_WIDTH__, -0.5),__BORDER_Y__
               H-4" />
        <path
            class="thin-line"
            d="M __TIMES__(__INDEX_WIDTH__, 0.5),__BORDER_Y__
               H4" />
        __G_ROW__(F)
        __LABEL__($1, __TIMES__(5.75, __INDEX_HEIGHT__))

')

define(`__PLUG_F_Y1__',
        `__PLUS__($1, -4)')

define(`__CONNECTION_PATTERN__', `

        __TEE_123NPE__
        __MAIN_SWITCH__
        __PLUG_M__

')

define(`__TERMINAL_PATTERN__', `

        __TEE_123NPE__
        __PLUG_F__

')


define(`__MOTOR_1F_PATTERN__', `

        __TEE_L1NPE__
        __CIRCUIT_BREAK_1F__(CONCAT($1, `-FC'))
        __CONTACTOR_1F__(CONCAT($1, `-QA'))
        __PLUG_F__(CONCAT($1, `-XD'))
        __LABEL__($1, __TIMES__(5.9, __INDEX_HEIGHT__))
')

define(`__FORK_1F_PATTERN__', `

        __TEE_L1NPE__
        __CIRCUIT_BREAK_1F__($1)
        L0, __BC__" />

')

define(`__COIL_PATTERN__', `

        <path
            class="thin-line"
            d="M0,__BC__
        __SWITCH__(CONCAT($1, -KF))
        __COIL__(CONCAT($1, -QA))

')

