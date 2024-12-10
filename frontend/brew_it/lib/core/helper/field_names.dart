abstract class StandardFieldNames {
  StandardFieldNames(
      {required this.fieldNames,
      required this.jsonFieldNames,
      required this.fieldNamesTable,
      required this.jsonFieldNamesTable});

  List<String> fieldNames;
  List<String> jsonFieldNames;
  List<String> fieldNamesTable;
  List<String> jsonFieldNamesTable;
}

class ProductionProcessesFieldNames extends StandardFieldNames {
  ProductionProcessesFieldNames()
      : super(fieldNames: [
          "Typ piwa",
          "Browar komercyjny",
          "Receptura",
          "Daty",
          "Rezerwacja",
          "Czy udany",
        ], jsonFieldNames: [
          // MOCK
          "id",
          "title",
          "completed",
          "id",
          "title",
          "completed",
        ], fieldNamesTable: [
          "Id",
          "Typ piwa",
          "Browar komercyjny",
          "Daty",
          "Czy udany",
          "Operacje"
        ], jsonFieldNamesTable: [
          // MOCK
          "id", "title", "completed"
        ]);
}