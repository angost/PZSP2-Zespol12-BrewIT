import 'package:brew_it/presentation/_common/templates/table_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class ReservationsPage extends TablePageTemplate {
  ReservationsPage({super.key})
      : super(
            title: "Twoje rezerwacje:",
            headers: ["Id", "Browar komercyjny", "Daty", "Operacje"],
            options: [MyIconButton(type: "info"), MyIconButton(type: "delete")],
            // MOCK
            apiString: "https://jsonplaceholder.typicode.com/todos/",
            jsonFields: ["id", "title", "completed"]);
}
