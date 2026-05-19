# Dipole Antenna - Theory Notes

## What is a Dipole?
Two metal rods connected at the center (feed point).
AC signal applied at the feed causes current to alternate,
accelerating charges which radiate EM waves.

## Why lambda/2?
Wave travels from feed to tip (lambda/4) and reflects back (lambda/4).
At lambda/2 length, incident and reflected waves constructively interfere
creating a standing wave. This is resonance — maximum radiation efficiency.

Current distribution: maximum at center, zero at tips.
Voltage distribution: maximum at tips, zero at center.

## Distributed LC
The dipole behaves like a resonant LC circuit — not with discrete components
but distributed across the wire geometry.
- Wire inductance: magnetic field around current carrying conductor
- Arm capacitance: two separated conductors with voltage between them

## Radiation Pattern
Donut shaped — maximum radiation in XY plane, zero along Z axis (dipole axis).
Reason: EM waves are transverse — radiate perpendicular to current flow.

## Key Parameters
- Length: 0.5m (lambda/2 at 300 MHz)
- Width: 0.01m
- Resonant frequency: ~280 MHz (slightly off due to end effect)
- Directivity: 2.16 dBi (standard theoretical value for half-wave dipole)
- S11 at resonance: ~-15 dB (97% power radiated)

## End Effect
Physical width causes effective electrical length to be slightly longer
than physical length, shifting resonance slightly below target frequency.