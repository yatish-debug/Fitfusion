import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildFeatureCard(
            icon: Icons.attach_money,
            label: 'Manage Pricing',
            onTap: () => Navigator.pushNamed(context, '/pricing'),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({required IconData icon, required String label, required VoidCallback onTap}) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40),
            Text(label),
          ],
        ),
      ),
    );
  }
}￼Enter
