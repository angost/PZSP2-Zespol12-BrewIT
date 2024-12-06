import 'package:brew_it/presentation/common/menu_button.dart';
import 'package:brew_it/presentation/home/home_page_template.dart';

class HomePageCommercial extends HomePageTemplate {
  HomePageCommercial({super.key})
      : super(
            title: "Twoje konto - Browar komercyjny - Browar Wierzbowice",
            buttons: [
              MenuButton(
                "Zarządzanie urządzeniami",
                type: "important",
              ),
              MenuButton("Twoje rezerwacje"),
              MenuButton("Prośby o rezerwację od browarów kontraktowych"),
              MenuButton("Uprawnieni do wstępu do browaru"),
              MenuButton("Wyloguj się", type: "warning"),
            ]);
}
