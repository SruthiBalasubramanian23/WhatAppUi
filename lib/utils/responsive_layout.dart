import 'package:flutter/foundation.dart'; // for kIsWeb
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/widgets/colors.dart';
import 'package:whatsapp_ui/screens/widgets/chat_app_bar.dart';
import 'package:whatsapp_ui/screens/widgets/chat_list.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout({
    Key? key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >798) {
          return webScreenLayout;
        } else {
          if (kIsWeb) {
            return Scaffold(
              body: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(color: dividerColor),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/backgroundImage.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    const ChatAppBar(),
                    const SizedBox(height: 20),
                    const Expanded(
                      child: ChatList(),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: dividerColor),
                        ),
                        color: chatBarMessage,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 15,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: searchBarColor,
                                  hintText: 'Type a message',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.only(left: 20),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.mic,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            // On mobile, show mobile layout
            return mobileScreenLayout;
          }
        }
      },
    );
  }
}
