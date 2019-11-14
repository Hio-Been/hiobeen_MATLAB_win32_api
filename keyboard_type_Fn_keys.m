function keyboard_type_string( robot, opt, key )
% key = 'F11';

eval(sprintf([ 'robot.keyPress(java.awt.event.KeyEvent' ...
    '.VK_%s);'], key));
pause(opt.default_delay)

end
    
    