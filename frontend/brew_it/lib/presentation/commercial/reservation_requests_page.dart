import 'package:brew_it/presentation/_common/templates/table_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class ReservationRequestsPage extends TablePageTemplate {
  ReservationRequestsPage({super.key})
      : super(
            title: "Prośby o rezerwację:",
            headers: [
              "Id",
              "Browar",
              "Daty",
              "Operacje",
            ],
            options: [
              MyIconButton(type: "info"),
              MyIconButton(type: "accept"),
              MyIconButton(type: "cancel"),
            ],
            // MOCK
            apiString: "https://jsonplaceholder.typicode.com/todos/",
            jsonFields: ["id", "title", "completed"]);
}
