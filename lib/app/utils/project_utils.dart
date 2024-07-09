class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/social.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Awesome Social Media App',
    description:
        'This is a just Fully functional Social media App by using flutter, source code is also available, check below.',
    links: 'https://github.com/MohamedMahmoudAli/SocialApp',
  ),
   ProjectUtils(
    banners: 'assets/imgs/matgar1.jpg',
    icons: 'assets/imgs/flutter.png',
    titles: 'E-Commerce App',
    description:
        'This is a just Fully function Ecommerce  App by using flutter, source code is also available, check below.',
    links: 'https://github.com/MohamedMahmoudAli/Matgar',
  ),
   ProjectUtils(
    banners: 'assets/imgs/newsapp.jpg',
    icons: 'assets/imgs/flutter.png',
    titles: 'News App ',
    description:
        'This is a just News App App  by using flutter, source code is also available, check below.',
    links: 'https://github.com/MohamedMahmoudAli/News_App',
  ),
  ProjectUtils(
    banners: 'assets/imgs/ToDo.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Awesome CRM UI',
    description:
        'This is a just To Do APP using Flutter, file is also available, check below.',
    links: 'https://github.com/MohamedMahmoudAli/To_Do',
  ),
 
];
