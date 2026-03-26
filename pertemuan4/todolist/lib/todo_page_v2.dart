import 'package:flutter/material.dart';

class TodoPageV2 extends StatefulWidget {
  const TodoPageV2({super.key});

  @override
  State<TodoPageV2> createState() => _TodoPageV2State();
}

class _TodoPageV2State extends State<TodoPageV2> {
  final TextEditingController _todoController = TextEditingController();

  // Model Todo
  List<Map<String, dynamic>> todoList = [];

  int get totalTask => todoList.length;
  int get completedTask =>
      todoList.where((task) => task['isDone'] == true).length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 126, 239, 155),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 227, 228, 232),
        child: const Icon(Icons.book_online_sharp),
        onPressed: () {
          if (_todoController.text.isNotEmpty) {
            setState(() {
              todoList.add({'title': _todoController.text, 'isDone': false});
              _todoController.clear();
            });
          }
        },
      ),

      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 21, 123, 24),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My To-Do',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Total: $totalTask | Selesai: $completedTask',
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),

            /// INPUT
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _todoController,
                decoration: InputDecoration(
                  hintText: 'Tambah tugas...',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            /// LIST
            Expanded(
              child: todoList.isEmpty
                  ? const Center(
                      child: Text(
                        'Belum ada tugas',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: todoList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            leading: Checkbox(
                              value: todoList[index]['isDone'],
                              onChanged: (value) {
                                setState(() {
                                  todoList[index]['isDone'] = value;
                                });
                              },
                            ),
                            title: Text(
                              todoList[index]['title'],
                              style: TextStyle(
                                decoration: todoList[index]['isDone'] == true
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.close, color: Colors.red),
                              onPressed: () {
                                setState(() {
                                  todoList.removeAt(index);
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
