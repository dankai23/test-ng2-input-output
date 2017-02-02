import 'package:angular2/core.dart';
import 'head_comp.dart';
import 'arm_comp.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    styleUrls: const ['app_component.css'],
    directives: const [HeadComp,ArmComp])
class AppComponent {
  String head = "0";
  String body = "0";
  String arm = "0";
  String leg = "0";
  String ready_num = "0";

  void headSetValue($event){
    head = $event;
    makeReadyNum();
  }

  void bodySetValue($event){
    body = $event;
    makeReadyNum();

  }

  void armSetValue($event){
    arm = $event;
    makeReadyNum();

  }

  void legSetValue($event){
    leg = $event;
    makeReadyNum();

  }

  void makeReadyNum(){
    int i_min;
    int i_tmp;
    
    i_min = int.parse(head);

    i_tmp = int.parse(body);
    if(i_tmp < i_min){i_min = i_tmp;}

    i_tmp = int.parse(arm);
    if(i_tmp < i_min){i_min = i_tmp;}

    i_tmp = int.parse(leg);
    if(i_tmp < i_min){i_min = i_tmp;}

    ready_num = i_min.toString();

//    print(ready_num);

  }

}
