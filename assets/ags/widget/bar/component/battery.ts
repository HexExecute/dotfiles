const battery = await Service.import("battery");

export const batteryLabel = () => Widget.Box({
  class_name: "battery_label",
  visible: battery.bind("available"),
  children: [
    Widget.Label({
      label: battery.bind("percent").as(p => `${p}`),
    }),
    Widget.Icon({ icon: battery.bind("percent").as(p => `battery-level-${Math.floor(p / 10) * 10}-symbolic`) }),
    Widget.LevelBar({
      class_name: "battery_level",
      width_request: 20,
      height_request: 20,
      vertical: true,
      vpack: "center",
      value: battery.bind("percent").as(p => p / 200)
    })
  ]
});
