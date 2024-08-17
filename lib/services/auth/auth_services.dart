// import 'package:firebase_auth/firebase_auth.dart'; // Import the Firebase Auth package
//
// class AuthServices {
//   // Get instance of Firebase Auth
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//
//   // Get current user
//   User? getCurrentUser() {
//     return _firebaseAuth.currentUser;
//   }
//
//   // Sign in
//   Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
//     try {
//       // Sign user in
//       UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential;
//     } on FirebaseAuthException catch (e) {
//       // Catch Firebase Auth errors
//       throw Exception('Error signing in: ${e.message}');
//     } catch (e) {
//       // Catch any other errors
//       throw Exception('An unknown error occurred: $e');
//     }
//   }
//
//   // Sign up
//   Future<UserCredential> signUpWithEmailAndPassword(String email, String password) async {
//     try {
//       // Sign user up
//       UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential;
//     } on FirebaseAuthException catch (e) {
//       // Catch Firebase Auth errors
//       throw Exception('Error signing up: ${e.message}');
//     } catch (e) {
//       // Catch any other errors
//       throw Exception('An unknown error occurred: $e');
//     }
//   }
//
//   // Sign out
//   Future<void> signOut() async {
//     return await _firebaseAuth.signOut();
//   }
// }
