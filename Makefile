bootstrap:
	flutter clean
	flutter pub get
	# flutter pub run build_runner build --delete-conflicting-outputs
	# make gen

gen:
	fgen --no-watch
	# flutter gen-l10n 

watch:
		# dart run build_runner watch -d

pod:
	cd ios && pod install && pod update && cd ..

clean:
	flutter clean

buildDev:
	flutter clean
	flutter build apk --release --flavor=dev --target=lib/main_dev.dart --dart-define-from-file=configs/dev.json --obfuscate --split-debug-info=build/app/outputs/symbols