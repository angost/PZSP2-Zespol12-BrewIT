import 'package:brew_it/presentation/_common/templates/table_page_template.dart';

class AllowedPeoplePage extends TablePageTemplate {
  AllowedPeoplePage({super.key})
      : super(
            title: "Osoby upoważnione do wstępu:",
            headers: ["Id", "Imię", "Nazwisko", "Browar kontraktowy"],
            // MOCK
            apiString: "https://api.sampleapis.com/beers/ale",
            jsonFields: ["id", "name", "price"]);
}
