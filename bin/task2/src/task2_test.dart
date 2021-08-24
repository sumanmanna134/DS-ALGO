import 'package:test/test.dart';

import 'task2.dart';
import 'test_constant.dart';

class TestServer {
  Task2 _task2 = Task2();
  TestConstant _testConstant = TestConstant();
  

  toTest() {
    group("Test Server", () {
      test('Test Case 1', () {
        _task2.getMinMax(_testConstant.MinMaxArray1);
        Map<String, dynamic> actual = _task2.toJson();
        try{

          expect(actual,_testConstant.getMinMaxTestCase1);
          print("Test case 1 passed! ✅");

        }catch(e){

          print("Test Server Test Case 1 => Fail ❌");
          print(e.message);

        }
        
      });

      test('Test Case 2', () {
        _task2.getMinMax(_testConstant.MinMaxArray2);
        Map<String, dynamic> actual = _task2.toJson();
        try{

          expect(actual,_testConstant.getMinMaxTestCase2);
          print("Test case 2 passed! ✅");

        }catch(e){
          print("Test case 2 Failed! ❌");
          print(e.message);
        }
        
      });
    });
  }
}
