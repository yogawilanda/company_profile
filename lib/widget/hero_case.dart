part of 'core_widget.dart';

class ImageCase extends StatelessWidget {
  ImageCase({
    Key? key,
    required this.imageloader,
  });

  final String imageloader;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(180),
          topLeft: Radius.circular(180),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        image: DecorationImage(
            image: AssetImage(
              imageloader,
            ),
            fit: BoxFit.cover),
        color: Colors.amber.shade700,
      ),
    );
  }
}

class ImageCaseStandard extends StatelessWidget {
  ImageCaseStandard({
    Key? key,
    required this.imageloader,
  });

  final String imageloader;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 450,
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        image: DecorationImage(
          image: AssetImage(
            imageloader,
          ),
          fit: BoxFit.contain,
          filterQuality: FilterQuality.medium,
        ),
      ),
    );
  }
}
