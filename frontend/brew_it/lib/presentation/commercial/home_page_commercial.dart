import 'package:brew_it/presentation/commercial/machines_page.dart';
import 'package:brew_it/presentation/common/widgets/menu_button.dart';
import 'package:brew_it/presentation/common/templates/home_page_template.dart';

class HomePageCommercial extends HomePageTemplate {
  HomePageCommercial({super.key})
      : super(
            title: "Twoje konto - Browar komercyjny - Browar Wierzbowice",
            buttons: [
              MenuButton("Zarządzanie urządzeniami",
                  type: "important", navigateToPage: MachinesPage()),
              MenuButton("Twoje rezerwacje"),
              MenuButton("Prośby o rezerwację od browarów kontraktowych"),
              MenuButton("Uprawnieni do wstępu do browaru"),
              MenuButton("Wyloguj się", type: "warning"),
            ]);
}
