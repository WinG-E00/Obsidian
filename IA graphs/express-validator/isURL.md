---
title: isURL
tags: [express-validator, validacion]
---

# `isURL()`

## Sintaxis
```js
body('url').isURL(options)
```

## Explicación
Comprueba que el valor sea una URL válida. Las opciones permiten, entre otras cosas, restringir protocolos o exigirlos.

## Ejemplo
```js
body('website').isURL({ protocols: ['https'], require_protocol: true })
```
