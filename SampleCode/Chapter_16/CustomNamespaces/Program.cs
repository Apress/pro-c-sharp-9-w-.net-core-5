using System;
// Resolve the ambiguity using a custom alias.
using The3DHexagon = CustomNamespaces.My3DShapes.Hexagon;
using bfHome = System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization.Formatters.Binary;
using CustomNamespaces.MyShapes;

//MyShapes.Hexagon h = new MyShapes.Hexagon();
//MyShapes.Circle c = new MyShapes.Circle();
//MyShapes.Square s = new MyShapes.Square();
Hexagon h = new Hexagon();
Circle c = new Circle();
Square s = new Square();
// This is really creating a My3DShapes.Hexagon class.
The3DHexagon h2 = new The3DHexagon();
bfHome.BinaryFormatter b1 = new bfHome.BinaryFormatter();
BinaryFormatter b2 = new BinaryFormatter();
