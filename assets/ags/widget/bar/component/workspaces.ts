export const workspaces = () => Widget.Box({
  class_name: "workspaces",
  spacing: 6,
  vertical: false,
  children: [...Array(4).keys()].map(i => Widget.Button({
    name: `workspace_${i}`,
    class_name: "workspace_button",
    hpack: "center",
    vpack: "center",
    on_clicked: () => {

    }
  }))
});

// TODO: make it switch to workspace number in binary
// TODO: make it display current workspace in binary
function evaluateWorkspace() { }
