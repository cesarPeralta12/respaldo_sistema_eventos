/** Logo Boost: en blanco ("negativo") sobre el fondo azul noche del sitio; a color sobre fondos claros. */
export function Logo({ negative = true, className = "h-8 w-auto" }: { negative?: boolean; className?: string }) {
  return (
    // eslint-disable-next-line @next/next/no-img-element -- SVG del logo, no necesita optimizar
    <img src={negative ? "/boost-logo-blanco.svg" : "/boost-logo.svg"} alt="Boost" width={2769} height={944} className={className} />
  );
}
