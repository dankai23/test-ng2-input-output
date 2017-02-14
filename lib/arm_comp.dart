import 'package:angular2/core.dart';

@Component(
    selector: 'arm-comp',
    templateUrl: 'arm_comp.html',
    styleUrls: const ['arm_comp.css'])
class ArmComp {
  @Output()
  final armClick=new EventEmitter<String>();
  @Output()
  final legClick=new EventEmitter<String>();
  @Input()
  String head;
  @Input()
  String body;


  String arm = "15";
  String leg = "16";

  ArmComp();

  void arm_button(){
  //  int.parse(arm, onError:(source) => arm = "00");
    try {int.parse(arm);
    } catch (err) {
      arm = "00";
    }

    armClick.emit(arm);
//  print("head_button");
  }

  void leg_button(){
//    int.parse(leg, onError:(source) => leg = "00");
    try {int.parse(leg);
    } catch (err) {
      leg = "00";
    }

    legClick.emit(leg);
//  print("body_button");
  }

}
