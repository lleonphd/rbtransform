function [Ti] = Tinv(T)
%TINV Computes the inverse of 4x4 homogenous transform without an "inverse"
%   This is the closed-form computation for the inverse of 4x4 transform,
%       and it is preferred over numerically computing the inverse because
%       it is faster, and avoids any potential numerical errors
%   
%   T = 4x4 homogenous transform you want to find inverse to
%   Ti = the inverse of the 4x4 transform
%
%   read through "Transform inverse.pdf" in this repo for further details
%
%   written by lleon
%

R = T(1:3,1:3); % rotation matrix
d = T(1:3,4); % displacement vector

Ti = zeros(4); % initialize 4x4
Ti(4,4) = 1; % add homogenous term
Ti(1:3, 1:3) = R'; % inverse of rotation matrix is its transpose
Ti(1:3, 4) = -R'*d; % reverse and rotate displacement vector 

end
