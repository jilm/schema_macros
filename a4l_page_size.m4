dnl Untrimmed paper sizer
define(`__RAW_PAPER_WIDTH__', 320)
define(`__RAW_PAPER_HEIGHT__', 225)
dnl Trimmed paper size
define(`__PAPER_WIDTH__', 297)
define(`__PAPER_HEIGHT__', 210)
define(`__H_TRIM_MARGIN__', 
        `__PLUS__(__RAW_PAPER_WIDTH__, __MINUS(__PAPER_WIDTH__))')
define(`__V_TRIM_MARGIN__',
        `__PLUS__(__RAW_PAPER_HEIGHT__, __MINUS(__PAPER_HEIGHT__))')
define(`__LEFT_TRIM_MARGIN__', `__HALF(__H_TRIM_MARGIN__)')
define(`__TOP_TRIM_MARGIN__', `__HALF(__V_TRIM_MARGIN__)')
dnl Margin, if any
define(`__LEFT_MARGIN__', 10)
define(`__TOP_MARGIN__', 7)
define(`__BOTTOM_MARGIN__', 7)
define(`__RIGHT_MARGIN__', 7)
define(`__H_MARGIN__', 
        `__PLUS__(__LEFT_MARGIN__, __RIGHT_MARGIN__)')
define(`__V_MARGIN__', 
        `__PLUS__(__TOP_MARGIN__, __BOTTOM_MARGIN__)')
dnl The area inside margins
define(`__SCHEMA_WIDTH__', 
        `__PLUS__(__PAPER_WIDTH__, __MINUS(__H_MARGIN__))')
define(`__SCHEMA_HEIGHT__', 
        `__PLUS__(__PAPER_HEIGHT__, __MINUS(__V_MARGIN__))')
