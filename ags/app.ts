import app from "ags/gtk4/app"
import style from "./styles/style.scss"
import Panel from "./widget/panel/Panel"

app.start({
  css: style,
  main() {
    app.get_monitors().map(Panel)
  },
})
