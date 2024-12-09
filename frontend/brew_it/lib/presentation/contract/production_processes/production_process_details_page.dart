import 'package:brew_it/presentation/_common/templates/details_add_edit_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';
import 'package:brew_it/presentation/contract/production_processes/production_process_edit_page.dart';
import 'package:brew_it/presentation/contract/production_processes/production_processes_page.dart';

class ProductionProcessDetailsPage extends DetailsAddEditPageTemplate {
  ProductionProcessDetailsPage(Map elementData, {super.key})
      : super(
            title: "Proces wykonania - szczegóły:",
            buttons: [
              MainButton(
                "Powrót",
                type: "primary_small",
                navigateToPage: () {
                  return ProductionProcessesPage();
                },
              )
            ],
            options: [
              MyIconButton(
                type: "edit",
                navigateToPage: (Map elementData) {
                  return ProductionProcessEditPage(elementData);
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
            elementData: elementData);
}
