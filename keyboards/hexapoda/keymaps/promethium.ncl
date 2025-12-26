let { tap, hold, td, combo, .. } = import "fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
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
     kc.B, kc.Y, kc.O, kc.U, kc.X,       kc.X, kc.L, kc.D, kc.P, kc.F,
     kc.C, kc.I, kc.E, kc.A, kc.X,       kc.X, kc.H, kc.T, kc.N, kc.S,
           kc.W, kc.M, kc.G,                   kc.M, kc.G, kc.W,
                       kc.SPC, kc.SPC,   kc.R, kc.ENT,
                       # Combos
                       kc.Q,
                       kc.Z,
                       kc.V,
                       kc.X,
                       kc.J,
                       kc.K,
     ]
   ]
 }
