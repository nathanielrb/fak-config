let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
#let ks = tap.reg.ks in
let md = hold.reg.mod in
let tm = tap.reg.mod in
#let me = tap.custom.media in
let sl = tap.sticky.layer in
let hl = hold.reg.layer in
let sm = tap.sticky.mod in
let to = tap.layer.TO in
let beh = hold.reg.behavior in
let XXXX = tap.none & hold.none in
 {
  virtual_keys = [
    #combo.make 50 [1, 2],
    #combo.make 50 [2, 3],
    combo.make 50 [6, 7],
    combo.make 50 [7, 8],
    combo.make 50 [16, 17],
    combo.make 50 [17, 18],
    combo.make 50 [23, 24],
    combo.make 50 [24, 25],
  ],
   layers = [
     [
     kc.B, kc.Y, kc.O, kc.U, XXXX,                                       XXXX, kc.L, kc.D, kc.P, kc.F,
     kc.C, kc.I & md.lalt & beh {}, kc.E & md.lsft & beh {}, kc.A & md.lctl & beh {}, XXXX,     
                                                                       XXXX, kc.H & md.lctl & beh {}, kc.T & md.lsft & beh {}, kc.N & md.lalt & beh {}, kc.S, 
           sm.lsft, sl 2 & hl 2 & beh {}, sl 1 & hl 1 & beh {},             kc.M, kc.G, kc.W,
                       kc.SPC, kc.SPC,   kc.R, kc.R,
                       # Combos
                       kc.Q,
                       kc.Z,
                       kc.V,
                       kc.X,
                       kc.J,
                       kc.K,
     ],
     [
    tm.lsft & kc.BACKSLASH, tm.lsft & kc.N6, tm.lsft & kc.N4, tm.lsft & kc.N5, XXXX,        tm.lsft & kc.N5,  tm.lsft & kc.N8, kc.MINS, tm.lsft & kc.SLSH,  tm.lsft & kc.N1,
      tm.lsft & kc.MINS,  tm.lsft & kc.N7,  tm.lsft & kc.N3, kc.GRV, XXXX,                        kc.GRV, kc.COMMA, kc.DOT, kc.QUOT,  tm.lsft & kc.QUOT,
     tm.lsft & kc.GRV,  tm.lsft & kc.N2, kc.GRV,                      kc.SEMICOLON,  tm.lsft & kc.SEMICOLON, kc.SLSH,
                       to 4, to 4,                         sl 3, sl 3,
        # Combos
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
     ],
          [
     kc.B, kc.PGUP, kc.O, kc.U, XXXX,                           tm.lsft & kc.N6, tm.lsft & kc.N9, tm.lsft & kc.N0, kc.DEL, kc.F11,
     kc.HOME, kc.END, kc.LEFT, kc.RIGHT, XXXX,                           tm.lsft & kc.N4, kc.ENTER, kc.BSPC, kc.TAB, kc.ESC, 
        kc.PGDN, kc.UP, kc.DOWN,                                    kc.LEFT_BRACKET, kc.RIGHT_BRACKET, kc.BACKSLASH,
                       to 3, to 3,                   to 0, to 0,
                       # Combos
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
     ],
          [
     tm.lsft & kc.N6, kc.SLASH, kc.EQUAL, tm.lsft & kc.EQUAL, XXXX,        XXXX, kc.N7, kc.N8, kc.N9, kc.H,
     kc.N0, kc.N3, kc.N2, kc.N1, XXXX,                                     XXXX, kc.N4, kc.N5, kc.N6, kc.SEMICOLON, 
           sm.lsft, sl 2 & hl 2 & beh {}, sl 1 & hl 1 & beh {},                 tm.lsft & kc.N6, kc.N4, tm.lsft & kc.N5,
                       kc.SPC, kc.SPC,                                 to 0, to 0,
                       # Combos
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
     ],

          [
     XXXX, XXXX, XXXX, XXXX, XXXX,                           XXXX, kc.PGDN, kc.PGUP, XXXX, XXXX,
     md.lgui, md.lalt, md.lsft, md.lctl, XXXX,                       XXXX, kc.LEFT, kc.RIGHT, kc.HOME, kc.END,
        XXXX, sl 2 & hl 2 & beh {}, sl 1 & hl 1 & beh {},                                      kc.DOWN, kc.UP, XXXX,
                       kc.SPC, kc.SPC,                   to 0, to 0,
                       # Combos
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
                       XXXX,
     ],
   ]
 }
