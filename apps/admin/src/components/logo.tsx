/** Logo Boost: a color sobre fondos claros, en blanco ("negativo") sobre el azul noche. */
export function Logo({ negative = false, className = "h-8 w-auto" }: { negative?: boolean; className?: string }) {
  return (
    // eslint-disable-next-line @next/next/no-img-element -- SVG del logo, no necesita optimizar
    <img src={negative ? "/boost-logo-blanco.svg" : "/boost-logo.svg"} alt="Boost" width={2802} height={994} className={className} />
  );
}
