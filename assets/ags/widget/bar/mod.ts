import { workspaces } from "./component/workspaces";
import { time } from "./component/time";
import { batteryLabel } from "./component/battery";

export const bar = (monitor: number) => Widget.Window({
  monitor,
  // class_name: "bar",
  // name: `bar_${monitor}`,
  anchor: ['top', 'left', 'right'],
  exclusivity: 'exclusive',
  child: Widget.CenterBox({
    class_name: "bar",
    start_widget: Widget.Box({
      children: [workspaces()]
    }),
    center_widget: Widget.Box({
      children: [time()]
    }),
    end_widget: Widget.Box({
      hpack: "end",
      spacing: 6,
      children: [batteryLabel()]
    })
  })
});
