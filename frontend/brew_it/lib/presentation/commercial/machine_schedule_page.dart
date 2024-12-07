import 'package:brew_it/presentation/_common/templates/table_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class MachineSchedulePage extends TablePageTemplate {
  MachineSchedulePage({super.key})
      : super(
            title: "Daty zarezerwowania urządzenia:",
            button: MainButton(
              "Powrót",
              type: "primary_small",
            ),
            headers: ["Id", "Daty", "Browar", "Rezerwacja", "Operacje"],
            options: [
              MyIconButton(type: "link"),
            ],
            // MOCK
            apiString: "https://api.sampleapis.com/beers/ale",
            jsonFields: ["id", "name", "price"]);
}
