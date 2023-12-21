

void main() {
 
}
//challenge one, Stack
void reverseList(List<dynamic> inputList) {
  List<dynamic> reversedList = [];
  List<dynamic> stack = List.from(inputList);

  while (stack.isNotEmpty) {
    reversedList.add(stack.removeLast());
  }

  print(reversedList);
}

bool balanceParentheses(String inputStr) {
  List<String> stack = [];

  for (int i = 0; i < inputStr.length; i++) {
    String char = inputStr[i];
    if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      if (stack.isEmpty || stack.removeLast() != '(') {
        return false;
      }
    }
  }

  return stack.isEmpty;
}

//Challenge two, LinkedList
class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void append(dynamic data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
      return;
    }

    Node current = head!;
    while (current.next != null) {
      current = current.next!;
    }

    current.next = newNode;
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void printReverse() {
    List<dynamic> reversedList = [];
    Node? current = head;

    while (current != null) {
      reversedList.insert(0, current.data);
      current = current.next;
    }

    for (var data in reversedList) {
      print(data);
    }
  }
}

Node? findMiddle() {
    if (head == null) {
      return null;
    }

    Node? slowPointer = head;
    Node? fastPointer = head;

    while (fastPointer != null && fastPointer.next != null) {
      slowPointer = slowPointer!.next;
      fastPointer = fastPointer.next!.next;
    }

    return slowPointer;
  }
void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? nextNode;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    head = prev;
  }

   void removeAllOccurrences(dynamic target) {
    if (head == null) {
      return;
    }

    while (head != null && head!.data == target) {
      head = head!.next;
    }

    Node? current = head;
    Node? previous;

    while (current != null) {
      if (current.data == target) {
        previous!.next = current.next;
        current = current.next;
      } else {
        previous = current;
        current = current.next;
      }
    }
  }
