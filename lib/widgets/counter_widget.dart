import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget(
      {super.key,
      required this.title,
      required this.value,
      required this.subtract,
      required this.plus});

  final String title;
  final int value;
  final Function() subtract;
  final Function() plus;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff333244),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Color(0xff8B8C9E),
            ),
          ),
          Text(
            '${widget.value}',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: widget.subtract,
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(
                      0xff8B8C9E,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: widget.plus,
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(
                      0xff8B8C9E,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
