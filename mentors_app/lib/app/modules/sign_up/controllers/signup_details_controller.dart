import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupDetailsController extends GetxController {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController aadharController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController fieldController = TextEditingController();
  RxString selectedOccupation = 'Private Sector'.obs;
  final TextEditingController designationController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();
  final TextEditingController workplaceController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController portfolioController = TextEditingController();
  final TextEditingController socialMediaController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  List<String> occupations = [
    'Private Sector',
    'Employed (Part Time)',
    'Self-Employed / Freelancer',
    'Entrepreneur / Founder',
    'Manager / Executive',
    'Educator / Researcher',
    'Student',
    'Retired',
    'Job Searching',
  ];
  void updateOccupation(String newOccupation) {
    selectedOccupation.value = newOccupation;
  }
}
