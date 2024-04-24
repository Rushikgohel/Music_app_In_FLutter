import 'package:flutter/material.dart';

Widget customListTitle(
    {required String title,
    required String singer,
    required String cover,
    onTap,
    String? url,
    String? artist}) {
  return InkWell(
    // Added InkWell for onTap functionality
    onTap: onTap, // Handling onTap
    child: Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              // Corrected to lowercase 'd'
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: NetworkImage(cover),
                fit: BoxFit.cover, // Added fit property for better image fit
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            // Wrapped Column in Expanded to handle overflow issues
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Added alignment
              mainAxisAlignment:
                  MainAxisAlignment.center, // Vertically center the text
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis, // Handle long titles
                ),
                Text(
                  singer, // Display the singer name
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey), // Styling for singer text
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  singer,
                  style: const TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
