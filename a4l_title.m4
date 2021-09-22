define(`__TITLE_HEIGHT__', 15)
define(`__TITLE_Y__', `__PLUS__(__SCHEMA_HEIGHT__, __MINUS(__TITLE_HEIGHT__))')

define(`__TITLE__', `

        <g transform="translate(0, __TITLE_Y__)">
            <rect
                class="thin-line"
                x="0"
                y="0"
                width="__SCHEMA_WIDTH__"
                height="__TITLE_HEIGHT__" />
        </g>

')
        
