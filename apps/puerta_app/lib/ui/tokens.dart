/// Identidad visual de la app de puerta: colores, tipografía y el tema. Sigue la identidad de Boost, "aguayo de neón"
/// (la misma de la web y el panel): noche violeta de base, la llama (naranja y rosa en degradado) para la marca y las
/// acciones principales, turquesa para los datos destacados, amarillo para destacar, lila de acento secundario, y
/// Poppins. El verde, el ámbar y el rojo quedan solo para el resultado de una lectura, que es lo que el portero tiene
/// que ver de un vistazo.
///
/// Todo texto sobre los fondos oscuros (ink, surface, surface2) tiene un contraste de al menos 4.5:1, para leerse en
/// plena luz y en la oscuridad del boliche. Por eso el rosa va de ícono, borde o relleno (con texto oscuro encima),
/// pero no de texto chico: para texto de acento se usa el turquesa, el amarillo o el lila.
library;

import 'package:flutter/cupertino.dart' show CupertinoPageTransitionsBuilder;
import 'package:flutter/material.dart';

class Brand {
  // Noche violeta (fondos): la misma de la web.
  static const ink = Color(0xFF1A0933);
  static const surface = Color(0xFF26104A);
  static const surface2 = Color(0xFF33185F);
  static const surface3 = Color(0xFF402074);
  static const stroke = Color(0xFF3E2470);
  static const text = Color(0xFFFBF7FF);
  static const muted = Color(0xFFC2B3E0);

  /// Un poco más claro que el de la web para leerse también sobre las hojas (surface2), con 5:1.
  static const faint = Color(0xFFA08FC4);

  /// Tarjetas: un degradado casi invisible alrededor de surface.
  static const cardTop = Color(0xFF2A1352);
  static const cardBottom = Color(0xFF220E43);

  /// La llama de Boost: naranja y rosa, juntos en degradado. Es la marca y el fondo de las acciones principales; el
  /// texto encima va en noche violeta (5.5:1 sobre el rosa, 6.5:1 sobre el naranja). El blanco no se lee sobre ellos.
  static const orange = Color(0xFFFF6A2B);
  static const pink = Color(0xFFFF3D8B);
  static const flameColors = [orange, pink];
  static const flame = LinearGradient(colors: flameColors);

  /// Acento de la marca sobre el fondo oscuro (íconos, bordes, foco, cargas) y relleno de los botones chicos: el rosa
  /// de la llama. Lo que va encima, en noche violeta.
  static const accent = pink;
  static const accentInk = ink;

  /// Rosa oscuro: fondos con texto blanco encima (5.5:1), como los botones de las hojas.
  static const pinkDeep = Color(0xFFC8136F);
  static const pinkDeepInk = Color(0xFFFFFFFF);

  /// Turquesa: precios, cifras y datos destacados. También el NFC y el cambio de zona (VIP).
  static const teal = Color(0xFF22E3C1);

  /// Fondo del resultado "cambio de zona": termina casi negro para que el texto blanco del medio tenga 4.7:1.
  static const tealDeep = Color(0xFF011F1B);

  /// Amarillo: para destacar (rótulos, la lectura en curso, el ingreso rápido). Nunca de fondo de botón.
  static const highlight = Color(0xFFFFD23F);
  static const highlightInk = ink;

  /// Lila: acento secundario. La salida, "entrada y salida" y el código de barras.
  static const lilac = Color(0xFFB79CFF);

  /// Fondo del resultado "salida": el texto blanco del medio queda con 5.1:1.
  static const lilacDeep = Color(0xFF3A1C80);

  /// Resultado de una lectura: verde aceptado, ámbar aviso, rojo rechazado. Solo para eso.
  static const green = Color(0xFF35C48F);
  static const greenDeep = Color(0xFF0E6B4D);
  static const amber = Color(0xFFFFB020);
  static const amberDeep = Color(0xFF8A5A00);
  static const red = Color(0xFFFF6B81);
  static const redDeep = Color(0xFFA3243A);

