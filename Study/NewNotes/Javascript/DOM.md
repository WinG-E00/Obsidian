Tienen una Jerarquia

%%Aca basicamente agrego la jerarquia que tienen en el dom los objetos de este, esto signifca que en la jerarquia mas alta  los metodos que tengan estos podran ser heredados a las jerarquias mas bajas%%

[[EventTarget_Padre]]

| [[Node_Hijo]]   |                  |
| --------------- | ---------------- |
| [[Element]]     | [[document]]     |
| [[HTMLElement]] | [[HTMLDocument]] |

%%Como node es un objeto heredado de eventarget, cuando algun metodo o propiedad de este me vuelva a señalar al node entonces yo puedo usar los metodos de EventTarget o propiedades%%

