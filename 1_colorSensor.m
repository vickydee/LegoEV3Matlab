brick.SetColorMode(1, 2);
color = brick.ColorCode(1);
 %% red
     if(color == 5)
       brick.beep;
       run('1_stop.m');
       pause(3);
     end

%% blue
    if(color == 2)
        disp("blue");
        run('1_stop.m');
        run('2_remotecontrol.m');
    end
%% green
   if (color == 3)
        brick.beep;
        brick.beep;
        brick.beep;
        run('1_stop.m');
        pause(6);
    end
%% yellow
    if (color == 7)
        brick.beep;
    end
