import { workspaces } from "./component/workspaces";

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
    })
  })
});
