import 'package:angular2/core.dart';

@Component(
    selector: 'head-comp',
    templateUrl: 'head_comp.html',
    styleUrls: const ['head_comp.css'])
class HeadComp {
  @Output()
  final headClick=new EventEmitter<String>();
  @Output()
  final bodyClick=new EventEmitter<String>();
  @Input()
  String arm;
  @Input()
  String leg;


  String head = "10";
  String body = "11";

  HeadComp();

  void head_button(){
//    int.parse(head, onError:(source) => print("head is invalid"));
    int.parse(head, onError:(source) => head = "00");
    headClick.emit(head);
//  print("head_button");
  }

  void body_button(){
    int.parse(body, onError:(source) => body = "00");
    bodyClick.emit(body);
//  print("body_button");
  }


}
