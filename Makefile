# for older versions of sox:
# RawParams=-r 44100 -c 1 -s -2
# for newer versions:
RawParams=-r 44100 -c 1 -e signed -b 16

SHELL=/bin/bash

cameron-voice.exe: jyutping-wong setup.bat cameron-exe-readme.txt unzipsfx.exe
	mkdir -p partials/cant/wong
	pushd jyutping-wong ; for N in *.wav ; do sox $$N $(RawParams) $$(echo $$N|sed -e s/wav/raw/); done; popd
	mv jyutping-wong/*.raw partials/cant/wong/
	sox -t raw $(RawParams) /dev/null -t wav - 2>/dev/null | cat > partials/header.wav
	cp cameron-exe-readme.txt partials/cant/README.txt
	for N in setup.bat partials/cant/README.txt ; do python -c "import sys; sys.stdout.write(sys.stdin.read().replace('\r','').replace('\n','\r\n'))" < $$N > n && mv n $$N; done
	find setup.bat partials -type f | sort | zip -q -9 cameron-voice.zip -@
	echo '$$AUTORUN$$>setup.bat' | zip -z cameron-voice.zip
	cat unzipsfx.exe cameron-voice.zip > cameron-voice.exe
	zip -A cameron-voice.exe
	rm -rf partials cameron-voice.zip
