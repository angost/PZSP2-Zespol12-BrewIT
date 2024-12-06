import 'package:brew_it/presentation/common/menu_button.dart';
import 'package:brew_it/presentation/home/home_page_template.dart';

class HomePageContract extends HomePageTemplate {
  HomePageContract({super.key})
      : super(
            title: "Twoje konto - Browar kontraktowy - Browar Stary Kamień",
            buttons: [
              MenuButton(
                "Oferta browarów komercyjnych",
                type: "important",
              ),
              MenuButton("Twoje rezerwacje"),
              MenuButton("Procesy wykonania piwa"),
              MenuButton("Twoje receptury"),
              MenuButton("Wyloguj się", type: "warning"),
            ]);
}