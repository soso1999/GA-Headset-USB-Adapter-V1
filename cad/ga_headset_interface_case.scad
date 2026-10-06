// SPDX-License-Identifier: CERN-OHL-P-2.0
// Copyright 2026 Josef Jankarashvili / GA Headset USB Adapter contributors
// Original STL meshes recovered from the project conversation.
// This is an STL-import wrapper, NOT the missing original parametric source.
// Dimensions, holes and insert sockets cannot be parametrically edited here.
part = "base"; // [base,lid,both]
module base() { import("stl/ga_headset_interface_base.stl", convexity=10); }
module lid() { import("stl/ga_headset_interface_lid.stl", convexity=10); }
if (part == "base") base();
else if (part == "lid") lid();
else if (part == "both") { base(); translate([115,0,0]) lid(); }
else assert(false, "part must be base, lid or both");
