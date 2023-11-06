%% Variables
dist = brick.UltrasonicDist(2);
    % ultrasonic
    touch = brick.TouchPressed(3);
    % touch


%% Move Forward

while 1

    % The robot moves through detecting what's on the right
    run('moveForward.m')
    run('colorSensor.m')

    %% dist dictates a left turn
    if dist >= 40
        run('stop.m')
        % pi/2 left turn
        brick.MoveMotor('A',100);
        brick.MoveMotor('B',-100);
        pause(2.75);
    end
    while (dist == 255)
        brick.MoveMotor('A',-90);
        brick.MoveMotor('B',90);
        pause(1.7);
        brick.MoveMotor('A',90);
        brick.MoveMotor('B',-90);
        pause(1.7);
        run('stop.m')
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
