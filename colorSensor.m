brick.SetColorMode(1, 2);
color = brick.ColorCode(1);
 %% red
     if(color == 5)
       brick.beep;
       run('stop.m');
       pause(3);
     end

%% blue
    if(color == 2)
        brick.beep;
        brick.beep;
        run('stop.m');
        pause(6);
    end
%% green
   if (color == 3)
        brick.beep;
        brick.beep;
        brick.beep;
        run('stop.m');
        %%pause(1);
    end
%% yellow
    if (color == 7)
        brick.beep;
    end
