.PHONY: build
build:
	git clone --depth 1 https://github.com/be5invis/Iosevka.git 2> /dev/null || git -C Iosevka pull
	cp private-build-plans.toml Iosevka
	cd Iosevka && npm install
	cd Iosevka && npm run build -- ttf::IosevkaCustom
