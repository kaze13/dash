gui = require('nw.gui')

menu = new gui.Menu();

menu.append(new gui.MenuItem({ label: 'Item A' }));
menu.append(new gui.MenuItem({ label: 'Item B' }));
menu.append(new gui.MenuItem({ type: 'separator' }));
menu.append(new gui.MenuItem({ label: 'Item C' }));

win = gui.Window.get();

menubar = new gui.Menu({ type: 'menubar' });

sub1 = new gui.Menu();

sub1.append(new gui.MenuItem({
  label: 'Test1',
  click: () ->
    element = document.createElement('div');
    element.appendChild(document.createTextNode('Test 1'));
    document.body.appendChild(element);

}));

menubar.append(new gui.MenuItem({ label: 'Sub1', submenu: sub1}));

win.menu = menubar;
