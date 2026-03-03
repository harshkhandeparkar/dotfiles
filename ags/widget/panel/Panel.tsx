import app from "ags/gtk4/app"
import { Astal, Gtk, Gdk } from "ags/gtk4"
import { createPoll } from "ags/time"
import { BatteryStatus } from "./components/status"

export default function Panel(gdkmonitor: Gdk.Monitor) {
	const time = createPoll(
		"N/A",
		1000,
		() => new Date().toLocaleString('en-IN', {
			day: '2-digit',
			weekday: 'short',
			month: 'short',
			hour12: true,
			hour: 'numeric',
			minute: '2-digit',
		})
	);

	const { TOP, LEFT, RIGHT } = Astal.WindowAnchor;

	return (
		<window
			visible
			name="panel"
			class="panel"
			gdkmonitor={gdkmonitor}
			exclusivity={Astal.Exclusivity.EXCLUSIVE}
			anchor={TOP | LEFT | RIGHT}
			application={app}
		>
			<centerbox cssName="centerbox">
				<box $type="start" class="panel-section panel-left">
					<label label="MEDIA" />
				</box>

				<menubutton hexpand $type="center" halign={Gtk.Align.CENTER} class="clock panel-center">
					<label label={time} />
					<popover>
						<Gtk.Calendar />
					</popover>
				</menubutton>

				<box orientation={Gtk.Orientation.HORIZONTAL} $type="end" class="panel-section panel-right">
					<BatteryStatus />
				</box>
			</centerbox>
		</window>
	)
}
