# Layout review checklist

## General

* [x] [Schematic review](schematic-checklist.md) complete and signed off, including pin swaps done during layout
* [x] Layout DRC 100% clean

## Decoupling

* [x] Decoupling caps as close to power pins as possible
* [ ] Low inductance mounting used for decoupling (prefer ViP if available, otherwise "[]8" shaped side vias

## DFM / yield enhancement

* [x] All design rules within manufacturer's capability
* [x] Minimize use of vias/traces that push fab limits
* [x] Controlled impedance specified in fab notes if applicable
* [x] Confirm impedance calculations include soldermask, or mask removed from RF traces
* [x] Stackup verified with manufacturer and specified in fab notes
* [x] Board finish specified in fab notes
* [x] If panelizing, add panel location indicators for identifying location-specific reflow issues
* [x] (recommended) Layer number markers specified to ensure correct assembly
* [x] Fiducials present (on both sides of board) if targeting automated assembly
* [x] Fiducial pattern asymmetric to detect rotated or flipped boards
* [x] Soldermask/copper clearance on fiducials respected
* [x] Panelization specified if required

## Footprints

* [x] Confirm components are available in the selected package
* [x] Confirm components (especially connectors and power regulators) are capable of desired current in the selected package
* [x] Verify schematic symbol matches the selected package
* [ ] Confirm pinout diagram is from top vs bottom of package
* [x] (recommended) PCB printed 1:1 on paper and checked against physical parts
* [x] 3D models obtained (if available) and checked against footprints
* [x] Soldermask apertures on all SMT lands and PTH pads

## Differential pairs
* [x] Routed differentially
* [x] Skew matched
* [x] Correct clearance to non-coupled nets

## High-speed signals

* [ ] Sufficient clearance to potential aggressors
* [x] Length matched if required
* [x] Minimize crossing reference plane splits/slots or changing layers, use caps/stitching vias if unavoidable
* [x] Confirm fab can do copper to edge of PCB for edge launch connectors
* [x] Double-check pad width on connectors and add plane cutouts if needed to minimize impedance discontinuities

## Power
* [x] Minimal slots in planes from via antipads
* [ ] Sufficient width for planes/traces for required current

## Sensitive analog
* [x] Guard ring / EMI cages provided if needed
* [ ] Physically separated from high current SMPS or other noise sources
* [x] Consider microphone effect on MLCCs if near strong sound sources

## Mechanical
* [x] Confirm all connectors to other systems comply with the appropriate mechanical standard (connector orientation, key position, etc)
* [x] LEDs, buttons, and other UI elements on outward-facing side of board
* [x] Keep-outs around PCB perimeter, card guides, panelization mouse-bites, etc respected
* [x] Stress-sensitive components (MLCC) sufficiently clear from V-score or mouse bite locations, and oriented to reduce
bending stress
* [x] Clearance around large ICs for heatsinks/fans if required
* [x] Clearance around pluggable connectors for mating cable/connector
* [x] Clearance around mounting holes for screws
* [x] Plane keepouts and clearance provided for shielded connectors, magnetics, etc
* [x] Confirm PCB dimensions and mounting hole size/placement against enclosure or card rack design
* [x] Verify mounting hole connection/isolation
* [x] Components not physically overlapping/colliding
* [x] Clearance provided around solder-in test points for probe tips

## Thermal

* [x] Thermal reliefs used for plane connections (unless via is used for heatsinking)
* [x] Solid connections used to planes if heatsinking
* [x] Ensure thermal balance on SMT chip components to minimize risk of tombstoning

## Solder paste

* [x] No uncapped vias in pads (except low-power QFNs where some voiding is acceptable)
* [x] QFN paste prints segmented
* [x] Small pads 100% size, larger pads reduced to avoid excessive solder volume
* [x] No paste apertures on card edge connectors or test points

## Solder mask

* [x] Confirm SMD vs NSMD pad geometry
* [x] Adequate clearance around pads (typ. 50 um)

## Silkscreen

* [x] Text size within fab limits
* [x] Text not overlapping drills or component pads
* [x] Text removed entirely in, or moved outside of, high component/via density areas
* [x] Traceability markings (rev, date, name, etc) provided
* [ ] Silkscreen box provided for writing/sticking serial number
* [x] Text mirrored properly on bottom layer

## Flex specific
* [x] Components oriented to reduce bending forces
* [x] Teardrops on all wire-to-pad connections

## CAM production
* [ ] KiCAD specific: rerun DRC and zone fills before exporting CAM files to ensure proper results
* [ ] Export gerber/drill files at the same time to ensure consistency
* [ ] Visually verify final CAM files to ensure no obvious misalignments
