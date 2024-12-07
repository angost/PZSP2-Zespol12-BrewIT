import 'package:brew_it/presentation/_common/templates/table_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class MachinesPage extends TablePageTemplate {
  MachinesPage({super.key})
      : super(
            title: "Twoje urządzenia:",
            button: MainButton(
              "Dodaj maszynę",
              type: "secondary_small",
            ),
            headers: ["Id", "Nazwa", "Rodzaj", "Parametry", "Operacje"],
            options: [
              MyIconButton(type: "info"),
              MyIconButton(type: "time"),
              MyIconButton(type: "edit"),
              MyIconButton(type: "delete")
            ],
            // MOCK
            apiString: "https://api.sampleapis.com/beers/ale",
            jsonFields: ["id", "name", "price"]);
}
