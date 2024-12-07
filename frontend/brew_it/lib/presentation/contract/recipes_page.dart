import 'package:brew_it/presentation/_common/templates/table_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class RecipesPage extends TablePageTemplate {
  RecipesPage({super.key})
      : super(
            title: "Twoje receptury:",
            button: MainButton(
              "Dodaj recepturę",
              type: "secondary_small",
            ),
            headers: ["Id", "Nazwa", "Typ piwa", "Operacje"],
            options: [MyIconButton(type: "info"), MyIconButton(type: "delete")],
            // MOCK
            apiString: "https://jsonplaceholder.typicode.com/todos/",
            jsonFields: ["id", "title", "completed"]);
}
