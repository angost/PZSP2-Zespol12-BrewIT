import 'package:brew_it/presentation/_common/templates/details_add_edit_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/contract/production_processes/production_process_details_page.dart';

class ProductionProcessEditPage extends DetailsAddEditPageTemplate {
  ProductionProcessEditPage(Map elementData, {super.key})
      : super(
            title: "Proces wykonania - edytuj:",
            buttons: [
              MainButton(
                "Zapisz",
                type: "primary_small",
                navigateToPage: (Map elementData) {
                  return ProductionProcessDetailsPage(elementData);
                },
                dataForPage: elementData,
              ),
              MainButton(
                "Anuluj",
                type: "secondary_small",
                navigateToPage: (Map elementData) {
                  return ProductionProcessDetailsPage(elementData);
                },
                dataForPage: elementData,
              )
            ],
            fieldNames: [
              "Typ piwa",
              "Browar komercyjny",
              "Receptura",
              "Daty",
              "Rezerwacja",
              "Czy udany",
            ],
            jsonFieldNames: [
              "id",
              "title",
              "completed",
              "id",
              "title",
              "completed",
            ], // MOCK
            fieldEditable: [false, false, false, false, false, true],
            elementData: elementData);
}
