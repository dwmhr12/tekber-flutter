import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Impor AboutPage dari file yang benar
import 'package:rani/AboutPage.dart';

void main() {
  testWidgets('AboutPage widget test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: AboutPage())); // Memanggil AboutPage langsung

    // Verifikasi apakah AppBar dengan judul 'About Me' muncul
    expect(find.text('About Me'), findsOneWidget);

    // Verifikasi apakah gambar profil ada
    expect(find.byType(Image), findsOneWidget);

    // Verifikasi apakah teks 'Dewi Maharani' ada
    expect(find.text('Dewi Maharani'), findsOneWidget);

    // Verifikasi apakah 'NRP: 5026221046' ada
    expect(find.text('NRP: 5026221046'), findsOneWidget);

    // Verifikasi apakah ikon bintang (Fun Fact) muncul
    expect(find.byIcon(Icons.stars), findsOneWidget);

    // Verifikasi apakah teks 'Fun Fact About Me' ada
    expect(find.text('Fun Fact About Me'), findsOneWidget);

    // Verifikasi apakah teks 'Bisa tidur dimana saja' ada
    expect(find.text('Bisa tidur dimana saja'), findsOneWidget);

    // Verifikasi apakah ada emoticon "😊"
    expect(find.text("😊"), findsWidgets);
  });
}
