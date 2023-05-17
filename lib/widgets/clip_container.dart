import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../models/activity_models.dart';

class ClipContainer extends StatelessWidget {
  const ClipContainer({
    super.key,
    required this.activity,
  });

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark; 

    return 
       SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                  height: 400, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0), 
                    color: Colors.white, 
                    image: DecorationImage(
                      image: AssetImage(activity.url), 
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              const SizedBox(height: 20.0), 
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activity.title, 
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: isDark? Colors.white:Colors.black,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    const SizedBox(height: 5.0), 
                    RatingBar.builder(
                      initialRating: activity.rating, 
                      minRating: 0, 
                      direction: Axis.horizontal, 
                      ignoreGestures: true, 
                      itemCount: 5, 
                      itemSize: 20, 
                      itemBuilder: (context, _) => const Icon(
                        Icons.star, 
                        color: Colors.amber,
                      ), 
                      onRatingUpdate: (rating) {},
                      ), 
                      const SizedBox(height: 20.0), 
                      Text(
                        'About', 
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith( 
                          fontWeight: FontWeight.bold
                        ),
                      ),  
                      const SizedBox(height: 5.0), 
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Text(
                          activity.description,
                          textAlign: TextAlign.justify,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: isDark? Colors.white:Colors.black, 
                            letterSpacing: 1.3,
                            height: 1.4,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0), 
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$" + activity.price.toString(),
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: isDark? Colors.white:Colors.black, 
                                  fontWeight: FontWeight.bold, 
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {}, 
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 255, 196, 3), 
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                )
                              ),
                              child: Text(
                                'Book Now', 
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: isDark ? Colors.black : Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), 
                  ],
                ),
              ), 
            ],
          ),
         ),
      );
    }
  }

// ShaderMask(
    //   shaderCallback: (rect) {
    //     return LinearGradient(
          
    //       begin: Alignment.topCenter, 
    //       end: Alignment.bottomCenter, 
    //       colors: [
    //         Colors.white, 
    //         Colors.white.withOpacity(0.6), 
    //         Colors.transparent,
    //       ],
    //       stops: const [0.1, 0.3, 0.59]
    //     ).createShader(rect);
    //   },
    //   blendMode: BlendMode.dstIn, 