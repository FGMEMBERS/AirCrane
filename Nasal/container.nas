var container_down = func {
	if (getprop("/position/gear-agl-m")>getprop("/sim/container/cable")) {
		setprop("/sim/container/cable", getprop("sim/container/cable")+0.10);
	} else {
		setprop("sim/container/cable", getprop("/position/gear-agl-m"));
	}
}

var container_up = func {
	if (getprop("/sim/container/cable")>0) {
		setprop("/sim/container/cable", getprop("sim/container/cable")-0.10);
	} else {
		setprop("/sim/container/cable", 0);
	}
}

