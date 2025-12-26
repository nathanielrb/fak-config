let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
let ks = tap.reg.ks in
let md = hold.reg.mod in
let tm = tap.reg.mod in
let me = tap.custom.media in
let sl = tap.sticky.layer in
let sm = tap.sticky.med in
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
     kc.B, kc.Y, kc.O, kc.U, XXXX,                                        XXXX, kc.L, kc.D, kc.P, kc.F,
     kc.C, kc.I & md.lalt, kc.E & md.lsft, kc.A & md.lctl, XXXX,          XXXX, kc.H & md.lctl, kc.T & md.lsft, kc.N & md.lalt, kc.S, 
           sg.lsft, sl 2, sl 1,                                                             kc.M, kc.G, kc.W,
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
     kc.pipe, kc.circ, tm.lsft & kc.N4, tm.lsft & kc.N5, XXXX,        XXXX, kc.astr, kc.minus, tm.lsft & kc.slash, tm.lsft & kc.N1,
     kc.underscore, kc.amp, kc.hash, kc.grave, XXXX,        XXXX, tm.lsft & kc.dot, kc.dot, kc.quote, tm.lsft & kc.quote,
     tm.lsft & kc.grave, tm.lsft & kc.N2, kc.backslash,                      kc.semicolon, kc.colon, kc.slash,
        to 2, XXXX,                         sl 3, sl 3
     ]
   ]
 }
