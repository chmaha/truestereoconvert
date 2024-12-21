# TrueStereoConvert

A simple script to convert stereo audio files (WAV, FLAC, AIFF, MP3, OGG, Opus, WavPack) into "true stereo" (LRLR) format using [SoX](http://sox.sourceforge.net/). 

This tool processes audio files by duplicating the left and right channels and outputting them in the LRLR format (Left-Right-Left-Right) while maintaining the same channel information.

## Features

- Supports a wide range of audio formats: WAV, FLAC, AIFF, MP3, OGG, Opus, and WavPack.
- Simple batch conversion by terminal command.
- The output is saved with the suffix `_DTS` to indicate the processed format.
  

## Prerequisites

Before using this script, ensure you have SoX (Sound eXchange) installed:
  - **Linux**: Install via your package manager using `sudo apt install sox` (Debian/Ubuntu), `sudo dnf in sox` (Fedora) etc.
  - **macOS**: Install using `brew install sox` (Homebrew).

## Usage Example

```shell
./truestereoconvert.sh *.wav
```
