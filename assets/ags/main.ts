// const time = Variable('', {
//   poll: [1000, function() {
//     return Date().toString();
//   }],
// });

// const Bar = (monitor: number) => Widget.Window({
//   monitor,
//   name: `bar${monitor}`,
//   anchor: ['top', 'left', 'right'],
//   exclusivity: 'exclusive',
//   child: Widget.CenterBox({
//     start_widget: Widget.Label({
//       hpack: 'center',
//       label: 'Welcome to AGS!',
//     }),
//     end_widget: Widget.Label({
//       hpack: 'center',
//       label: time.bind(),
//     }),
//   }),
// });

const top_bar = (monitor: number) => Widget.Window({
  monitor,
  name: `top_bar_${monitor}`,
  anchor: ['top', 'left', 'right'],
  exclusivity: 'exclusive',
  child: Widget.CenterBox({
    start_widget: Widget.Label({
      hpack: 'center',
      label: 'test'
    })
  })
});

Utils.monitorFile(
  // directory that contains the scss files
  `${App.configDir}/style`,

  // reload function
  () => {
    // main scss file
    const scss = `${App.configDir}/style/style.scss`;

    // target css file
    const css = `/tmp/ags-style.css`;

    // compile, reset, apply
    Utils.exec(`sass ${scss} ${css}`);
    App.resetCss();
    App.applyCss(css);
  },
);

App.config({
  configDir: "~/.dotfiles/assets/ags",
  windows: [top_bar(0)],
});
