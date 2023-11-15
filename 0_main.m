while 1
%% Initializing variables in  loop to constantly update the values
  % ultrasonic
    dist = brick.UltrasonicDist(2); 

  % touch
    touch = brick.TouchPressed(3); 

  % color
    run('1_colorSensor.m')

% Moves forward
    run('1_moveForward.m')

%% Inertia
    if dist >= 40
        run('1_stop.m')

      % pi/2 left turn
        brick.MoveMotor('A',100);
        brick.MoveMotor('B',-100);
        pause(2.75);

    end

%% touch dictates a right turn
    if touch == true
        run('1_moveBackward');
        pause(0.7);
        run('1_stop.m')
        brick.MoveMotor('A',-100);
        brick.MoveMotor('B',100);
        pause(2.6);
    end
    
end
