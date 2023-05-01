import 'package:kissan_pay/pages/screens.dart';

class AddMoney extends StatelessWidget {
  const AddMoney({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Add Money',
          style: black20BoldTextStyle,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(fixPadding * 2.0),
        children: [
          amountTextField(),
        ],
      ),
      bottomNavigationBar: continueButton(context),
    );
  }

  amountTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enter Amount to be added',
          style: grey14SemiBoldTextStyle,
        ),
        TextField(
          keyboardType: TextInputType.number,
          cursorColor: primaryColor,
          style: black16BoldTextStyle,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.only(bottom: fixPadding / 2),
            prefixText: '\$',
            prefixStyle: black16BoldTextStyle,
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: greyColor)),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: greyColor)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: greyColor)),
          ),
        ),
      ],
    );
  }

  continueButton(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: fixPadding * 2.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(5.0),
            onTap: () => Navigator.push(
              context,
              PageTransition(
                child: const PaymentMethod(),
                type: PageTransitionType.rightToLeft,
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width - 120,
              padding: const EdgeInsets.all(fixPadding * 1.2),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Text(
                'Continue',
                style: white22BoldTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
