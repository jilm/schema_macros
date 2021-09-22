<?xml-stylesheet type='text/css' href='schema.css' ?>
<svg 
    xmlns='http://www.w3.org/2000/svg'
    xmlns:xlink="http://www.w3.org/1999/xlink"
    width='297.0mm' 
    height='210.0mm' 
    viewBox='0 0 297 210'>

    <!--

        define(`__SCHEMA_NR__', `119267-ELE+UC1-KF7')
        define(`__RAW_PAPER_WIDTH__', 297)
        raw paper height: 210
        schema left: 15
        schema top: 10
        define(`__SCHEMA_WIDTH__', 272)
        schema height: 190
        define(`__INDEX_WIDTH__', `__DIV__(__SCHEMA_WIDTH__, 10)')
        index height: 31.6667
        define(`__NAME1__', `101.25.PS')
        define(`__NAME2__', `102.20.PS')
        define(`__NAME3__', `103.15.PS')
        define(`__NAME4__', `104.20.PS')
        define(`__NAME5__', `125.20.PS')
        define(`__NAME6__', `151.08.E-KH1')
        define(`__NAME7__', `151.08.E-KH2')
        define(`__NAME8__', `152.08.E-KH1')
        define(`__CIRCUIT1__', `__SOLENOID__(1)')
        define(`__CIRCUIT2__', `__SOLENOID__(2)')
        define(`__CIRCUIT3__', `__SOLENOID__(3)')
        define(`__CIRCUIT4__', `__SOLENOID__(4)')
        define(`__CIRCUIT5__', `__SOLENOID__(5)')
        define(`__CIRCUIT6__', `__SOLENOID__(6)')
        define(`__CIRCUIT7__', `__SOLENOID__(7)')
        define(`__CIRCUIT8__', `__SOLENOID__(8)')

    -->

    <defs>
        <!-- sIvorka prubezna -->
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
        <g id="coil">
            <rect class="mid-line" width="12" height="18" />
        </g>
        <!-- binary input 

        define(`__SOLENOID__',`
            <use xlink:href="#coil" x="7.6" y="134" />
            <path class="thin-line" d="M0,100.8L10.6,100.8v3" />
            <path class="thin-line" d="M16.6,103.8v-3L27.2,100.8" />
            <use xlink:href="#terminal" x="13.6" y="79" />
            <text class="tiny-text" x="14.6" y="76">$1</text>
            <use xlink:href="#terminal" x="7.6" y="79" />
            <text class="tiny-text" x="8.6" y="76">-</text>
            <use xlink:href="#terminal" x="19.6" y="79" />
            <text class="tiny-text" x="20.6" y="76">PE</text>
            <path class="thin-line" d="M7.6,80.5v6" />
            <path class="thin-line" d="M13.6,80.5v6" />
            <path class="thin-line" d="M19.6,80.5v6" />
            <path class="mid-line" d="M7.6,86.5L19.6,86.5" />
            <path class="mid-line" d="M13.6,86.5L13.6,134" />
            <path class="thin-line" d="M13.6,77.5L13.6,27.2" />
        ')

            define(`__ADDRESS__', `02461357')

            define(`__STEP__',
                    `ifelse(`$1', `0', ,
                        `<g transform="translate(__TIMES__(__INDEX_WIDTH__,$1),0)" >'
                        `<use xlink:href="#bi" x="0" y="0" />'
                        `<text class="small-text text-cent" x="__HALF(__INDEX_WIDTH__)" y="17.4" > substr(__ADDRESS__, decr($1), 1)  </text>'
                        `<text class="small-text text-cent" x="__HALF(__INDEX_WIDTH__)" y="23.8" > $1</text>'
            `<text class="small-text text-cent" x="13.6" y="4.0" >CONCAT(CONCAT(__NAME,$1),__)</text>'
            `CONCAT(CONCAT(__CIRCUIT,$1),__)'
                        `</g>'
                        `__STEP__(decr($1))'
                    )'
            )

        -->
        <g id="layout" >
                __STEP__(8)
        </g>
        <g id="title">
            <rect class="thin-line" width="__SCHEMA_WIDTH__" height="10" />
            <text class="small-text text-west" x="__SCHEMA_WIDTH__" y="5">__SCHEMA_NR__</text>
        </g>
    </defs>

            <use class="mid-line" xlink:href="#title" x="15" y="190" />
    

    <!-- Cut marks -->
    <g class="thin-line">
        <path d="M20,0L0,0L0,20" />
        <path d="M277,210L297,210L297,190" />
        <path d="M277,0L297,0L297,20" />
        <path d="M20,210L0,210L0190" />
    </g>

    <!-- schema outline -->
    <g transform="translate(15,10)">
        <rect class="mid-line" width="272" height="190" />
        <path class="thin-line" d="M136,-5v10" />
    </g>

    <!-- index -->
    <g class="thin-line" transform="translate(15,5)">
        <path d="M27.2,0v5" />
        <path d="M54.4,0v5" />
        <path d="M81.6,0v5" />
    </g>

    <g class="thin-line" transform="translate(10,10)">
        <path d="M0,31.6667h5" />
        <path d="M0,63.3333h5" />
        <path d="M0,95h10" />
        <path d="M0,126.6667h5" />

        <path d="M0,158.3333h5" />
    </g>

    <!--

    -->

    <g transform="translate(15,10)">

        <use xlink:href="#layout" x="0" y="0" />

        <g class="mid-line" transform="translate(27.2,0)">
            __SENSOR__
        </g>

        <g class="mid-line" transform="translate(54.4,0)">
            __SENSOR__
        </g>
    </g>
</svg>
