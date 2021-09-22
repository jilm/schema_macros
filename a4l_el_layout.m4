
define(`__LAYOUT__', `__TN_S__')

define(`__TN_S__', `
    define(`__L1_Y__', __PLUS__(__A__, -6))
    define(`__L2_Y__', __A__)
    define(`__L3_Y__', __PLUS__(__A__, 6))
    define(`__N_Y__', __PLUS__(__E__, -6))
    define(`__PE_Y__', __PLUS__(__N_Y__, 6))
    define(`__BORDER_Y__', __F__)

    <path class="thin-line" d="M __1__,__L1_Y__ H __10__" />
    <path class="thin-line" d="M __1__,__L2_Y__ H __10__" />
    <path class="thin-line" d="M __1__,__L3_Y__ H __10__" />
    <path class="thin-line" d="M __1__,__N_Y__ H __10__" />
    <path class="thin-line" d="M __1__,__PE_Y__ H __10__" />

    <text class="small-text" x="__1__" y="__L1_Y__" >L1</text>
    <text class="small-text" x="__1__" y="__L2_Y__" >L2</text>
    <text class="small-text" x="__1__" y="__L3_Y__" >L3</text>
    <text class="small-text" x="__1__" y="__N_Y__" >N</text>
    <text class="small-text" x="__1__" y="__PE_Y__" >PE</text>

    <text class="small-text" x="__10__" y="__L1_Y__" >L1</text>
    <text class="small-text" x="__10__" y="__L2_Y__" >L2</text>
    <text class="small-text" x="__10__" y="__L3_Y__" >L3</text>
    <text class="small-text" x="__10__" y="__N_Y__" >N</text>
    <text class="small-text" x="__10__" y="__PE_Y__" >PE</text>
')

