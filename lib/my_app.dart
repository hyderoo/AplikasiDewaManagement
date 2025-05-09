part of 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthCubit>()),
        BlocProvider(create: (context) => getIt<AvailabilityCubit>()),
        BlocProvider(create: (context) => getIt<TeamCubit>()),
        BlocProvider(create: (context) => getIt<ProfileCubit>()),
        BlocProvider(create: (context) => getIt<PortfolioCubit>()),
        BlocProvider(create: (context) => getIt<ServiceCubit>()),
        BlocProvider(create: (context) => getIt<ReviewCubit>()),
      ],
      child: MaterialApp.router(
        title: 'Dewa Management - Wedding Organizer',
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
            accentColor: Colors.pinkAccent,
            brightness: Brightness.light,
          ),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink[400],
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.pink,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.pink[200]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.pink, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.pink[200]!),
            ),
            fillColor: Colors.white,
            filled: true,
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w400,
            ),
          ),
          textTheme: GoogleFonts.publicSansTextTheme(textTheme).copyWith(
            displayLarge:
                TextStyle(color: Colors.pink[900], fontWeight: FontWeight.bold),
            displayMedium:
                TextStyle(color: Colors.pink[800], fontWeight: FontWeight.bold),
            displaySmall:
                TextStyle(color: Colors.pink[700], fontWeight: FontWeight.w600),
            headlineMedium:
                TextStyle(color: Colors.pink[900], fontWeight: FontWeight.bold),
            headlineSmall:
                TextStyle(color: Colors.pink[800], fontWeight: FontWeight.w600),
            titleLarge:
                TextStyle(color: Colors.pink[700], fontWeight: FontWeight.bold),
            titleMedium: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
            bodyLarge: const TextStyle(color: Colors.black87),
            bodyMedium: const TextStyle(color: Colors.black54),
          ),
          cardTheme: CardTheme(
            elevation: 2,
            margin: const EdgeInsets.all(2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: Colors.pink.shade100,
                width: 1,
              ),
            ),
            shadowColor: Colors.grey.shade100,
          ),
        ),
      ),
    );
  }
}
