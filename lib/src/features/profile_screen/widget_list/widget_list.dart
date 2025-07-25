part of 'widget_list_part.dart';

class AccountWidgetList {
  static List<Widget> manageAccount(BuildContext context) => [
    AccountOptionTile(
      title: 'Profile Information',
      leadingAsset: AppIcons.profile,
      onPressed: () {
        context.push(RouteName.profileInfoScreen);
      },
    ),
    AccountOptionTile(
      title: 'Notification Preferences',
      leadingAsset: AppIcons.notificationStroke,
      onPressed: () {
        context.push(RouteName.manageNotifications);
      },
    ),
    AccountOptionTile(
      title: 'Payment details',
      leadingAsset: AppIcons.payment,
      onPressed: () {
        context.push(RouteName.paymentDetails);
      },
    ),
  ];

  static List<Widget> bookings(BuildContext context) => [
    AccountOptionTile(
      title: 'My Bookings',
      leadingAsset: AppIcons.appointment,
      onPressed: () {
        context.push(RouteName.myBookings);
      },
    ),
  ];

  static List<Widget> helpSupport(BuildContext context) => [
    AccountOptionTile(
      title: 'View FAQs',
      leadingAsset: AppIcons.faq,
      onPressed: () {
        context.push(RouteName.faqScreen);
      },
    ),
    AccountOptionTile(
      title: 'Log Out',
      leadingAsset: AppIcons.logout,
      onPressed: () {},
    ),
  ];

  static List<Widget> editProfile(BuildContext context) => [
    AccountOptionTile(
      title: 'Change Name',
      leadingAsset: AppIcons.profile,
      iconColor: Colors.black,
      onPressed: () {
        Utils.openBottomSheet(context: context, child: ChangeName());
      },
    ),

    AccountOptionTile(
      title: 'Email',
      leadingAsset: AppIcons.email,
      email: 'James@gmail.com',
      onPressed: () {
        Utils.openBottomSheet(context: context, child: ChangeEmail());
      },
    ),
    AccountOptionTile(
      title: 'Change Password',
      leadingAsset: AppIcons.deviceCamera,
      onPressed: () {
        Utils.openBottomSheet(context: context, child: ChangePassword());
      },
    ),
    AccountOptionTile(
      title: 'Delete account',
      titleColor: AppColors.primary,
      leadingAsset: AppIcons.trash,
      onPressed: () {
        Utils.openBottomSheet(context: context, child: DeleteSheetContent());
      },
    ),
  ];

  static List<Widget> notifications(
    BuildContext context,
    WidgetRef ref,
    notificationState,
  ) => [
    NotificationRow(
      title: 'Enable Push Notification',
      isSwitchedOn: notificationState['pushNotification']!,
      onChanged: (value) {
        ref
            .read(notificationProvider.notifier)
            .toggleSwitch('pushNotification');
      },
    ),
    SizedBox(height: 32.h),
    NotificationRow(
      title: 'Payment & Subscriptions',
      isSwitchedOn: notificationState['paymentSubscriptions']!,
      onChanged: (value) {
        ref
            .read(notificationProvider.notifier)
            .toggleSwitch('paymentSubscriptions');
      },
    ),
    SizedBox(height: 32.h),
    NotificationRow(
      title: 'New Tips Available',
      isSwitchedOn: notificationState['newTips']!,
      onChanged: (value) {
        ref.read(notificationProvider.notifier).toggleSwitch('newTips');
      },
    ),
    SizedBox(height: 32.h),
    NotificationRow(
      title: 'Survey Invitation',
      isSwitchedOn: notificationState['surveyInvitation']!,
      onChanged: (value) {
        ref
            .read(notificationProvider.notifier)
            .toggleSwitch('surveyInvitation');
      },
    ),
  ];
}
