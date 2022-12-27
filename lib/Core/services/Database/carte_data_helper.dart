import 'package:sqflite/sqflite.dart';

class Cartdatabasehelper{
  Cartdatabasehelper._();
  static final Cartdatabasehelper db =Cartdatabasehelper._();
  static Database? _database;  
}