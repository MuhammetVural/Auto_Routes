import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/gen/assets.gen.dart';
import 'package:first_project/main.dart';
import 'package:first_project/data/models/weight_model.dart';
import 'package:first_project/providers/agirlik_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AgirlikPage extends StatelessWidget {
  const AgirlikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('agirlik.title'.tr()),
      ),
      body: Consumer<AgirlikState>(builder: (context, state, widget) {
        var weights = state.weights;
        return Container(
          child: Column(
            children: [
              Container(
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'agirlik.mevcut_agirlik'.tr(),
                      ),
                      Text(weights.first.value.toString())
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    var weight = weights[index];
                    return ListTile(
                      title: Text(
                          '${weight.time.day}.${weight.time.month}.${weight.time.year}'),
                      trailing: Text(weight.value.toString()),
                    );
                  },
                  itemCount: weights.length,
                ),
              ),
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var state = Provider.of<AgirlikState>(context, listen: false);
          var result = await showDialog(
            context: context,
            builder: (context) => NumberPicker(
              maxValue: 100,
              minValue: 60,
              value: 65,
              onChanged: (int value) {},
            ),
          );
          state.add(WeightModel(value: result, time: DateTime.now()));
        },
        child: const Icon(Icons.add),
        //child: SvgPicture.asset(Assets.icons.add),
      ),
    );
  }
}
