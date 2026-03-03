import { Gtk } from "ags/gtk4"
import { createBinding } from "ags"
import Battery from "gi://AstalBattery"
import Ram from "giram"

export function BatteryStatus() {
	const battery = Battery.get_default();

	const percent = createBinding(
		battery,
		"percentage",
	)(
		(p) => `${Math.round(p * 100)} %`
	);
	const battIcon = createBinding(battery, "iconName");

	return (
		<box spacing={5}>
			<image iconName={battIcon}></image>
			<label label={percent} justify={Gtk.Justification.CENTER} class="clock" />
		</box>
	)
}

export function RamUsage() {
	const
}