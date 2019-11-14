function keyboard_type_string( robot, opt, str )

for keyIdx = 1:length(str)
    key = str(keyIdx);
    if isempty(str2num(key)) % Non-digit
        if key == ',',      key = 'COMMA';
        elseif key == '.',  key = 'DECIMAL';
        elseif key == ';',  key = 'SEMICOLON';
        elseif key == ':',  key = 'COLON';
        elseif key == '=',  key = 'EQUALS';
        elseif key == ' ',  key = 'SPACE';
        elseif key == '\',  key = 'BACK_SLASH';
        elseif key == '/',  key = 'DIVIDE';
        elseif key == '[',  key = 'OPEN_BRACKET';
        elseif key == ']',  key = 'CLOSE_BRACKET';
        elseif key == '+',  key = 'ADD';
        elseif key == '-',  key = 'MINUS';
        elseif key == '*',  key = 'MULTIPLY';
        else,  key = upper(key); end
    end
    eval(sprintf([ 'robot.keyPress(java.awt.event.KeyEvent' ...
        '.VK_%s);'], key));
    pause(opt.default_delay)
end



