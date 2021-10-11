import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: false,
        leadingWidth: 50,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.red,
            backgroundImage: AssetImage('Assets/gh.PNG'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],

        title: Text('My Task'),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemBuilder: (context, index) {
            return const TodoTileWidget();
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: 10),
    );
  }
}

class TodoTileWidget extends StatelessWidget {
  const TodoTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListTile(
          leading: const Icon(
            Icons.check_circle_outline,
            size: 30,
          ),
          title: Text(
            'Plan the trip to malaysia',
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20),
          ),
          subtitle: const Text('The famil is a family of families'),
          trailing: TextButton.icon(
              onPressed: null,
              icon: Icon(Icons.notifications),
              label: Text("yestreday")),
        ),
      ),
    );
  }
}
