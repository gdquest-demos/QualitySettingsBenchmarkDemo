# QualitySettingsBenchmarkDemo
A simple Quality Settings demo with user hardware benchmark.

## How it works
The first time the game launches, a benchmark is done using 3 different Quality Settings (low/medium/high), with the target FPS set to 60. Settings with expected FPS higher than 60 will be discarded by the benchmark, and the optimal Setting will be the one closest to 60 FPS (the best quality setting with minimum performance).

## Instructions
On the main scene with multiple meshes, press 1/2/3 to change Quality Settings to Low/Medium/High, respectively. The current FPS is displayed in the upper-left corner.
