global key;
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 's'
            run('moveForward.m');
        case 'a'
            disp("blue");
            run('stop.m');
            run('remotecontrol.m');
        case 'q'
            break;
        case '0'
            brick.StopAllMotors('Brake');
    end
end
CloseKeyboard();
