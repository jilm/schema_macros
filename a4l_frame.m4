
define(`__H_INDICES__', 10)
define(`__V_INDICES__', 7)
define(`__INDEX_WIDTH__', `__DIV__(__SCHEMA_WIDTH__, __H_INDICES__)')
define(`__INDEX_HEIGHT__', `__DIV__(__SCHEMA_HEIGHT__, __V_INDICES__)')
define(`__ALPHA__', `_ABCDEFGHJKLMNPQRSTUVWXYZ')

define(`__A__', `__TIMES__(0.5, __INDEX_HEIGHT__)')
define(`__AB__', `__INDEX_HEIGHT__')
define(`__B__', `__TIMES__(1.5, __INDEX_HEIGHT__)')
define(`__BC__', `__TIMES__(2, __INDEX_HEIGHT__)')
define(`__C__', `__TIMES__(2.5, __INDEX_HEIGHT__)')
define(`__D__', `__TIMES__(3.5, __INDEX_HEIGHT__)')
define(`__E__', `__TIMES__(4.5, __INDEX_HEIGHT__)')
define(`__F__', `__TIMES__(5.5, __INDEX_HEIGHT__)')

define(`__1__', `__TIMES__(0.5, __INDEX_WIDTH__)')
define(`__2__', `__TIMES__(1.5, __INDEX_WIDTH__)')
define(`__3__', `__TIMES__(2.5, __INDEX_WIDTH__)')
define(`__4__', `__TIMES__(3.5, __INDEX_WIDTH__)')
define(`__5__', `__TIMES__(4.5, __INDEX_WIDTH__)')
define(`__6__', `__TIMES__(5.5, __INDEX_WIDTH__)')
define(`__7__', `__TIMES__(6.5, __INDEX_WIDTH__)')
define(`__8__', `__TIMES__(7.5, __INDEX_WIDTH__)')
define(`__9__', `__TIMES__(8.5, __INDEX_WIDTH__)')
define(`__10__', `__TIMES__(9.5, __INDEX_WIDTH__)')

define(`__FRAME__',
        `__INDEX__'
        `__CENTER_MARKS__'
        `__SCHEMA_OUTLINE__'
        `__TRIANGLES__'
      )

define(`__V_CROP_MARK_SIZE__',
        `__PLUS__(__TOP_TRIM_MARGIN__, -2)')

define(`__H_CROP_MARK_SIZE__',
        `__PLUS__(__LEFT_TRIM_MARGIN__, -2)')

define(`__LEFT_CROP_MARK__', `
        <path 
            class="thin-line"
            d="M __LEFT_TRIM_MARGIN__,0v __V_CROP_MARK_SIZE__" />
        <path
            class="thin-line"
            d="M 0, __TOP_TRIM_MARGIN__ h __H_CROP_MARK_SIZE__" />
      ')

define(`__SCHEMA_OUTLINE__',
        `<rect
            class="thin-line"
            x="__LEFT_MARGIN__"
            y="__TOP_MARGIN__"
            width="__SCHEMA_WIDTH__"
            height="__SCHEMA_HEIGHT__" />')


define(`__INDEX__', `
    <g 
        class="thin-line" 
        transform="translate(10,2)">
        __H_INDEX__(__H_INDICES__)
    </g>
    <g 
        class="thin-line" 
        transform="translate(5,7)">
        __V_INDEX__(__V_INDICES__)
    </g>
    <g 
        class="thin-line" 
        transform="translate(10, __PLUS__(__TOP_MARGIN__, __SCHEMA_HEIGHT__))">
        __H_INDEX__(__H_INDICES__)
    </g>
    <g 
        class="thin-line" 
        transform="translate(__PLUS__(__LEFT_MARGIN__, __SCHEMA_WIDTH__) ,7)">
        __V_INDEX__(__V_INDICES__)
    </g>

')


define(`__H_INDEX__',
        `ifelse(`$1', `1',
            `<text
                class="small-text"
                x="__TIMES__(0.5, __INDEX_WIDTH__)"
                y="4"
                > 1 </text>' ,
            `<path d="M __TIMES__(decr($1), __INDEX_WIDTH__),0v5" />'
            `<text 
                class="small-text" 
                x="__TIMES__(__PLUS__($1, -0.5), __INDEX_WIDTH__)" 
                y="4"
                > $1 </text>'
            `__H_INDEX__(decr($1))')
')

define(`__V_INDEX__',
        `ifelse(`$1', `1',
            `<text
                class="small-text"
                    y="__TIMES__(0.5, __INDEX_HEIGHT__)"
                    x="1"
                    > A </text>' ,
                `<path d="M0,__TIMES__(decr($1), __INDEX_HEIGHT__)h5" />'
                `<text 
                    class="small-text" 
                    y="__TIMES__(__PLUS__($1, -0.5), __INDEX_HEIGHT__)" 
                    x="1"
                    > substr(__ALPHA__, $1, 1) </text>'
                `__V_INDEX__(decr($1))')
')

