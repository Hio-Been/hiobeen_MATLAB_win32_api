function mouse_click( robot, opt, LMR )

% if length(LMR) == 1
    switch(LMR)
        case('L'), button_code = 16;%InputEvent.BUTTON1_MASK;
        case('M'), button_code = 8;%InputEvent.BUTTON2_MASK;
        case('R'), button_code = 4;%InputEvent.BUTTON3_MASK;
    end
    robot.mousePress(button_code);
    pause( opt.default_delay );
    robot.mouseRelease(button_code);
    pause( opt.default_delay );
% else
%     for buttonIdx = 1:length(LMR)
%         button = LMR(buttonIdx);
%         switch(button)
%         case('L'), button_code = 16;%InputEvent.BUTTON1_MASK;
%         case('M'), button_code = 8;%InputEvent.BUTTON2_MASK;
%         case('R'), button_code = 4;%InputEvent.BUTTON3_MASK;
%         end
%         robot.mousePress(button_code);
%         pause( opt.doubleclick_delay );
%         robot.mouseRelease(button_code);
%         pause( opt.doubleclick_delay );
%     end
% end
