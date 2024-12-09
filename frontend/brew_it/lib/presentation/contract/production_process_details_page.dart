import 'package:brew_it/presentation/_common/templates/details_add_edit_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class ProductionProcessDetailsPage extends DetailsAddEditPageTemplate {
  ProductionProcessDetailsPage(Map elementData, {super.key})
      : super(
            title: "Proces wykonania - szczegóły:",
            buttons: [
              MainButton(
                "Powrót",
                type: "primary_small",
              )
            ],
            options: [MyIconButton(type: "edit")],
            fieldNames: [
              "Typ piwa",
              "Browar komercyjny",
              "Receptura",
              "Daty",
              "Rezerwacja",
              "Czy udany",
              "Operacje"
            ],
            jsonFieldNames: [
              "id",
              "title",
              "completed",
              "id",
              "title",
              "completed",
              "id"
            ], // MOCK
            elementData: elementData);
}
