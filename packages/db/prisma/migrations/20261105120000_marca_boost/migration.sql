-- La plataforma pasa a llamarse Boost. Solo se renombra la organización principal si todavía tiene el nombre
-- anterior (si alguien ya le puso otro, se respeta). El slug "impacta" no cambia: lo usan scripts internos.
UPDATE "Organization" SET "name" = 'Boost' WHERE "isPlatform" = true AND "name" = 'iPass';
