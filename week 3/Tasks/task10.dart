/*Task 10: Interface with Implements 
Create a class PrinterInterface with a method printInfo(). 
Create a class Report that implements it. 
Override the method and call it from main(). */
class PrinterInterface {
  void printInfo() {
    print('Printing information...');
  }
}
class Report implements PrinterInterface {
  @override
  void printInfo() {
    print('Report is being printed.');
  }
}
void main() {
  Report myReport = Report();
  myReport.printInfo();
}