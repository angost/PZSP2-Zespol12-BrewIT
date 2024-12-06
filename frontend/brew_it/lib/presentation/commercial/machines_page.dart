import 'package:brew_it/presentation/common/templates/table_page_template.dart';
import 'package:brew_it/presentation/common/widgets/main_button.dart';
import 'package:brew_it/presentation/common/widgets/my_icon_button.dart';

class MachinesPage extends TablePageTemplate {
  MachinesPage({super.key})
      : super(
            title: "Twoje urządzenia:",
            button: MainButton(
              "Dodaj maszynę",
              type: "secondary_small",
            ),
            headers: [
              "Id",
              "Nazwa",
              "Rodzaj",
              "Parametry"
            ],
            options: [
              MyIconButton(type: "info"),
              MyIconButton(type: "time"),
              MyIconButton(type: "edit"),
              MyIconButton(type: "delete")
            ]);
}
