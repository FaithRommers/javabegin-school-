float eersteCijfer = 7.5;
float tweedeCijfer = 5.5; 
float derdeCijfer = 6.0;
float gemiddelde = 0;

gemiddelde = eersteCijfer + tweedeCijfer + derdeCijfer;
gemiddelde = gemiddelde / 3;



gemiddelde *= 10;
gemiddelde = (int) gemiddelde;
gemiddelde /= 10;

println(gemiddelde);
