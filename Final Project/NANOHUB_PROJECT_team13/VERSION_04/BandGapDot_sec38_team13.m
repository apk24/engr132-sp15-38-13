%THIS IS A FUNCTION FILE, NOT INTENDED TO BE RUN ON ITS OWN
%This file is required to be in the same directory as the main file and
%other helper files. This is because the other files may reference this
%file.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Apoorva Kharche, akharche@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name login@purdue.edu
%
%  Section #: 38     Team #: 13
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [ E_g ] = BandGapDot_sec38_team13(mat)
%find band gap energy of quantum dot given bulk, radius, and
%dielectric constant

if(isfield(mat,'qdeg') && ~isempty(mat.qdeg) && mat.qdeg > 0)
    E_g = mat.qdeg;
else
    E_g_bulk = mat.beg;
    r = mat.r*1.0e-9;
    eps = mat.eps;
    %%Constants
    %Planck
    h = 6.626*10^(-34); %[J * s]
    %Electron Mass
    m_e = 9.11*10^-31;%[kg]
    %Electron Charge
    q_e = 1.602*10^-19;%[C]
    %Permitivity of Free Space
    eps_0 = 8.854*10^-12;%[F / m]
    % 1 eV
    eV = 1.602*10^-19; %[J]
    
    %The equation to find the band gap
    E_g = E_g_bulk + (((h)^2)/(4*m_e*r^2) - (1.8*q_e^2)/(4*pi()*eps*eps_0*r))/eV;
end
% mat.qdeg = E_g;
end
