import 'package:brew_it/presentation/_common/templates/table_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class RegistrationRequestsPage extends TablePageTemplate {
  RegistrationRequestsPage({super.key})
      : super(
            title: "Prośby o rejestrację:",
            headers: [
              "Id",
              "Typ browaru",
              "Nazwa firmy",
              "Email",
              "Operacje",
            ],
            options: [
              MyIconButton(type: "accept"),
              MyIconButton(type: "cancel"),
            ],
            // MOCK
            apiString: "https://jsonplaceholder.typicode.com/todos/",
            jsonFields: ["id", "title", "completed"]);
}
