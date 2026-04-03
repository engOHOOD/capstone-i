import 'package:any_image_view/any_image_view.dart';
import 'package:first_capstone/model/epsiode_model/epsiode_model.dart';
import 'package:flutter/material.dart';

class EpisodesHorizontalGridWidget extends StatelessWidget {
  const EpisodesHorizontalGridWidget({super.key, required this.podcasts});
  final List<EpsiodeModel> podcasts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: .horizontal,
        physics: PageScrollPhysics(),
        controller: PageController(viewportFraction: 0.9,),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 360,
        ),
        itemCount: podcasts.length,
        itemBuilder: (context, index) => SizedBox(
          child: ListTile(

            title: Text(podcasts[index].title,style: Theme.of(context).textTheme.titleSmall,),
            leading: AnyImageView(
              imagePath: podcasts[index].coverImage,
              fit: .fitHeight,
              borderRadius: BorderRadius.circular(5),
              placeholderWidget: CircularProgressIndicator(),
              errorWidget: Icon(Icons.error),
            ),
            trailing: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.amber.shade400,
                borderRadius: BorderRadius.circular(120),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  color: Theme.of(context).colorScheme.surface,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
