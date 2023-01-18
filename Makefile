.DEFAULT_GOAL := run

unix:
	flutter create --platforms=linux,android .

deps: unix
	flutter pub get

run: deps
	flutter run --device-id linux

.PHONY: unix deps run
