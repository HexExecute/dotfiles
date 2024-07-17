// const date = Utils.derive([clock, format], (c, f) => c.format(f) || "");
const date = Variable("", {
  poll: [1000, 'date "+%b, %e  %l : %M : %S %p"']
});

export const time = () => Widget.Label({
  label: date.bind()
});

