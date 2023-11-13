while 1
%% Initializing variables in  loop to constantly update the values
  % ultrasonic
    dist = brick.UltrasonicDist(2); 

  % touch
    touch = brick.TouchPressed(3); 

  % color
    run('colorSensor.m')

% Moves forward
    run('moveForward.m')

%% Inertia
    if dist >= 40
        run('stop.m')

      % pi/2 left turn
        brick.MoveMotor('A',100);
        brick.MoveMotor('B',-100);
        pause(2.75);

    end

%% touch dictates a right turn
    if touch == true
        run('moveBackward');
        pause(0.7);
        run('stop.m')
        brick.MoveMotor('A',-100);
        brick.MoveMotor('B',100);
        pause(2.6);
    end
    
end
