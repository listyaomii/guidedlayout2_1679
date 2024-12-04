import 'package:flutter/material.dart';
import 'package:guidedlayout2_1679/data/people.dart';

class ListNamaView extends StatefulWidget {
  const ListNamaView({super.key});

  @override
  State<ListNamaView> createState() => _ListNamaViewState();
}

class _ListNamaViewState extends State<ListNamaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Nama'),
      ),
      body: LayoutBuilder(builder: (context, Constraints) {
        if (Constraints.maxWidth > 600) {
          return const WideLayout();
        } else {
          return const NarrowLayout();
        }
      }),
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return PeopleList(
      onPersonTap: (person) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: PersonDetail(person),
          ),
        ),
      ),
    );
  }
}

class WideLayout extends StatefulWidget {
  const WideLayout({super.key});

  @override
  State<WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  Person? person; // Corrected variable name from _person to person

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: PeopleList(
              onPersonTap: (selectedPerson) =>
                  setState(() => person = selectedPerson), // Corrected usage
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: person == null
              ? const Placeholder()
              : PersonDetail(person!), // Added non-null assertion
        ),
      ],
    );
  }
}

class PeopleList extends StatelessWidget {
  final void Function(Person) onPersonTap;
  const PeopleList({super.key, required this.onPersonTap});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var person in people)
          ListTile(
            leading: Image.network(person.picture),
            title: Text(person.name),
            onTap: () => onPersonTap(person),
          ),
      ],
    );
  }
}

class PersonDetail extends StatelessWidget {
  final Person person;

  const PersonDetail(this.person, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (buildContext, boxConstraints) {
        return Center(
          child: boxConstraints.maxHeight > 200
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      onHover: (_) => {print('Hello World')},
                      child: Text(person.name),
                    ),
                    Text(person.phone),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contact me'),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MouseRegion(
                      onHover: (_) => {print('hello world')},
                      child: Text(person.name),
                    ),
                    Text(person.phone),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contact Me'),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
