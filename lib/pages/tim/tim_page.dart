// tim_page.dart
import 'package:dewa_wo_app/core/models/response/tim_response.dart';
import 'package:dewa_wo_app/pages/general/data_page.dart';
import 'package:dewa_wo_app/pages/general/empty_page.dart';
import 'package:dewa_wo_app/pages/general/error_page.dart';
import 'package:dewa_wo_app/pages/general/header_page.dart';
import 'package:dewa_wo_app/pages/general/shimmer_page.dart';
import 'package:dewa_wo_app/pages/tim/cubit/tim_cubit.dart';
import 'package:dewa_wo_app/pages/tim/tim_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimPage extends StatefulWidget {
  const TimPage({super.key});

  @override
  State<TimPage> createState() => _TimPageState();
}

class _TimPageState extends State<TimPage> {
  bool _isSearchMode = false;
  final TextEditingController _searchController = TextEditingController();

  late final TimCubit _timCubit;
  List<TimModel> _filteredTim = [];

  @override
  void initState() {
    super.initState();
    _timCubit = context.read<TimCubit>();
    _timCubit.fetchData();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchTim(List<TimModel> tim, String query) {
    if (query.isEmpty) {
      setState(() => _filteredTim = tim);
      return;
    }

    setState(() {
      _filteredTim = tim
          .where((member) =>
              member.name.toLowerCase().contains(query.toLowerCase()) ||
              member.role.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildHeader(
        context: context,
        isSearchMode: _isSearchMode,
        searchController: _searchController,
        title: 'Tim Kami',
        searchHint: 'Cari Tim Kami',
        backAction: () {
          setState(() {
            _isSearchMode = false;
            _searchController.clear();
            if (_timCubit.state is TimSuccess) {
              final tim = (_timCubit.state as TimSuccess).tim;
              _searchTim(tim, '');
            }
          });
        },
        onChangedSearch: (query) {
          if (_timCubit.state is TimSuccess) {
            final tim = (_timCubit.state as TimSuccess).tim;
            _searchTim(tim, query);
          }
        },
        closePressed: () {
          _searchController.clear();
          if (_timCubit.state is TimSuccess) {
            final tim = (_timCubit.state as TimSuccess).tim;
            _searchTim(tim, '');
          }
        },
        searchPressed: () => setState(() => _isSearchMode = true),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 60),
          Expanded(
            child: BlocConsumer<TimCubit, TimState>(
              bloc: _timCubit,
              listener: (context, state) {
                if (state is TimSuccess) {
                  _searchTim(state.tim, _searchController.text);
                }
              },
              builder: (context, state) {
                if (state is TimLoading || state is TimInitial) {
                  return ShimmerPage();
                } else if (state is TimSuccess) {
                  return RefreshIndicator(
                    onRefresh: () => _timCubit.fetchData(),
                    child: _filteredTim.isEmpty
                        ? EmptyPage(
                            message: 'Tidak ada anggota tim yang ditemukan',
                          )
                        : DataPage(
                            itemBuilder: (context, index) {
                              return TimCard(member: _filteredTim[index]);
                            },
                            itemCount: _filteredTim.length,
                          ),
                  );
                } else if (state is TimError) {
                  return ErrorPage(
                    fetchData: () => _timCubit.fetchData(),
                    message: state.message,
                  );
                }

                return ShimmerPage();
              },
            ),
          ),
        ],
      ),
    );
  }
}
