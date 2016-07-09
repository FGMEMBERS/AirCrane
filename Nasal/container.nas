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

var container_release = func {
	if (getprop("/sim/weight[3]/weight-lb")>0) {
		setprop("/sim/weight[3]/weight-lb", getprop("/sim/weight[3]/weight-lb")-50.00);
		setprop("/sim/container/release", 1);
	} else {
		setprop("/sim/weight[3]/weight-lb", 0.00);
		setprop("/sim/container/release", 0);
	}
}

