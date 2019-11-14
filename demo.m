


try; clear robot; end

robot = get_robot();
opt = set_options();

% Click mouse demo (L, M, R)
mouse_click(robot, opt, 'R')

% Move mouse demo (L, M, R)
pos = [200, 300];
mouse_move(robot, opt, pos)

% Keyboard demo (string input)
keyboard_type_string(robot, opt, 'abcd')

% Keyboard demo (Function key)
keyboard_type_Fn_keys(robot, opt, 'F1')





