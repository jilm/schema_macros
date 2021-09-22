include(glossary.m4)
include(basic.m4)
include(math.m4)
include(svg.m4)
include(a4l_page_size.m4)
include(a4l_frame.m4)
include(a4l_crop.m4)
include(a4l_library.m4)
include(a4l_title.m4)
include(a4l_plc_layout.m4)
include(a4l_plc_patterns.m4)

__SVG_HEAD__
__CROP_MARKS__
__LIBRARY__
<g transform="translate(__LEFT_TRIM_MARGIN__, __TOP_TRIM_MARGIN__)" >
    __FRAME__
    <g transform="translate(__LEFT_MARGIN__, __TOP_MARGIN__)" >
        __TITLE__
        __LAYOUT__
        __CONTENT__
    </g>
</g>
<!-- GLOSSARY
    undivert(2)
-->
__SVG_TAIL__

