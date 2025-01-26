// import 'package:flutter/material.dart';
// import '../models/waste_collection.dart';
// import 'package:flutter_animate/flutter_animate.dart';

// class WasteCollectionOverview extends StatelessWidget {
//   final List<WasteCollection> collections;

//   const WasteCollectionOverview({Key? key, required this.collections})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400,
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.green.shade50, Colors.white],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.green.withOpacity(0.1),
//             spreadRadius: 5,
//             blurRadius: 15,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Waste Collection Overview',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.green[700],
//             ),
//           ).animate().fadeIn().slideX(begin: -0.2, end: 0),
//           const SizedBox(height: 20),
//           Expanded(
//             child: ListView.builder(
//               itemCount: collections.length,
//               itemBuilder: (context, index) {
//                 final collection = collections[index];
//                 return Card(
//                   margin:
//                       const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
//                   elevation: 4,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       if (collection.image != null)
//                         ClipRRect(
//                           borderRadius: const BorderRadius.vertical(
//                               top: Radius.circular(16)),
//                           child: Stack(
//                             children: [
//                               Image.file(
//                                 collection.image!,
//                                 width: double.infinity,
//                                 height: 180,
//                                 fit: BoxFit.cover,
//                               ),
//                               Positioned(
//                                 top: 12,
//                                 right: 12,
//                                 child: Container(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 12, vertical: 6),
//                                   decoration: BoxDecoration(
//                                     color: Colors.black54,
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   child: Text(
//                                     '₹${collection.income}',
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       Padding(
//                         padding: const EdgeInsets.all(16),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               collection.date,
//                               style: TextStyle(
//                                 color: Colors.grey[600],
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const SizedBox(height: 8),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     collection.wasteType,
//                                     style: const TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 18,
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.symmetric(
//                                     horizontal: 12,
//                                     vertical: 6,
//                                   ),
//                                   decoration: BoxDecoration(
//                                     color: Colors.green.withOpacity(0.1),
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   child: Text(
//                                     '${collection.amount} kg',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.green[700],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             if (collection.description != null) ...[
//                               const SizedBox(height: 8),
//                               Text(
//                                 collection.description!,
//                                 style: TextStyle(
//                                   color: Colors.grey[600],
//                                   fontSize: 14,
//                                 ),
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ],
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//                     .animate()
//                     .fadeIn(delay: Duration(milliseconds: 100 * index))
//                     .slideY(begin: 0.2, end: 0);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
