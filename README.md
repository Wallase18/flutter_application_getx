#  flutter_application_getx

Aplicativo para monitoramento do transito e lavratura de Autos de Infrações por agentes de trânsito.

  - Flutter **v3.3.4ˆ**
  - Dart SDK **v2.18.2 (stable)**
  - Android **v12ˆ**

# Funcionalidades:

  - 

# Requisitos do ambiente de desenvolvimento:
  - Flutter na versão **v3.3.4ˆ** ou superior **Stable SEMPRE!**
  - Dart SDK **v2.18.2 (stable)** ou superior **Stable SEMPRE!**
  - Android SDK atualizado da versão **v12ˆ** ou superio.

### Instalando e rodando

  - Clone o projeto;
  - Renomeie o aquivo .env.example para .env e preencha as variáveis de ambiente com seus respectivos valores.

Na raiz do projeto rode o comando e aguarde o final
```sh
$ flutter pub get
```

Na raiz do projeto rode o comando:

```sh
$ flutter run lib/main.dart
```

### Build Release

Garanta que a **keystore** esteja dentro da pasta 

```sh
android/app/
```

[Documentação official do Flutter](https://docs.flutter.dev/deployment/android)

Os seguintes comando devem ser executados no diretório do projeto!

Abra seu terminal dentro do diretório **RAIZ** do projeto.

```sh
$ flutter build apk
```
Aguarde o final do processo:

```sh
✓  Built build/app/outputs/flutter-apk/app-release.apk
```

O apk compilado se encontra no diretório:
```sh
build/app/outputs/flutter-apk/
```
