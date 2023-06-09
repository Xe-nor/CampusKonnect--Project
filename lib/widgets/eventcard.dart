// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/eventdetail2.dart';
import '../utils/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icondetailpair.dart';

Widget eventCard({
  required Context,
  required eventimage,
  required eventname,
  required eventDescription,
  required eventDate,
  required eventLocation,
  required eventTime,
}) {
  return GestureDetector(
    onTap: () {
      Get.to(const eventdetail());
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: const Color.fromARGB(255, 13, 16, 22), width: 0.2),
          color: Appcolors.secondary,
        ),
        height: 240,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                eventimage,
                height: 130,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        eventname,
                        style: GoogleFonts.urbanist(
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ), //!eventname
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      
                      icondetailpair(
                          detail: eventDate, icon: FontAwesomeIcons.calendar),
                      icondetailpair(
                          detail: eventTime, icon: FontAwesomeIcons.clock),
                      icondetailpair(
                          detail: eventLocation,
                          icon: FontAwesomeIcons.locationPin),
                    ],
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          eventDescription,
                          maxLines: 2,
                          style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
