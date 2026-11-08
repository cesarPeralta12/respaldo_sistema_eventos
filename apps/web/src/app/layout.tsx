import type { Metadata } from "next";
import { Bricolage_Grotesque, Figtree } from "next/font/google";
import type { ReactNode } from "react";
import { Logo } from "@/components/logo";
import "./globals.css";
import { Nav } from "./nav";

// Bricolage Grotesque para títulos, precios y fechas (con el eje de ancho, para angostarla en los títulos largos);
// Figtree para el texto y los botones. Las dos son variables: no hace falta elegir pesos.
const bricolage = Bricolage_Grotesque({ variable: "--font-bricolage", subsets: ["latin"], axes: ["wdth", "opsz"] });
const figtree = Figtree({ variable: "--font-figtree", subsets: ["latin"] });

export const metadata: Metadata = {
  title: { default: "Boost — Entradas para eventos en Bolivia", template: "%s · Boost" },
  description: "Compra entradas para conciertos, teatro, festivales y más en Bolivia.",
};

export default function RootLayout({ children }: { children: ReactNode }) {
  return (
    <html lang="es" className={`${bricolage.variable} ${figtree.variable} h-full antialiased`}>
      <body className="flex min-h-full flex-col">
        <Nav />
        {children}
        <footer className="mt-auto border-t border-[var(--border)] px-6 py-8 text-xs text-[var(--ink-dim)]">
          <div className="mx-auto flex max-w-6xl flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
            <Logo className="h-6 w-auto" />
            <span>© 2026 · Entradas para eventos en Bolivia</span>
          </div>
        </footer>
      </body>
    </html>
  );
}
