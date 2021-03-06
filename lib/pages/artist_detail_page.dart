import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/ui/general/colors.dart';
import 'package:flutter_codigo5_museumapp/ui/general/general_widget.dart';
import 'package:flutter_codigo5_museumapp/ui/responsive/responsive.dart';
import 'package:flutter_codigo5_museumapp/ui/widgets/my_app_bar_widget.dart';
import 'package:logger/logger.dart';

class ArtistDetailPage extends StatefulWidget {
  @override
  State<ArtistDetailPage> createState() => _ArtistDetailPageState();
}

class _ArtistDetailPageState extends State<ArtistDetailPage> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: ResponsiveUI.pHeight(context, 0.45),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover, 
                      image: NetworkImage(
                        "https://www.salirconarte.com/wp-content/uploads/2017/08/vincent-van-gogh-9515695-3-402.jpg",
                      ),
                    ),
                  ),
                ),
                PreferredSize(
                  preferredSize: const Size(double.infinity, 64.0),
                  child: MyAppBar(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  divider40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vincent van Gogh",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                        ),
                      ),
                    ],
                  ),
                  divider12,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mar 30 1853 - Jul 29 1890",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  divider30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                      ),
                      dividerWidth12,
                      dividerWidth6,
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  divider30,
                  Text(
                    '''Naci?? el 30 de marzo de 1853. Hijo de un austero y humilde pastor protestante neerland??s llamado Theodorus y de su mujer Anna Cornelia, Vincent recibi?? el mismo nombre que le hab??an puesto a un hermano que naci?? muerto exactamente un a??o antes. El 1 de mayo de 1857 naci?? su hermano Theo y ambos tuvieron cuatro hermanos m??s: Cornelius Vincent, Elisabetha Huberta, Anna Cornelia y Wilhelmina Jacoba.
Durante la infancia acudi?? a la escuela de manera discontinua e irregular, pues sus padres le enviaron a diferentes internados. El primero de ellos en Zevenbergen en 1864, donde estudi?? franc??s y alem??n. Dos a??os despu??s se matricul?? en la escuela secundaria HBS Koning Willem II (Tilburg) viviendo con la familia Hannik en la calle Sint Annaplein 18-19 y permaneci?? all?? hasta que dej?? los estudios de manera definitiva a los quince a??os. Por entonces comenz?? su afici??n por la pintura.
                  ''',
                    maxLines: !isExpanded ? 3 : null,
                    overflow: !isExpanded
                        ? TextOverflow.ellipsis
                        : TextOverflow.visible,
                    style: TextStyle(
                      height: 1.4,
                      color: Colors.white,
                    ),
                  ),
                  divider6,
                  GestureDetector(
                    onTap: () {
                      isExpanded = !isExpanded;
                      setState(() {});
                    },
                    child: Text(
                      !isExpanded ? "M??s informaci??n" : "Menos informaci??n",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  divider30,

                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white12,
                        width: 1.2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EXHICI??N ONLINE",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 13.0,
                                ),
                              ),
                              Text(
                                "Artista destacado",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.image_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),

                  // AnimatedContainer(
                  //   duration: Duration(milliseconds: 1200),
                  //   height: 100,
                  //   color: Colors.red,
                  //   child: Text(
                  //     '''Naci?? el 30 de marzo de 1853. Hijo de un austero y humilde pastor protestante neerland??s llamado Theodorus y de su mujer Anna Cornelia, Vincent recibi?? el mismo nombre que le hab??an puesto a un hermano que naci?? muerto exactamente un a??o antes. El 1 de mayo de 1857 naci?? su hermano Theo y ambos tuvieron cuatro hermanos m??s: Cornelius Vincent, Elisabetha Huberta, Anna Cornelia y Wilhelmina Jacoba.''',
                  //     // overflow: TextOverflow.ellipsis,
                  //     // maxLines: 3,
                  //     style: TextStyle(
                  //       color: Colors.yellow,
                  //     ),
                  //   ),
                  // ),
                  divider30,
                  divider30,
                  divider30,
                  divider30,
                  divider30,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//https://images.pexels.com/photos/8936997/pexels-photo-8936997.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1