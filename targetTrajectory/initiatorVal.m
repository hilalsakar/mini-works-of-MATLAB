T = 0;
prevTime = T;
trajectory = [];


%% start off with initiator 
% constant velocity motion model
%            [  x ;  y  ;  z  ; Vx ;  Vy ;Vz]
stateInit = [40000;20000;10000;-100;-200 ;0 ;0 ;0 ;0];
stateRes = find_state_cv(stateInit,T,prevTime);
if size(stateRes,1) == 6
    stateRes = [stateRes;0;0;0];
end
trajectory = [trajectory, [stateRes(1:9);T]];

% constant acceleration motion model
%            [  x ;  y  ;  z  ; Vx ;  Vy ;Vz ; ax ; ay ; az ]