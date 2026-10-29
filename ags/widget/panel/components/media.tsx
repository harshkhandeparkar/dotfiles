import { Gtk } from "ags/gtk4"
import Mpris from "gi://AstalMpris"
import { createBinding } from "gnim";

export function MediaStatus() {
	const mpris = Mpris.get_default();
	const player = createBinding(mpris, "players")(
		(players) => {
			console.log('chaning');

			const running_players = players.filter((p) => p.playback_status === 0);

			return running_players.length > 0 ? running_players[0] : players[0];
		}
	);

	const playerName = player(p => p.entry);
	const playerTitle = player(p => p.title);

	return (
		<box spacing={5}>
			<image iconName={playerName}></image>
			<label label={playerTitle} justify={Gtk.Justification.CENTER} />
		</box >
	)
}

