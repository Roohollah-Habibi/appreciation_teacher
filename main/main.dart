import 'dart:io';
import 'constants.dart';





Future<void> main() async {
  print('\n\n');
  await for (final msg in makeAppreciation()) {
    msg;
  }
}
Stream<void> makeAppreciation() async* {
  for (int i = 1; i <= 23; i++) {
    await Future<void>.delayed(
      const Duration(milliseconds: 250),
      () => stdout.write('*'),
    );
    if (i == 10) {
      await Future<void>.delayed(
        const Duration(milliseconds: 1000),
        () => appreciationMsgText(txt: ' Appreciation Msg '),
      );
    }
    if (i == 23) {
      print('\n');
    }
  }

    await appreciationMsgText(txt: '*\t\t\t$eshasHasin\t\t\t*\n');
    await appreciationMsgText(txt: mainTxt);
    await appreciationMsgText(txt: friends);
    await appreciationMsgText(txt: secondMainTxt);
    print('\n\n\n');
  for (int i = 1; i <= 33; i++) {
    await Future<void>.delayed(
      const Duration(milliseconds: 250),
      () => stdout.write('*'),
    );
    if (i == 15) {
      await appreciationMsgText(txt: ' from R-H ');
    }
  }
  print('\n\n\n');
}

Future<void> appreciationMsgText({required String txt}) async {
  for (int i = 0; i <= txt.length - 1; i++) {
    await Future.delayed(
      const Duration(milliseconds: 150),
      () => stdout.write(txt[i]),
    );
  }
}
