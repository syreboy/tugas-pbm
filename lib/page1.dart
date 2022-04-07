import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              width: lebar * 0.9,
              height: tinggi * 0.9,
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vehicula mollis ligula, sit amet gravida diam fringilla ac. Donec in nisl nec sem molestie molestie. Curabitur sit amet enim sollicitudin, mattis eros non, euismod justo. Nulla ac convallis odio. Vestibulum hendrerit dignissim enim vel porta. Etiam ac magna mi. Proin iaculis orci dignissim, mollis massa a, pretium velit. Pellentesque facilisis dui eget nulla iaculis, non facilisis odio imperdiet. Sed viverra auctor lorem.Sed dolor augue, iaculis sed dolor nec, mollis pulvinar ligula. Duis pharetra id risus et elementum. Integer finibus justo odio, et vestibulum purus ultricies a. Sed lorem arcu, convallis quis ex at, ornare gravida nisl. Proin tincidunt diam consequat mi sollicitudin rhoncus. Proin fermentum sem quis quam blandit dapibus. Pellentesque a venenatis nulla.Donec pellentesque feugiat purus pharetra luctus. Phasellus consectetur velit non consectetur vulputate. Sed non tellus vitae felis luctus blandit faucibus mattis risus. Nullam malesuada accumsan mauris. Proin luctus vitae nulla consequat tincidunt. Vestibulum venenatis aliquam turpis eget scelerisque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla erat odio, venenatis vel consectetur ut, gravida a dolor. In non lorem pellentesque, suscipit lacus ut, efficitur purus. Sed ut ex ut turpis accumsan aliquam.Sed sed neque sit amet nibh tincidunt rutrum aliquet eu orci. Aenean tincidunt nisi eget odio gravida, eu placerat libero tincidunt. In ac risus nec risus posuere feugiat ultricies ut nisi. Aliquam cursus tellus id augue placerat sodales. Maecenas ut ultrices ex, ac iaculis lorem. Curabitur ultrices efficitur neque. In ac libero commodo, aliquam lectus vitae, placerat lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In hac habitasse platea dictumst.Vestibulum mollis pharetra elit, sed laoreet neque aliquam sit amet. Pellentesque commodo eros odio, at consectetur nulla placerat a. Integer sed tellus ipsum. Sed imperdiet ligula erat, a interdum justo imperdiet ac. Duis ultricies quam ac elit consectetur condimentum. Phasellus eget dui libero. Duis vitae nibh viverra, tincidunt orci sit amet, cursus libero. Phasellus ac gravida augue, vel imperdiet ipsum. Nullam sed ante eu diam venenatis imperdiet.")),
        ],
      )),
    );
  }
}
