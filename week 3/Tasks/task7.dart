/*Task 7: Mixin 
Create a mixin Printer with method printDoc(). 
Create a class Document that uses this mixin. 
In main(), call printDoc() from a Document object. */
mixin Printer {
  void printDoc() {
    print('Document is being printed.');
  }
}
class Document with Printer {
  String title;

  Document(this.title);

  void displayTitle() {
    print('Document Title: $title');
  }
}
void main() {
  Document myDoc = Document('My First Document');
  myDoc.displayTitle();
  myDoc.printDoc();
}