import 'package:brew_it/presentation/_common/templates/details_add_edit_page_template.dart';
import 'package:brew_it/presentation/_common/widgets/main_button.dart';
import 'package:brew_it/presentation/_common/widgets/my_icon_button.dart';

class ReservationDetailsPage extends DetailsAddEditPageTemplate {
  ReservationDetailsPage(Map elementData, {super.key})
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
              "Urządzenia"
            ],
            jsonFieldNames: [
              "id",
              "title",
              "completed",
              "id",
              "title",
              "completed"
            ], // MOCK
            elementData: elementData);
}
