import 'package:flutter/material.dart';

class BottomUserInfo extends StatelessWidget {
  final bool isCollapsed;

  const BottomUserInfo({
    Key? key,
    required this.isCollapsed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isCollapsed ? 70 : 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),
      child: isCollapsed
          ? Center(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://t3.ftcdn.net/jpg/02/99/21/98/360_F_299219888_2E7GbJyosu0UwAzSGrpIxS0BrmnTCdo4.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'User Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'MEMBER',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://t3.ftcdn.net/jpg/02/99/21/98/360_F_299219888_2E7GbJyosu0UwAzSGrpIxS0BrmnTCdo4.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
