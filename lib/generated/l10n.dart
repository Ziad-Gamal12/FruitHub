// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Add New Address`
  String get addNewAddress {
    return Intl.message(
      'Add New Address',
      name: 'addNewAddress',
      desc: '',
      args: [],
    );
  }

  /// `Search on ....`
  String get searchHint {
    return Intl.message(
      'Search on ....',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `FruitHub`
  String get appName {
    return Intl.message(
      'FruitHub',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Get The Freshest Fruit Salad Combo`
  String get homeTitle {
    return Intl.message(
      'Get The Freshest Fruit Salad Combo',
      name: 'homeTitle',
      desc: '',
      args: [],
    );
  }

  /// `We deliver the best and freshest fruit salad in town. Order for a combo today!`
  String get homeSubtitle {
    return Intl.message(
      'We deliver the best and freshest fruit salad in town. Order for a combo today!',
      name: 'homeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Let’s Continue`
  String get continueButton {
    return Intl.message(
      'Let’s Continue',
      name: 'continueButton',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message(
      'Login',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address and password to access your account`
  String get loginSubtitle {
    return Intl.message(
      'Enter your email address and password to access your account',
      name: 'loginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forgotPassword {
    return Intl.message(
      'Forget Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message(
      'Login',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signupTitle {
    return Intl.message(
      'Sign Up',
      name: 'signupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create your account`
  String get signupSubtitle {
    return Intl.message(
      'Create your account',
      name: 'signupSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Verify your identity`
  String get verifyTitle {
    return Intl.message(
      'Verify your identity',
      name: 'verifyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP sent to your email address`
  String get verifySubtitle {
    return Intl.message(
      'Enter the OTP sent to your email address',
      name: 'verifySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message(
      'Resend Code',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verifyButton {
    return Intl.message(
      'Verify',
      name: 'verifyButton',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is empty`
  String get emptyCartTitle {
    return Intl.message(
      'Your cart is empty',
      name: 'emptyCartTitle',
      desc: '',
      args: [],
    );
  }

  /// `Start adding items to your cart now`
  String get emptyCartSubtitle {
    return Intl.message(
      'Start adding items to your cart now',
      name: 'emptyCartSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get addToCart {
    return Intl.message(
      'Add to Cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cartTitle {
    return Intl.message(
      'Cart',
      name: 'cartTitle',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Order Successful!`
  String get orderSuccessTitle {
    return Intl.message(
      'Order Successful!',
      name: 'orderSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been placed successfully`
  String get orderSuccessSubtitle {
    return Intl.message(
      'Your order has been placed successfully',
      name: 'orderSuccessSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue Shopping`
  String get continueShopping {
    return Intl.message(
      'Continue Shopping',
      name: 'continueShopping',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Addresses`
  String get addresses {
    return Intl.message(
      'Addresses',
      name: 'addresses',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Enter Address`
  String get enterAddress {
    return Intl.message(
      'Enter Address',
      name: 'enterAddress',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get onboardingWelcome {
    return Intl.message(
      'Welcome to',
      name: 'onboardingWelcome',
      desc: '',
      args: [],
    );
  }

  /// `Fruit`
  String get onboardingTitleBrandPart1 {
    return Intl.message(
      'Fruit',
      name: 'onboardingTitleBrandPart1',
      desc: '',
      args: [],
    );
  }

  /// `HUB`
  String get onboardingTitleBrandPart2 {
    return Intl.message(
      'HUB',
      name: 'onboardingTitleBrandPart2',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and top quality.`
  String get onboardingSubtitle1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and top quality.',
      name: 'onboardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get onboardingTitle2 {
    return Intl.message(
      'Search and Shop',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `We bring you carefully selected premium fruits. Check out the details, images, and reviews to pick the perfect fruit.`
  String get onboardingSubtitle2 {
    return Intl.message(
      'We bring you carefully selected premium fruits. Check out the details, images, and reviews to pick the perfect fruit.',
      name: 'onboardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get pleaseEnterYourEmail {
    return Intl.message(
      'Please enter your email',
      name: 'pleaseEnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get pleaseEnterYourPassword {
    return Intl.message(
      'Please enter your password',
      name: 'pleaseEnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createAccount {
    return Intl.message(
      'Create New Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Full Name`
  String get enterYourFullName {
    return Intl.message(
      'Enter Your Full Name',
      name: 'enterYourFullName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get enterYourEmail {
    return Intl.message(
      'Enter Your Email',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Password`
  String get enterYourPassword {
    return Intl.message(
      'Enter Your Password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Confirm Password`
  String get enterYourConfirmPassword {
    return Intl.message(
      'Enter Your Confirm Password',
      name: 'enterYourConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get newAccount {
    return Intl.message(
      'New Account',
      name: 'newAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your full name`
  String get pleaseEnterYourFullName {
    return Intl.message(
      'Please enter your full name',
      name: 'pleaseEnterYourFullName',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to our`
  String get agreeTermsText1 {
    return Intl.message(
      'By creating an account, you agree to our',
      name: 'agreeTermsText1',
      desc: '',
      args: [],
    );
  }

  /// ` Terms and Conditions`
  String get agreeTermsText2 {
    return Intl.message(
      ' Terms and Conditions',
      name: 'agreeTermsText2',
      desc: '',
      args: [],
    );
  }

  /// `You must accept our terms and conditions`
  String get pleasAcceptTerms {
    return Intl.message(
      'You must accept our terms and conditions',
      name: 'pleasAcceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error has occurred, please try again later.`
  String get unKnowenErrorMessage {
    return Intl.message(
      'An unknown error has occurred, please try again later.',
      name: 'unKnowenErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning`
  String get goodMorningMessage {
    return Intl.message(
      'Good Morning',
      name: 'goodMorningMessage',
      desc: '',
      args: [],
    );
  }

  /// `Good Night`
  String get goodNightMessage {
    return Intl.message(
      'Good Night',
      name: 'goodNightMessage',
      desc: '',
      args: [],
    );
  }

  /// `Best Selling`
  String get bestSelling {
    return Intl.message(
      'Best Selling',
      name: 'bestSelling',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get moreTitle {
    return Intl.message(
      'More',
      name: 'moreTitle',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `pound`
  String get pound {
    return Intl.message(
      'pound',
      name: 'pound',
      desc: '',
      args: [],
    );
  }

  /// `kilo`
  String get kilo {
    return Intl.message(
      'kilo',
      name: 'kilo',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Months`
  String get months {
    return Intl.message(
      'Months',
      name: 'months',
      desc: '',
      args: [],
    );
  }

  /// `Organic`
  String get Organic {
    return Intl.message(
      'Organic',
      name: 'Organic',
      desc: '',
      args: [],
    );
  }

  /// `Gram`
  String get gram {
    return Intl.message(
      'Gram',
      name: 'gram',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get starRating {
    return Intl.message(
      'Review',
      name: 'starRating',
      desc: '',
      args: [],
    );
  }

  /// `Write a Comment...`
  String get writeAComment {
    return Intl.message(
      'Write a Comment...',
      name: 'writeAComment',
      desc: '',
      args: [],
    );
  }

  /// `Recommended`
  String get Recommended {
    return Intl.message(
      'Recommended',
      name: 'Recommended',
      desc: '',
      args: [],
    );
  }

  /// `Update Product`
  String get updateProduct {
    return Intl.message(
      'Update Product',
      name: 'updateProduct',
      desc: '',
      args: [],
    );
  }

  /// `Product quantity updated in cart`
  String get productQuantityUpdated {
    return Intl.message(
      'Product quantity updated in cart',
      name: 'productQuantityUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Product added to cart`
  String get productAddedToCart {
    return Intl.message(
      'Product added to cart',
      name: 'productAddedToCart',
      desc: '',
      args: [],
    );
  }

  /// `Quantity must be greater than 0`
  String get quantityMustBeGreaterThanZero {
    return Intl.message(
      'Quantity must be greater than 0',
      name: 'quantityMustBeGreaterThanZero',
      desc: '',
      args: [],
    );
  }

  /// `Not Available`
  String get notAvailable {
    return Intl.message(
      'Not Available',
      name: 'notAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Review added`
  String get reviewAdded {
    return Intl.message(
      'Review added',
      name: 'reviewAdded',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a review`
  String get enterReview {
    return Intl.message(
      'Please enter a review',
      name: 'enterReview',
      desc: '',
      args: [],
    );
  }

  /// `Please rate the product`
  String get rateProduct {
    return Intl.message(
      'Please rate the product',
      name: 'rateProduct',
      desc: '',
      args: [],
    );
  }

  /// `Results`
  String get results {
    return Intl.message(
      'Results',
      name: 'results',
      desc: '',
      args: [],
    );
  }

  /// `Sort by:`
  String get sortBy {
    return Intl.message(
      'Sort by:',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `Price (Low to High)`
  String get priceLowToHigh {
    return Intl.message(
      'Price (Low to High)',
      name: 'priceLowToHigh',
      desc: '',
      args: [],
    );
  }

  /// `Price (High to Low)`
  String get priceHighToLow {
    return Intl.message(
      'Price (High to Low)',
      name: 'priceHighToLow',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `You have`
  String get youHave {
    return Intl.message(
      'You have',
      name: 'youHave',
      desc: '',
      args: [],
    );
  }

  /// `products in cart`
  String get productsInCart {
    return Intl.message(
      'products in cart',
      name: 'productsInCart',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Please select payment method`
  String get plaeseSelectShippingMethod {
    return Intl.message(
      'Please select payment method',
      name: 'plaeseSelectShippingMethod',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get Success {
    return Intl.message(
      'Success',
      name: 'Success',
      desc: '',
      args: [],
    );
  }

  /// `Online Payment`
  String get onlinePaymentTitle {
    return Intl.message(
      'Online Payment',
      name: 'onlinePaymentTitle',
      desc: '',
      args: [],
    );
  }

  /// `Delivery from location`
  String get onlinePaymentSubtitle {
    return Intl.message(
      'Delivery from location',
      name: 'onlinePaymentSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now, Pay Later`
  String get buyNowPayLaterTitle {
    return Intl.message(
      'Buy Now, Pay Later',
      name: 'buyNowPayLaterTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select a payment method`
  String get buyNowPayLaterSubtitle {
    return Intl.message(
      'Please select a payment method',
      name: 'buyNowPayLaterSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get currency {
    return Intl.message(
      'EGP',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Save Address`
  String get SaveAddress {
    return Intl.message(
      'Save Address',
      name: 'SaveAddress',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your address`
  String get pleaseEnterYourAddress {
    return Intl.message(
      'Please enter your address',
      name: 'pleaseEnterYourAddress',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your city`
  String get pleaseEnterYourCity {
    return Intl.message(
      'Please enter your city',
      name: 'pleaseEnterYourCity',
      desc: '',
      args: [],
    );
  }

  /// `Flat Number`
  String get flatNumber {
    return Intl.message(
      'Flat Number',
      name: 'flatNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your flat number`
  String get pleaseEnterYourFlatNumber {
    return Intl.message(
      'Please enter your flat number',
      name: 'pleaseEnterYourFlatNumber',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get pleaseEnterYourPhoneNumber {
    return Intl.message(
      'Please enter your phone number',
      name: 'pleaseEnterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary:`
  String get orderSummaryTitle {
    return Intl.message(
      'Order Summary:',
      name: 'orderSummaryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal:`
  String get subtotalLabel {
    return Intl.message(
      'Subtotal:',
      name: 'subtotalLabel',
      desc: '',
      args: [],
    );
  }

  /// `Delivery:`
  String get deliveryLabel {
    return Intl.message(
      'Delivery:',
      name: 'deliveryLabel',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get totalLabel {
    return Intl.message(
      'Total',
      name: 'totalLabel',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get deliveryAddressTitle {
    return Intl.message(
      'Delivery Address',
      name: 'deliveryAddressTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get editLabel {
    return Intl.message(
      'Edit',
      name: 'editLabel',
      desc: '',
      args: [],
    );
  }

  /// `Verify Order`
  String get verfyOrder {
    return Intl.message(
      'Verify Order',
      name: 'verfyOrder',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get shipping {
    return Intl.message(
      'Shipping',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Pay with PayPal`
  String get payWithPayPal {
    return Intl.message(
      'Pay with PayPal',
      name: 'payWithPayPal',
      desc: '',
      args: [],
    );
  }

  /// `Order Number :`
  String get orderNumber {
    return Intl.message(
      'Order Number :',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Track Order`
  String get trackOrder {
    return Intl.message(
      'Track Order',
      name: 'trackOrder',
      desc: '',
      args: [],
    );
  }

  /// `Ordered at:`
  String get orderedAt {
    return Intl.message(
      'Ordered at:',
      name: 'orderedAt',
      desc: '',
      args: [],
    );
  }

  /// `Items:`
  String get orderCount {
    return Intl.message(
      'Items:',
      name: 'orderCount',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Your order is under review and will be processed soon.`
  String get pendingDescription {
    return Intl.message(
      'Your order is under review and will be processed soon.',
      name: 'pendingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Order Accepted`
  String get accepted {
    return Intl.message(
      'Order Accepted',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been accepted and is being prepared for shipment.`
  String get acceptedDescription {
    return Intl.message(
      'Your order has been accepted and is being prepared for shipment.',
      name: 'acceptedDescription',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get shipped {
    return Intl.message(
      'Shipped',
      name: 'shipped',
      desc: '',
      args: [],
    );
  }

  /// `Your order is on the way via the delivery agent.`
  String get shippedDescription {
    return Intl.message(
      'Your order is on the way via the delivery agent.',
      name: 'shippedDescription',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `The order has been successfully delivered. We hope you like it.`
  String get deliveredDescription {
    return Intl.message(
      'The order has been successfully delivered. We hope you like it.',
      name: 'deliveredDescription',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get month1 {
    return Intl.message(
      'January',
      name: 'month1',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get month2 {
    return Intl.message(
      'February',
      name: 'month2',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get month3 {
    return Intl.message(
      'March',
      name: 'month3',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get month4 {
    return Intl.message(
      'April',
      name: 'month4',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get month5 {
    return Intl.message(
      'May',
      name: 'month5',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get month6 {
    return Intl.message(
      'June',
      name: 'month6',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get month7 {
    return Intl.message(
      'July',
      name: 'month7',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get month8 {
    return Intl.message(
      'August',
      name: 'month8',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get month9 {
    return Intl.message(
      'September',
      name: 'month9',
      desc: '',
      args: [],
    );
  }

  /// `October`
  String get month10 {
    return Intl.message(
      'October',
      name: 'month10',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get month11 {
    return Intl.message(
      'November',
      name: 'month11',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get month12 {
    return Intl.message(
      'December',
      name: 'month12',
      desc: '',
      args: [],
    );
  }

  /// `Public`
  String get publicSettingsTitle {
    return Intl.message(
      'Public',
      name: 'publicSettingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message(
      'My Orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get aboutUs {
    return Intl.message(
      'About Us',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `No orders, yet`
  String get NoOrder {
    return Intl.message(
      'No orders, yet',
      name: 'NoOrder',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Fruit Hub, your trusted online marketplace dedicated to bringing the freshest and highest quality fruits directly from farms to your doorstep. We are passionate about promoting a healthy lifestyle by making fresh fruit accessible and affordable to everyone. At Fruit Hub, we carefully select our fruit suppliers to ensure only the best seasonal, organic, and exotic fruits are available for you. Our mission is to connect consumers with nature’s finest offerings while supporting local farmers and sustainable farming practices. We offer a seamless shopping experience through our user-friendly app that lets you browse, compare, and order fruits with just a few taps. Enjoy fast and reliable delivery, secure payments, and excellent customer support every step of the way. Whether you’re stocking up for your family, preparing for a special event, or simply craving a healthy snack, Fruit Hub is here to meet all your fruit needs with freshness and quality guaranteed. Join our community of health-conscious customers and discover the convenience of having nature’s best delivered right to your door. Fruit Hub - where health and freshness come together in every bite.`
  String get AboutUsContent {
    return Intl.message(
      'Welcome to Fruit Hub, your trusted online marketplace dedicated to bringing the freshest and highest quality fruits directly from farms to your doorstep. We are passionate about promoting a healthy lifestyle by making fresh fruit accessible and affordable to everyone. At Fruit Hub, we carefully select our fruit suppliers to ensure only the best seasonal, organic, and exotic fruits are available for you. Our mission is to connect consumers with nature’s finest offerings while supporting local farmers and sustainable farming practices. We offer a seamless shopping experience through our user-friendly app that lets you browse, compare, and order fruits with just a few taps. Enjoy fast and reliable delivery, secure payments, and excellent customer support every step of the way. Whether you’re stocking up for your family, preparing for a special event, or simply craving a healthy snack, Fruit Hub is here to meet all your fruit needs with freshness and quality guaranteed. Join our community of health-conscious customers and discover the convenience of having nature’s best delivered right to your door. Fruit Hub - where health and freshness come together in every bite.',
      name: 'AboutUsContent',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get waring {
    return Intl.message(
      'Warning',
      name: 'waring',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get infoTitle {
    return Intl.message(
      'Info',
      name: 'infoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verfied {
    return Intl.message(
      'Verify',
      name: 'verfied',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPasswordTitle {
    return Intl.message(
      'Reset Password',
      name: 'resetPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `If you have forgotten your password, don’t worry — we’re here to help! Please enter your registered email address below, and we’ll send you a message with detailed instructions to reset your password. Make sure to check your inbox and spam folder. If you don’t receive the message within a few minutes, you can try again.`
  String get resetPasswordDescription {
    return Intl.message(
      'If you have forgotten your password, don’t worry — we’re here to help! Please enter your registered email address below, and we’ll send you a message with detailed instructions to reset your password. Make sure to check your inbox and spam folder. If you don’t receive the message within a few minutes, you can try again.',
      name: 'resetPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get resetPasswordButtonTitle {
    return Intl.message(
      'Forget Password',
      name: 'resetPasswordButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Successfully, a verification message was sent to your email.`
  String get SentResetPasswordSuccess {
    return Intl.message(
      'Successfully, a verification message was sent to your email.',
      name: 'SentResetPasswordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditionsTitle {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditionsTitle',
      desc: '',
      args: [],
    );
  }

  /// `1. Use of the App`
  String get section_use_title {
    return Intl.message(
      '1. Use of the App',
      name: 'section_use_title',
      desc: '',
      args: [],
    );
  }

  /// `Fruit Hub is for personal use only. You must be at least 18 years old to place orders. You agree to provide accurate information when registering or ordering.`
  String get section_use_content {
    return Intl.message(
      'Fruit Hub is for personal use only. You must be at least 18 years old to place orders. You agree to provide accurate information when registering or ordering.',
      name: 'section_use_content',
      desc: '',
      args: [],
    );
  }

  /// `2. Products and Availability`
  String get section_products_title {
    return Intl.message(
      '2. Products and Availability',
      name: 'section_products_title',
      desc: '',
      args: [],
    );
  }

  /// `All products are subject to availability. Product images are for illustration and may vary slightly. We strive to keep information up to date.`
  String get section_products_content {
    return Intl.message(
      'All products are subject to availability. Product images are for illustration and may vary slightly. We strive to keep information up to date.',
      name: 'section_products_content',
      desc: '',
      args: [],
    );
  }

  /// `3. Pricing and Payment`
  String get section_pricing_title {
    return Intl.message(
      '3. Pricing and Payment',
      name: 'section_pricing_title',
      desc: '',
      args: [],
    );
  }

  /// `Prices may change without notice. Payment must be made using the available methods. We may cancel suspicious orders.`
  String get section_pricing_content {
    return Intl.message(
      'Prices may change without notice. Payment must be made using the available methods. We may cancel suspicious orders.',
      name: 'section_pricing_content',
      desc: '',
      args: [],
    );
  }

  /// `4. Orders and Delivery`
  String get section_orders_title {
    return Intl.message(
      '4. Orders and Delivery',
      name: 'section_orders_title',
      desc: '',
      args: [],
    );
  }

  /// `Orders are final once confirmed. Delivery times are estimates. Please inspect items on delivery for quality.`
  String get section_orders_content {
    return Intl.message(
      'Orders are final once confirmed. Delivery times are estimates. Please inspect items on delivery for quality.',
      name: 'section_orders_content',
      desc: '',
      args: [],
    );
  }

  /// `5. Returns and Complaints`
  String get section_returns_title {
    return Intl.message(
      '5. Returns and Complaints',
      name: 'section_returns_title',
      desc: '',
      args: [],
    );
  }

  /// `If you receive a damaged or wrong item, contact us within 24 hours with a photo and order ID. Refunds or replacements are at our discretion.`
  String get section_returns_content {
    return Intl.message(
      'If you receive a damaged or wrong item, contact us within 24 hours with a photo and order ID. Refunds or replacements are at our discretion.',
      name: 'section_returns_content',
      desc: '',
      args: [],
    );
  }

  /// `6. User Data and Privacy`
  String get section_privacy_title {
    return Intl.message(
      '6. User Data and Privacy',
      name: 'section_privacy_title',
      desc: '',
      args: [],
    );
  }

  /// `Your data is secure and used only to process orders and improve service. We don't share your data without your consent, unless legally required.`
  String get section_privacy_content {
    return Intl.message(
      'Your data is secure and used only to process orders and improve service. We don\'t share your data without your consent, unless legally required.',
      name: 'section_privacy_content',
      desc: '',
      args: [],
    );
  }

  /// `7. Prohibited Activities`
  String get section_prohibited_title {
    return Intl.message(
      '7. Prohibited Activities',
      name: 'section_prohibited_title',
      desc: '',
      args: [],
    );
  }

  /// `You may not misuse the app (e.g., spam, hack, or spread viruses). Fraudulent behavior may result in account termination.`
  String get section_prohibited_content {
    return Intl.message(
      'You may not misuse the app (e.g., spam, hack, or spread viruses). Fraudulent behavior may result in account termination.',
      name: 'section_prohibited_content',
      desc: '',
      args: [],
    );
  }

  /// `8. Intellectual Property`
  String get section_ip_title {
    return Intl.message(
      '8. Intellectual Property',
      name: 'section_ip_title',
      desc: '',
      args: [],
    );
  }

  /// `All logos, images, and content belong to Fruit Hub and may not be used without permission.`
  String get section_ip_content {
    return Intl.message(
      'All logos, images, and content belong to Fruit Hub and may not be used without permission.',
      name: 'section_ip_content',
      desc: '',
      args: [],
    );
  }

  /// `9. Changes to Terms`
  String get section_changes_title {
    return Intl.message(
      '9. Changes to Terms',
      name: 'section_changes_title',
      desc: '',
      args: [],
    );
  }

  /// `We may update these terms. Continued use means you accept the new terms.`
  String get section_changes_content {
    return Intl.message(
      'We may update these terms. Continued use means you accept the new terms.',
      name: 'section_changes_content',
      desc: '',
      args: [],
    );
  }

  /// `10. Contact Us`
  String get section_contact_title {
    return Intl.message(
      '10. Contact Us',
      name: 'section_contact_title',
      desc: '',
      args: [],
    );
  }

  /// `For questions, contact us at ziadgamal123@gmail.com or +201280316031`
  String get section_contact_content {
    return Intl.message(
      'For questions, contact us at ziadgamal123@gmail.com or +201280316031',
      name: 'section_contact_content',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
