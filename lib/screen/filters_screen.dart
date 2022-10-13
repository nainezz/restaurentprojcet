import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilters;
  FiltersScreen(this.currentFilters, this.saveFilters);
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  void initState() {
    _glutenFree = widget.currentFilters['gluten'];
    _lactoseFree = widget.currentFilters['lactose'];
    _vegan = widget.currentFilters['vegan'];
    _vegetarian = widget.currentFilters['vegetarian'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filters Screen'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.save),
              onPressed: (() {
                final selectedFilters = {
                  'gluten': _glutenFree,
                  'lactose': _lactoseFree,
                  'vegan': _vegan,
                  'vegetarian': _vegetarian,
                };
                widget.saveFilters(selectedFilters);
              }),
            ),
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adding your meal selection.',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                SwitchListTile(
                  title: Text('Gluton-free'),
                  value: _glutenFree,
                  subtitle: Text('Only include gluton-free meals.'),
                  onChanged: ((newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  }),
                ),
                SwitchListTile(
                  title: Text('vegetarian'),
                  value: _vegetarian,
                  subtitle: Text('Only include vegetarian meals.'),
                  onChanged: ((newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  }),
                ),
                SwitchListTile(
                  title: Text('vegan'),
                  value: _vegan,
                  subtitle: Text('Only include vegan meals.'),
                  onChanged: ((newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  }),
                ),
                SwitchListTile(
                  title: Text('lactoseFree'),
                  value: _lactoseFree,
                  subtitle: Text('Only include lactoseFree meals.'),
                  onChanged: ((newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  }),
                ),
              ],
            ))
          ],
        ));
  }
}
