import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';


String _meetingCode = "RahulNegi@124";

class CreateMeeting extends StatefulWidget {
  const CreateMeeting({super.key});

  @override
  State<CreateMeeting> createState() => _CreateMeetingState();
}

class _CreateMeetingState extends State<CreateMeeting> {

  @override
  void initState() {
    var uuid = const Uuid();
    _meetingCode = uuid.v4().substring(0, 8);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Create Meeting'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 16.0),
            child: Card(
              elevation: 20,
              color: const Color.fromARGB(120, 167, 145, 208),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListTile(
                leading: const Icon(Icons.link),
                title: SelectableText(
                  _meetingCode,
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 89, 90, 88)),
                ),
                trailing: const Icon(Icons.copy_all_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
