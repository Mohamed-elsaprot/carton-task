import 'package:flutter/material.dart';
import 'package:movies_task/core/utils/app_images.dart';


class SliverAppbar_Widget extends StatefulWidget {
  const SliverAppbar_Widget({Key? key}) : super(key: key);

  @override
  State<SliverAppbar_Widget> createState() => _SliverAppbar_WidgetState();
}

class _SliverAppbar_WidgetState extends State<SliverAppbar_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // backgroundColor: ,
            pinned: false,
            floating: false,
            // toolbarHeight: 30,
            elevation: 3,
            title: Text('Dataaaaaaaaaaaaaaaaa sd'),
            expandedHeight: 250,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Title',
                style: TextStyle(fontSize: 22),
              ),
              background: Image.asset(
                AppImages.bossBaby,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 18,
            (context, index) => index % 6 == 0
                ? Container(
                    color: Colors.black12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Item: ${index + 1}',
                            style: const TextStyle(fontSize: 22)),
                      ],
                    ),
                  )
                : Container(
                    color: Colors.white12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Item: ${index + 1}',
                            style: const TextStyle(fontSize: 22)),
                      ],
                    ),
                  ),
          )),
          SliverFixedExtentList(
            itemExtent: 40,
            delegate: SliverChildListDelegate(
              [
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
              semanticIndexCallback: (x, wed) {
                print(wed);
                print(x);
              },
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 18,
                    (context, index) => index % 6 == 0
                    ? Container(
                  color: Colors.black12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Item: ${index + 1}',
                          style: const TextStyle(fontSize: 22)),
                    ],
                  ),
                )
                    : Container(
                  color: Colors.white12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Item: ${index + 1}',
                          style: const TextStyle(fontSize: 22)),
                    ],
                  ),
                ),
              ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2/3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2
            ),
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) {
                return Container(
                  color: Colors.orange[100*(index% 9 +1)],
                  child: Center(child: Text('Item: ${index+1}'),),
                );
              },
            ),
          ),
          SliverToBoxAdapter(child: null,)
        ],
      ),
    );
  }
}
