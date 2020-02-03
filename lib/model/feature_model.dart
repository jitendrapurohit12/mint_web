import 'package:mint_web/styles/constant.dart';

class FeatureModel {
  String title, image, description, buttonText;
  List<String> bullets;

  FeatureModel(
      {this.title,
      this.description,
      this.image,
      this.buttonText,
      this.bullets});
}

List featureModelList1 = [
  FeatureModel(
      title: 'All-in-one\nfinances',
      description:
          'We bring all of your money to one\nplace, from balances and bills to\ncredit score and more.',
      image: allInOne),
  FeatureModel(
      title: 'Budgets made\nsimple',
      description:
          'Easily create budgets, and see our\nsuggestions based on\nyour spending.',
      image: budget),
  FeatureModel(
      title: 'Unlimited credit\nscores',
      description:
          'Check your free credit score as many\ntimes as you like, and get tips\nto help improve it.',
      image: cscore)
];

List featureModelList2 = [
  FeatureModel(
      title: 'All your money\nin one place',
      description:
          'We bring together all of your accounts, bills and more,\nso you can conveniently manage your finances from\none dashboard.',
      bullets: [
        'See all of your bills and money at a glance\n',
        'Create budgets easily with tips tailored to you\n',
        'Enjoy access to unlimited free credit scores, without harming your\n    credit'
      ],
      buttonText: 'Sign Up Free',
      image: zoneC),
  FeatureModel(
      title: 'Effortlessly stay \non top of bills',
      description:
          'Bills are now easier than ever to track. Simply add them to your\ndashboard to see and monitor them all at once.',
      bullets: [
        'Receive reminders for upcoming bills so you can\n    plan ahead\n',
        'Never miss a payment with alerts when bills are due\n',
        'Get warned when funds are low so you know what you\n    can pay'
      ],
      buttonText: 'Learn More',
      image: zoneD),
  FeatureModel(
      title: 'We\'re serious\nabout security',
      description:
          'We’re committed to keeping your data secure. With multiple safety\nmeasures like secure encryption and multi-factor authentication, we work\nto keep your information protected.',
      buttonText: 'Learn More',
      bullets: [
        'Sign in securely with your unique 4-digit code\n    and password\n',
        'Remotely access and manage your account\n    from anywhere\n',
        'Enjoy continuous protection with VeriSign\n    security scanning'
      ],
      image: zoneE)
];

List featureModelList3 = [
  FeatureModel(
      title: 'Budgets that work',
      description:
          'Create budgets you can actually stick\nto, and see how you’re spending your money.',
      image: budget1),
  FeatureModel(
      title: 'Money on the go',
      description:
          'Phone & tablet apps to manage your\nmoney from wherever you are.',
      image: money),
  FeatureModel(
      title: 'One step at a time',
      description:
          'Get personalized tips and advice for\nmaximizing your money every day.',
      image: onestep)
];
