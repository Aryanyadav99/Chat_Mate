import 'package:chat_mat/Core/theme.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Recent Chats title
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Recent Chats',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),

          // Horizontal contacts list
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: [
                _buildRecentContact('Aryan', context),
                _buildRecentContact('Harsh', context),
                _buildRecentContact('OM', context),
                _buildRecentContact('Anshika', context),
                _buildRecentContact('Rishabh', context),
                _buildRecentContact('Jayesh', context),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Messages list with curve + clipping(important because without clipping it show like it going out of the curve box)
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: Container(
                color: AppColors.messageListPage,
                child: ListView(
                  padding: const EdgeInsets.only(top: 10),
                  children: [
                    _buildMessageTile('Ayush', 'Assignment bhejo', '08:43', context),
                    _buildMessageTile('Ansh', 'Kal milte hai', '09:30', context),
                    _buildMessageTile('Anuj', 'Project ready?', '10:15', context),
                    _buildMessageTile('Ajay', 'Ok thanks!', '11:00', context),
                    _buildMessageTile(
                      'Aryan',
                      'This is a very long message so Flutter may cut it with ellipsis...',
                      '12:30',
                      context,
                    ),
                    _buildMessageTile('Anshika', 'See you soon', '13:45', context),
                    _buildMessageTile('Aman', 'Kya haal hai?', '14:10', context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//  message tile
Widget _buildMessageTile(String name, String message, String time, BuildContext context) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    leading: const CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage('https://via.placeholder.com/150'),
    ),
    title: Text(
      name,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(
      message,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey),
      overflow: TextOverflow.ellipsis,
    ),
    trailing: Text(
      time,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
    ),
  );
}

// Recent contact widget
Widget _buildRecentContact(String name, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade400, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
        ),
        const SizedBox(height: 5),
        Text(name, style: Theme.of(context).textTheme.bodySmall),
      ],
    ),
  );
}
