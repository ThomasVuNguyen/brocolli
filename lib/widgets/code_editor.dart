import 'package:flutter/material.dart';
import 'package:flutter_js/flutter_js.dart';

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  final TextEditingController _controller = TextEditingController(text: "console.log('Hello, World!')");
  String _result = '';
  late JavascriptRuntime _jsRuntime;

  @override
  void initState() {
    super.initState();
    _jsRuntime = getJavascriptRuntime();
  }

  void _runCode() async {
    final code = _controller.text;
    try {
      final result = _jsRuntime.evaluate(code);
      setState(() {
        _result = result.stringResult;
      });
    } catch (e) {
      setState(() {
        _result = 'Error: ' + e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              maxLines: null,
              expands: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter JavaScript code',
              ),
              style: const TextStyle(fontFamily: 'monospace'),
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: _runCode,
            child: const Text('Run'),
          ),
          const SizedBox(height: 8),
          Text(
            'Output:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.black12,
            child: Text(_result, style: const TextStyle(fontFamily: 'monospace')),
          ),
        ],
      ),
    );
  }
}
