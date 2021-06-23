// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/styles/constants.dart';
import 'package:spotify_clone/components/genre.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: kBlack,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Search',
                  style: kHeadingTextStyle,
                ),
                const SizedBox(
                  height: 15,
                ),
                // ignore: todo
                //TODO::-|>
                //Replace textFiled with button widget to take it to new screen
                const TextField(
                  style: TextStyle(
                    color: kLightGrey,
                    height: 1,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search_sharp),
                    hintText: 'Artists, Songs or Podcasts',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  'Your top genres',
                  style: kCardTextStyle,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Expanded(
                  child: genreCard,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}