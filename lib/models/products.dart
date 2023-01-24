class Products {
  final int id, price;
  final String title, subTitle, descrption, image;

  Products(
      {required this.id,
      required this.price,
      required this.title,
      required this.subTitle,
      required this.descrption,
      required this.image});
}

List<Products> products = [
  Products(
      id: 10,
      price: 2000,
      title: 'ملكة',
      subTitle: 'ملكة المنفى',
      descrption:
          '45.برمجة تطبيق موبايل متجر الكترونيات كامل مع فلاتر خطوة بخطوة - Electrical store mobile app - Flutter',
      image: 'images/1.png'),
  Products(
      id: 11,
      price: 3000,
      title: 'جندي',
      subTitle: 'الجندي المجهول',
      descrption:
          '45.برمجة تطبيق موبايل متجر الكترونيات كامل مع فلاتر خطوة بخطوة - Electrical store mobile app - Flutter',
      image: 'images/2.png'),
  Products(
      id: 12,
      price: 5000,
      title: 'فرس',
      subTitle: 'فارس ابن حمدان',
      descrption:
          '45.برمجة تطبيق موبايل متجر الكترونيات كامل مع فلاتر خطوة بخطوة - Electrical store mobile app - Flutter',
      image: 'images/3.png'),
  Products(
      id: 13,
      price: 4000,
      title: 'قلعة',
      subTitle: 'قلعة عالي بابا',
      descrption:
          '45.برمجة تطبيق موبايل متجر الكترونيات كامل مع فلاتر خطوة بخطوة - Electrical store mobile app - Flutter',
      image: 'images/4.png'),
  Products(
      id: 14,
      price: 7000,
      title: 'ملك',
      subTitle: 'ملك الغابة',
      descrption:
          '45.برمجة تطبيق موبايل متجر الكترونيات كامل مع فلاتر خطوة بخطوة - Electrical store mobile app - Flutter',
      image: 'images/5.png'),
];