  /// Texto de un error sobre el rojo tenue de su recuadro.
  static const redText = Color(0xFFFFC2C8);
}

class Fonts {
  /// Poppins en toda la app (guía visual Boost): Bold títulos, SemiBold secciones, Medium botones, Regular texto.
  static const display = 'Poppins';
  static const body = 'Poppins';
}

/// Estilos de texto reutilizables.
class Type {
  static const hero = TextStyle(fontFamily: Fonts.display, fontSize: 28, fontWeight: FontWeight.w800, height: 1.12, letterSpacing: -0.5, color: Brand.text);
  static const title = TextStyle(fontFamily: Fonts.display, fontSize: 21, fontWeight: FontWeight.w700, height: 1.2, letterSpacing: -0.3, color: Brand.text);
  static const heading = TextStyle(fontFamily: Fonts.body, fontSize: 18, fontWeight: FontWeight.w600, height: 1.25, color: Brand.text);
  static const body = TextStyle(fontFamily: Fonts.body, fontSize: 15, fontWeight: FontWeight.w500, color: Brand.text, height: 1.35);
  static const muted = TextStyle(fontFamily: Fonts.body, fontSize: 13.5, fontWeight: FontWeight.w400, color: Brand.muted, height: 1.4);
  static const label = TextStyle(fontFamily: Fonts.body, fontSize: 11.5, fontWeight: FontWeight.w600, letterSpacing: 1.3, color: Brand.muted);
  static const number = TextStyle(fontFamily: Fonts.display, fontSize: 26, fontWeight: FontWeight.w700, letterSpacing: -0.4, color: Brand.text);
}

ThemeData buildTheme() {
  const scheme = ColorScheme.dark(
    primary: Brand.accent,
    onPrimary: Brand.accentInk,
    secondary: Brand.lilac,
    onSecondary: Brand.ink,
    tertiary: Brand.teal,
    onTertiary: Brand.ink,
    error: Brand.red,
    onError: Brand.ink,
    surface: Brand.surface,
    onSurface: Brand.text,
    onSurfaceVariant: Brand.muted,
    outline: Brand.stroke,
    surfaceContainerHighest: Brand.surface3,
    surfaceContainerHigh: Brand.surface2,
  );
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: scheme,
    scaffoldBackgroundColor: Brand.ink,
    fontFamily: Fonts.body,
    splashFactory: InkSparkle.splashFactory,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      titleTextStyle: Type.heading,
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Brand.surface3,
      contentTextStyle: Type.body,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: Brand.surface2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      titleTextStyle: Type.heading,
      contentTextStyle: Type.muted,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Brand.surface2,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Brand.surface,
      labelStyle: Type.muted,
      // Arriba del campo la etiqueta sigue en gris lila: el rosa no llega a 4.5:1 sobre las hojas. El foco lo marca el borde.
      floatingLabelStyle: const TextStyle(fontFamily: Fonts.body, color: Brand.muted),
      hintStyle: const TextStyle(color: Brand.faint),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Brand.stroke)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Brand.stroke)),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Brand.accent, width: 1.6)),
      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: Brand.red)),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
        backgroundColor: Brand.pinkDeep,
        foregroundColor: Brand.pinkDeepInk,
        textStyle: const TextStyle(fontFamily: Fonts.body, fontSize: 16, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(54),
        foregroundColor: Brand.text,
        side: const BorderSide(color: Brand.stroke),
        textStyle: const TextStyle(fontFamily: Fonts.body, fontSize: 15, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Brand.muted, textStyle: const TextStyle(fontFamily: Fonts.body, fontWeight: FontWeight.w600)),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? Brand.accentInk : Brand.muted),
      trackColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? Brand.accent : Brand.surface3),
      trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: FadeForwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Brand.accent, selectionHandleColor: Brand.accent),
  );
}
