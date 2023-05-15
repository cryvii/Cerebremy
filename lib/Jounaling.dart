import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:testest/widgets/google_sign_in_button.dart';

class JournalEntry {
  final String title;
  final String description;
  final DateTime dateTime;

  JournalEntry({required this.title, required this.description, required this.dateTime});
}

class JournalScreen extends StatefulWidget {
  const JournalScreen({Key? key}) : super(key: key);

  @override
  _JournalScreenState createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final List<JournalEntry> _entries = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        title: Text('Journal',
        style: GoogleFonts.merriweather(),),
        backgroundColor: Color(0xff385a64),
      ),
      body:
      _entries.isEmpty
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Journal.jpg',
              width: 350,
              height: 350,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Start your journaling journey here !',
              textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

      )
          : ListView.builder(
        itemCount: _entries.length,
        itemBuilder: (BuildContext context, int index) {
          final entry = _entries[index];
          return ListTile(
            title: Text(entry.title),
            subtitle: Text('${DateFormat.yMd().add_jm().format(entry.dateTime)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JournalEntryDetails(entry: entry),
                ),
              );
            },
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _entries.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff385a64),
        child: const Icon(Icons.note_add),
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('New Journal Entry',
              style: GoogleFonts.merriweather(
                color: Color(0xff385a64)
              ),),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title',
                    labelStyle: GoogleFonts.merriweather( color: Color(0xff385a64))
                    ),
                    controller: _titleController,
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    decoration: InputDecoration(labelText: 'Description',labelStyle: GoogleFonts.merriweather( color: Color(0xff385a64))),
                    controller: _descriptionController,
                    maxLines: null,
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:  Text('Cancel',
                  style: GoogleFonts.merriweather(
                    color: Color(0xff385a64),
                  ),),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _entries.add(JournalEntry(
                          title: _titleController.text,
                          description: _descriptionController.text,
                          dateTime: DateTime.now()));
                      _titleController.clear();
                      _descriptionController.clear();
                    });
                    Navigator.pop(context);
                  },
                  child: Text('Save', style: GoogleFonts.merriweather(
          color: Color(0xff385a64),
          ),),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class JournalEntryDetails extends StatelessWidget {
  final JournalEntry entry;

  const JournalEntryDetails({Key? key, required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(entry.title,
            style: GoogleFonts.merriweather(),),
          backgroundColor: Color(0xff385a64),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Text(
        entry.description,
        style: GoogleFonts.merriweather(fontSize: 16.0),
      ),
      const SizedBox(height: 20.0),
    Align(
      alignment: Alignment.centerRight,
      child: Text('Date:'+
      '${DateFormat('dd/MM/yyyy').format(entry.dateTime)}',
        textAlign: TextAlign.right,
        style: GoogleFonts.merriweather(
          fontSize: 16.0,
         // fontWeight: FontWeight.bold,
        ),
      ),
    ),
      Align(
        alignment: Alignment.centerRight,
        child: Text('Time:'+
          DateFormat.jm().format(entry.dateTime),
          style: GoogleFonts.merriweather(
            fontSize: 16.0,
           // fontWeight: FontWeight.bold,
          ),
        ),
      ),

    ],
    ),
        ),
    );
  }
}

