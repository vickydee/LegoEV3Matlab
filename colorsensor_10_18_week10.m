%% Write 3 if statements. One for color. 

%%mycolorsensor = colorSensor('HIM',inputport)
brick.SetColorMode(2,2);
color = brick.ColorCode(2);
%%0	No color (Unknown color) 
%%1	Black 
%%2	Blue 
%%3	Green 
%%4	Yellow 
%%5	Red 
%%6	White 
%%7	Brown
while (color ~= 0)
    
         sprintf("Color: %d", color);  
    
end
%%ACD
brick.MoveMotor('AB', 50);

if(color == 5)
   pause(1);
end


% distance = brick.UltrasonicDist(SensorPort);





