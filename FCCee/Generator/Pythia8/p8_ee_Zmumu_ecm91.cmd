
! main03.cmnd.
! This file contains commands to be read in for a Pythia8 run.
! Lines not beginning with a letter or digit are comments.
! Names are case-insensitive  -  but spellings-sensitive!
! The settings here are illustrative, not always physics-motivated.

! 1) Settings used in the main program.
Random:setSeed = on
Main:timesAllowErrors = 5          ! how many aborts before run stops
Stat:showProcessLevel = on
Main:numberOfEvents = 50000	  ! number of events to generate

! 2) Settings related to output in init(), next() and stat().
Init:showChangedSettings = on	   ! list changed settings
Init:showChangedParticleData = off ! list changed particle data
Next:numberCount = 100             ! print message every n events
Next:numberShowInfo = 1            ! print event information n times
Next:numberShowProcess = 1         ! print process record n times
Next:numberShowEvent = 0           ! print event record n times

! 3) Beam parameter settings. Values below agree with default ones.
Beams:idA = 11                   ! first beam, e = 2212, pbar = -2212
Beams:idB = -11                   ! second beam, e = 2212, pbar = -2212

! Beam energy spread: 0.132% x 45.594 GeV = 0.0602 GeV
Beams:allowMomentumSpread  = on
Beams:sigmaPzA = 0.0602
Beams:sigmaPzB = 0.0602

! Vertex smearing :
Beams:allowVertexSpread = on
Beams:sigmaVertexX = 4.50e-3   !  6.4 mum / sqrt2
Beams:sigmaVertexY = 20.0E-6   !  28.3 nm / sqrt2
Beams:sigmaVertexZ = 0.30      !  0.30 mm


! 4) Hard process : Z->qqbar at Ecm=91 GeV
Beams:eCM = 91.188  ! CM energy of collision


WeakSingleBoson:ffbar2gmZ = on
23:onMode = off
23:onIfAny = 13
