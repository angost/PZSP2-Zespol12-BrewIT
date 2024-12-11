import 'package:brew_it/presentation/_common/templates/table_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class StatisticsPage extends TablePageTemplate {
  StatisticsPage({super.key})
      : super(
            title: "Statystyki browarów:",
            button: MainButton(
              "Dane łączne",
              type: "secondary_small",
            ),
            headers: [
              "Id",
              "Typ browaru",
              "Nazwa",
              "Ilość produkowanego piwa",
              "% Anulowanych rezerwacji",
              "% Nieudanego piwa",
              "Operacje"
            ],
            options: [
              MyIconButton(type: "info"),
            ],
            // MOCK
            apiString: "https://jsonplaceholder.typicode.com/todos/",
            jsonFields: ["id", "title", "completed"]);
}
