import 'package:flutter/material.dart';

class TextFormComponent extends StatefulWidget {
  final String title;
  final TextEditingController textEditingController;
  final bool hide;

  const TextFormComponent(
      {super.key,
      required this.title,
      required this.textEditingController,
      this.hide = false});

  @override
  State<TextFormComponent> createState() => _TextFormComponentState();
}

class _TextFormComponentState extends State<TextFormComponent> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible=!widget.hide;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: widget.hide
                    ? IconButton(
                        onPressed: () {
                          setState(() => _passwordVisible = !_passwordVisible);
                        },
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                      )
                    : Text('')),
            controller: widget.textEditingController,
            obscureText: !_passwordVisible,
          ),
        ],
      ),
    );
  }
}
