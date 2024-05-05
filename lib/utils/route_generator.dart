
import 'package:flutter/material.dart';
import 'package:princeton_app/presentation/screens/activity_page.dart';
import 'package:princeton_app/presentation/screens/batch_details.dart';
import 'package:princeton_app/presentation/screens/create_activity_page.dart';
import 'package:princeton_app/presentation/screens/create_profile_page.dart';
import 'package:princeton_app/presentation/screens/dashboard.dart';
import 'package:princeton_app/presentation/screens/event_glim.dart';
import 'package:princeton_app/presentation/screens/forgot_password.dart';
import 'package:princeton_app/presentation/screens/how_it_works_page.dart';
import 'package:princeton_app/presentation/screens/journey_page.dart';
import 'package:princeton_app/presentation/screens/looking_for_page.dart';
import 'package:princeton_app/presentation/screens/looking_for_page2.dart';
import 'package:princeton_app/presentation/screens/maps.dart';
import 'package:princeton_app/presentation/screens/mentor_list.dart';
import 'package:princeton_app/presentation/screens/payment_page.dart';
import 'package:princeton_app/presentation/screens/profile_completed.dart';
import 'package:princeton_app/presentation/screens/readliness_page.dart';
import 'package:princeton_app/presentation/screens/recording_page.dart';
import 'package:princeton_app/presentation/screens/result.dart';
import 'package:princeton_app/presentation/screens/signin_page.dart';
import 'package:princeton_app/presentation/screens/user_profile.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SignInPage());
      case '/profile':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => CreateProfile(
              //data: args,
              ),
        );
      case '/forgot_password':
        return MaterialPageRoute(
          builder: (_) => ForgotPassword(
              //data: args,
              ),
        );
      case '/completed_profile':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => ProfileCompleted(
              //data: args,
              ),
        );
      case '/lookingfor':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => LookingForPage(
              //data: args,
              ),
        );
      case '/lookingfor_2':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => LookingFor2(
              //data: args,
              ),
        );
      case '/readliness':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => ReadlinessPage(
              //data: args,
              ),
        );
      case '/journey':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => JourneyPage(
              //data: args,
              ),
        );
      case '/how_it_works':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => HowItWorks(
              //data: args,
              ),
        );
      case '/dashboard':
        return MaterialPageRoute(
          builder: (_) => Dashboard(),
        );
         case '/create_activity':
        return MaterialPageRoute(
          builder: (_) => CreateActivityPage(),
        );
      case '/activity':
        return MaterialPageRoute(
          builder: (_) => ActivityPage(),
        );
      case '/result':
        return MaterialPageRoute(
          builder: (_) => Result(),
        );
      case '/event_glim' :
        return MaterialPageRoute(
          builder: (_) => EventGlim(),
        );
      case '/mentor_list' :
        return MaterialPageRoute(
          builder: (_) => Mentor(),
        );
      case '/batch' :
        return MaterialPageRoute(
          builder: (_) => BatchDetails(),
        );
      case '/payment' :
        return MaterialPageRoute(
          builder: (_) => PaymentPage(),
        );
      case '/map_screen' :
        return MaterialPageRoute(
          builder: (_) => Maps(),
        );
        case '/batch_details' :
        return MaterialPageRoute(
          builder: (_) => BatchDetails(),
        );
        case '/camera_screen' :
        return MaterialPageRoute(
          builder: (_) => RecordingPage(),
        );
        case '/user_profile' :
        return MaterialPageRoute(
          builder: (_) => UserProfile(),
        );
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
