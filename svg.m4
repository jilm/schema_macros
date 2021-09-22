define(`__SVG_HEAD__', `
<?xml version="1.0"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
 "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">

<?xml-stylesheet type="text/css" href="schema.css" ?>

<svg xmlns="http://www.w3.org/2000/svg"
     xmlns:xlink="http://www.w3.org/1999/xlink"
     xmlns:xi="http://www.w3.org/2001/XInclude"
     height="CONCAT(__RAW_PAPER_HEIGHT__, mm)"
     width="CONCAT(__RAW_PAPER_WIDTH__, mm)"
     viewBox="0 0 __RAW_PAPER_WIDTH__ __RAW_PAPER_HEIGHT__">
     <rect class="background" 
        x="0" 
        y="0" 
        width="__RAW_PAPER_WIDTH__"
        height="__RAW_PAPER_HEIGHT__" />
')

define(`__SVG_TAIL__', `</svg>')


