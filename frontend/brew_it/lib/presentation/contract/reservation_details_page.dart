import 'package:brew_it/presentation/_common/templates/details_add_edit_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class ReservationDetailsPage extends DetailsAddEditPageTemplate {
  ReservationDetailsPage({super.key})
      : super(
          title: "Rezerwacja - szczegóły:",
          buttons: [
            MainButton(
              "Powrót",
              type: "primary_small",
            )
          ],
          options: [MyIconButton(type: "delete")],
          fieldNames: [
            "Browar",
            "Daty",
            "Cena",
            "Osoby upoważnione do wstępu",
            "Planowana ilość warzonego piwa",
            "Maszyny"
          ],
          jsonFieldNames: ["", "", "", "", "", ""],
          fieldValues: [
            "Browar Wrocław",
            "21.12-01.02",
            "23000",
            "Adam Kowalski, Julia Żugaj, Bartosz Kamysz",
            "5000 l",
            "2011, 04095, 019293, 2030492, 393"
          ],
        );
}
