# Yagi-Uda Antenna - Theory Notes

## What is a Yagi-Uda Antenna?
Yagi-Uda is a directional antenna with significantly higher directivity 
than a simple dipole. Unlike the dipole which radiates in all directions 
(donut shape), the Yagi focuses radiation in one direction — like a 
flashlight beam. It is commonly used in TV reception, amateur radio, 
and point-to-point communication.

## Elements

### Driver / Exciter
- Connected directly to the signal source (feed point)
- Usually a folded dipole (higher impedance, better match)
- Radiates in all directions on its own, like a regular dipole
- Length ≈ λ/2

### Reflector
- Placed **behind** the exciter (one only)
- Slightly **longer** than λ/2
- Longer length → element is inductive → current **lags**
- This lag causes it to re-radiate at just the right phase so that:
  - Waves in the **forward direction add up** (constructive interference)
  - Waves in the **backward direction cancel** (destructive interference)
- Length ≈ 0.5λ (typically 5% longer than exciter)
- Spacing from exciter ≈ 0.25λ

### Directors
- Placed **in front** of the exciter (can be multiple)
- Slightly **shorter** than λ/2
- Shorter length → element is capacitive → current **leads**
- This lead causes them to re-radiate in a way that pulls the beam 
  forward, increasing directivity
- More directors = narrower beam = higher directivity
- Length ≈ 0.4λ to 0.45λ
- Spacing between directors ≈ 0.3λ to 0.4λ

## Element Length Formulae
All lengths are approximations. c = 3×10⁸ m/s, f = frequency in Hz.

| Element    | Length Formula         | At 300 MHz  |
|------------|------------------------|-------------|
| Exciter    | L = 0.47 × (c/f)      | ≈ 0.47 m    |
| Reflector  | L = 0.50 × (c/f)      | ≈ 0.50 m    |
| Directors  | L = 0.40 × (c/f)      | ≈ 0.40 m    |

## Radiation Pattern
- Dipole: symmetric donut, equal radiation in all directions around axis
- Yagi: clear main lobe in forward direction, small back lobe, 
  nulls on the sides
- The more directors added, the more focused (narrower) the main lobe

## Directivity
- Dipole: 2.16 dBi
- Yagi (3 directors): typically 7-10 dBi
- Higher directivity = more gain in the desired direction

## Impedance
- Input impedance is the impedance of the whole antenna system 
  as seen from the feed point
- Both resistance and reactance vary with frequency
- Resonance occurs where reactance = 0 and radiation resistance peaks
- Default MATLAB Yagi resonates at ~325 MHz (not 300 MHz) because 
  default dimensions are not optimized for exactly 300 MHz

## MATLAB Simulation
- Default yagiUda() has 3 directors, 1 reflector, 1 folded dipole exciter
- Functions used: pattern(), impedance()
- show() had a rendering error with modified exciter dimensions