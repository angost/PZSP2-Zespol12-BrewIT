import 'package:brew_it/presentation/_common/templates/table_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';
import 'package:brew_it/presentation/contract/production_process_details_page.dart';

class ProductionProcessesPage extends TablePageTemplate {
  ProductionProcessesPage({super.key})
      : super(
            title: "Twoje procesy wykonania piwa:",
            button: MainButton(
              "Dodaj proces",
              type: "secondary_small",
            ),
            headers: [
              "Id",
              "Typ piwa",
              "Browar komercyjny",
              "Daty",
              "Czy udany",
              "Operacje"
            ],
            options: [
              MyIconButton(
                type: "info",
                navigateToPage: (Map elementData) {
                  return ProductionProcessDetailsPage(elementData);
                },
              ),
              MyIconButton(type: "edit")
            ],
            // MOCK
            apiString: "https://jsonplaceholder.typicode.com/todos/",
            jsonFields: ["id", "title", "completed"]);
}
