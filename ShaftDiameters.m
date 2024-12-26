% Assumed values using the graphs;
Drive_Shaft_Diameter = 0.5; % Arbitrary
r_d = 0.04; % Arbitrary
D_d = 1.09; % Value associated with arbitrary r_d
Step_Diameter = Drive_Shaft_Diameter * D_d;
r = Drive_Shaft_Diameter * r_d; % Using algebra to solve for fillet radius

% Givens 
Nd = 1.15;
Sy = 238;
Sut = 257;
Ss = 95.2; 
Se_prime = 100;

% Coefficients for Morrow's equation for bending and torsion
a = 185.645;  % Updated constant coefficient
as = 0.19 - 2.51 * 10^-3 * Sut + 1.35 * 10^-5 * Sut^2 - 2.67 * 10^-8 * Sut^3;
b = -0.0395; % Assumed or calculated prior

Kb = 0.879 * D_d^(-0.107); % Kb = 0.91*d^0.157 if the diameter is between 2 and 10
Kc = 1.0;
Kd = 1;
Ke = 1;
Kt = 1; % Unity
Kts = 6.083 - 14.775 * (10 * r_d) + 18.250 * (10 * r_d)^2;
Kf = 1; % Fatigue stress-concentration factor for bending
Ka = a * Sut^b;
Se = Ka * Kb * Kc * Kd * Ke * Kf * Se_prime;

q_Bending = 1 / (1 + (sqrt(a) / sqrt(r))); % Notch Sensitivity
qs_torsion = 1 / (1 + (sqrt(as) / sqrt(r)));
Kf = 1 + q_Bending * (Kt - 1);
Kfs = 1 + qs_torsion * (Kts - 1);

% Moments and Torques
Maximum_Moment = [643.100, 321.550, 200.969, 388.540, 388.540, 463.259, 277.759, 119.039, 142.847, 142.847, 135.473, 192.794, 257.058, 257.058, 539.822, 539.822, 366.308, 366.308, 222.401]./12;
Minimum_Moment = zeros(1, 19); % Assuming no reverse loading or zero minimum moment
Maximum_Torque = Maximum_Moment; % Assuming torque has similar distribution for simplification
Minimum_Torque = zeros(1, 19); % Zero array of the same size as Maximum_Torque

% Recalculate Moments and Torques if necessary
Ma = abs(Maximum_Moment - Minimum_Moment) ./ 2;
Mm = (Maximum_Moment + Minimum_Moment) ./ 2;
Ta = abs(Maximum_Torque - Minimum_Torque) ./ 2;
Tm = (Maximum_Torque + Minimum_Torque) ./ 2;

% Ensure non-negative values under the square root
A_squared = 4 .* (Kf .* Ma).^2 + 3 .* (Kfs .* Ta).^2;
B_squared = 4 .* (Kf .* Mm).^2 + 3 .* (Kfs .* Tm).^2;

% Compute shaft diameters using real parts only
A = sqrt(A_squared);
B = sqrt(B_squared);

% Shaft diameters calculation, ensuring non-negative and real-only output
d = real((((16 * Nd) / pi) * ((A / Se) + (B / Sut))).^(1/3));

% Display the calculated shaft diameters directly
disp('Calculated Shaft Diameters (inches):');
disp(d);
