import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

PreferredSize buildHeader({
  required BuildContext context,
  required bool isSearchMode,
  required TextEditingController searchController,
  required String title,
  String searchHint = 'Cari..',
  required void Function()? backAction,
  required void Function(String)? onChangedSearch,
  required void Function()? closePressed,
  required void Function()? searchPressed,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: AppBar(
      backgroundColor: Colors.pink,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: 16,
          right: 16,
        ),
        child: isSearchMode
            ? Row(
                children: [
                  BackButton(
                    color: Colors.white,
                    onPressed: backAction,
                  ),
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: searchHint,
                        hintStyle: TextStyle(color: Colors.white70),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 16,
                        ),
                        filled: false,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                      ),
                      onChanged: onChangedSearch,
                      autofocus: true,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.clear, color: Colors.white),
                    onPressed: closePressed,
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                    color: Colors.white,
                    onPressed: () => context.pop(),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: searchPressed,
                  ),
                ],
              ),
      ),
    ),
  );
}
