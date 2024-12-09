import 'package:brew_it/core/helper/field_names.dart';
import 'package:brew_it/presentation/_common/templates/details_add_edit_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/contract/production_processes/production_process_details_page.dart';
import 'package:brew_it/presentation/contract/production_processes/production_processes_page.dart';

class ProductionProcessAddPage extends DetailsAddEditPageTemplate {
  ProductionProcessAddPage({super.key})
      : super(
          title: "Dodaj nowy proces wykonania:",
          buttons: [
            MainButton(
              "Zapisz",
              type: "primary_small",
              navigateToPage: (Map elementData) {
                return ProductionProcessDetailsPage(elementData);
              },
              dataForPage: {
                "id": "",
                "title": "",
                "completed": "",
                "id": "",
                "title": "",
                "completed": "",
              }, //MOCK
            ),
            MainButton(
              "Anuluj",
              type: "secondary_small",
              navigateToPage: () {
                return ProductionProcessesPage();
              },
            )
          ],
          fieldNames: ProductionProcessesFieldNames().fieldNames,
          jsonFieldNames:
              ProductionProcessesFieldNames().jsonFieldNames,
          fieldEditable: [false, false, true, false, true, false],
        );
}
