code_gen:
	dart run build_runner build -d

# Генерация путей к asset-ам
assets:
	dart pub global activate flutter_asset_generator; fgen -o lib/assets/resource.g.dart -p --no-preview -w --no-watch

# Подтягивание зависимостей
pub_get:
	flutter clean; flutter pub get

# Генерация локали
locals:
	fvm flutter gen-l10n

# pods:
# 	cd ios; bundle exec pod install --repo-update; cd ..

# --no-tree-shake-icons
apk:
	fvm flutter build apk --release --dart-define-from-file=config.json 
