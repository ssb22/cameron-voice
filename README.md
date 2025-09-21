---
# Metadata for HuggingFace dataset viewer
# (Humans please skip past this.  Why does HuggingFace insist it comes first?...)
license: gpl-3.0
task_categories:
- text-to-speech
- automatic-speech-recognition
language:
- zhy
modality:
- audio
size_categories:
- 1K<n<10K
tags:
- cantonese
- syllables
- tones
- speech-synthesis
- phonetics
- native-speaker
---

These syllables were recorded by Cameron Wong
for the [Ekho](https://github.com/hgneng/ekho) program.
They can also be used by [Gradint](../gradint).

## Compiling for Gradint

`cameron-voice.exe` is a zip file that must be
compatible with unzip on non-Windows platforms
as well as being self-extracting.

`unzipsfx.exe` is a Win32 build of `unzipsfx`
(cross-compiled with Mingw32) with
`CHEAP_SFX_AUTORUN` defined, and hacked
`process.c` so it doesn't confirm the Auto-run
command.

Use `make` to make a new `cameron-voice.exe` from the WAVs.

## License
You can redistribute and/or modify these recordings under the terms of
the GNU General Public License as published by the Free Software
Foundation; either version 3 of the License, or (at your option) any
later version.

These recordings are distributed in the hope that they will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.
