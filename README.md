# Flutter Unidad 2 – UI Tabs (Donut App)

Proyecto de Flutter para la **Unidad 2**, donde se replica la primera sección de una app de comida con **TabBar** + **labels** y un **borde solo en el ícono** del tab seleccionado. Incluye buenas prácticas de estilos y organización básica por archivos.

<p align="center">
  <img src="assets/screenshots/home_light.png" alt="Home" width="600"/>
</p>

---

## 📦 Características
- `TabBar` desplazable con **texto gris/negro** según selección.
- Indicador **desactivado** (invisible) y borde aplicado **solo al ícono**.
- Componentización con `MyTab` (`lib/utils/my_tab.dart`).
- Estilos simples y consistentes (grises suaves como en el mockup).
- Preparado para agregar `TabBarView` y páginas de contenido.

---

## 🗂️ Estructura del proyecto (resumen)
lib/
main.dart
pages/
home_page.dart
utils/
my_tab.dart
assets/
icons/
donut.png
burger.png
smoothie.png
pancakes.png
pizza.png

yaml
Copiar código

> Asegúrate de declarar tus assets en `pubspec.yaml`:
```yaml
flutter:
  uses-material-design: true
  assets:
    - lib/icons/
    # o si los pusiste en assets/icons:
    # - assets/icons/
▶️ Cómo correr el proyecto
Instala dependencias

bash
Copiar código
flutter pub get
Ejecuta en dispositivo/emulador

bash
Copiar código
flutter run
(Web)

bash
Copiar código
flutter run -d chrome
📝 Notas de implementación
El borde del tab activo se dibuja en el contenedor del ícono dentro de MyTab, no con el indicator del TabBar.

Para evitar el assert de TabBar (indicator null/weight 0), se deja un indicator transparente con indicatorWeight: 1.0.

El texto hereda el color del TabBar:

labelColor: Colors.black (seleccionado)

unselectedLabelColor: Colors.grey (no seleccionado)

📷 Screenshots
Coloca tus capturas en assets/screenshots/ y actualiza los nombres en este README.

assets/screenshots/home_light.png

assets/screenshots/home_selected.png

✅ Requisitos
Flutter 3.x (o superior)

Dart 3.x

SDKs de plataforma (Android/iOS/Web) configurados

🚀 Próximos pasos
Añadir TabBarView con contenido por categoría.

Animaciones sutiles al cambiar de tab.

Theming claro/oscuro.

🤝 Contribuir
Haz un fork

Crea tu rama: git checkout -b feat/nueva-funcionalidad

Commit: git commit -m "feat: agrega X"

Push: git push origin feat/nueva-funcionalidad

Abre un Pull Request

📄 Licencia
MIT License – libre uso educativo y comercial con atribución.

👤 Autor
Yahir Eduardo Arceo Ávila
Repositorio: flutter_unidad2

nginx
Copiar código

### Cómo agregarlo y subirlo
En la **raíz** del proyecto:

```bash
# crea el archivo
echo ^> README.md
# (o pega el contenido manualmente en VS Code)

git add README.md
git commit -m "docs: añade README del proyecto"
git push -u origin main
