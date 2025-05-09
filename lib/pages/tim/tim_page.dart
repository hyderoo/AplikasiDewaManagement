// tim_page.dart
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/cubits/team/team_cubit.dart';
import 'package:dewa_wo_app/models/team_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TimPage extends StatefulWidget {
  const TimPage({super.key});

  @override
  State<TimPage> createState() => _TimPageState();
}

class _TimPageState extends State<TimPage> {
  bool _isSearchMode = false;
  final TextEditingController _searchController = TextEditingController();

  late final TeamCubit _teamCubit;
  List<TeamModel> _filteredTeam = [];

  @override
  void initState() {
    super.initState();
    _teamCubit = context.read<TeamCubit>();
    _teamCubit.getTeam();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchTeam(List<TeamModel> team, String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredTeam = team;
      });
      return;
    }

    setState(() {
      _filteredTeam = team
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: _buildHeader(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 60),
          Expanded(
            child: BlocConsumer<TeamCubit, TeamState>(
              bloc: _teamCubit,
              listener: (context, state) {
                if (state is TeamSuccess) {
                  _searchTeam(state.team, _searchController.text);
                }
              },
              builder: (context, state) {
                if (state is TeamLoading || state is TeamInitial) {
                  return _buildShimmerList();
                } else if (state is TeamSuccess) {
                  return RefreshIndicator(
                    onRefresh: () => _teamCubit.getTeam(),
                    child: _filteredTeam.isEmpty
                        ? _buildEmptyStateWithRefresh()
                        : _buildTeamList(),
                  );
                } else if (state is TeamError) {
                  return _buildErrorState(state.message);
                }

                return _buildShimmerList();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 16,
        right: 16,
      ),
      child: _isSearchMode
          ? Row(
              children: [
                BackButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      _isSearchMode = false;
                      _searchController.clear();

                      // Reset search when exiting search mode
                      if (_teamCubit.state is TeamSuccess) {
                        final team = (_teamCubit.state as TeamSuccess).team;
                        _searchTeam(team, '');
                      }
                    });
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      hintText: 'Cari tim kami...',
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
                    onChanged: (query) {
                      if (_teamCubit.state is TeamSuccess) {
                        final team = (_teamCubit.state as TeamSuccess).team;
                        _searchTeam(team, query);
                      }
                    },
                    autofocus: true,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.clear, color: Colors.white),
                  onPressed: () {
                    _searchController.clear();
                    if (_teamCubit.state is TeamSuccess) {
                      final team = (_teamCubit.state as TeamSuccess).team;
                      _searchTeam(team, '');
                    }
                  },
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
                const Text(
                  'Tim Kami',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _isSearchMode = true;
                    });
                  },
                ),
              ],
            ),
    );
  }

  Widget _buildShimmerList() {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                height: 120,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyStateWithRefresh() {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people_outline,
                  size: 80,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 16),
                Text(
                  'Tidak ada anggota tim yang ditemukan',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Coba ubah kata kunci pencarian',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text(
                  'Tarik ke bawah untuk menyegarkan',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorState(String message) {
    return RefreshIndicator(
      onRefresh: () => _teamCubit.getTeam(),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 80,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Terjadi kesalahan',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      message,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => _teamCubit.getTeam(),
                    child: const Text('Coba Lagi'),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'atau tarik ke bawah untuk menyegarkan',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[500],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamList() {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16).copyWith(bottom: 64),
      itemCount: _filteredTeam.length,
      itemBuilder: (context, index) {
        return _buildTeamCard(_filteredTeam[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 16);
      },
    );
  }

  Widget _buildTeamCard(TeamModel member) {
    return Card(
      child: InkWell(
        onTap: () => _showTeamDetail(member),
        borderRadius: BorderRadius.circular(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(16),
              ),
              child: CachedNetworkImage(
                imageUrl: "${AppConsts.baseUrl}${member.image}",
                width: 150,
                height: 200,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  width: 150,
                  height: 200,
                  color: Colors.grey[200],
                  child: const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  width: 150,
                  height: 200,
                  color: Colors.pink[100],
                  alignment: Alignment.center,
                  child: Icon(Icons.person, size: 50, color: Colors.pink[300]),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              member.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              member.role,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      member.description,
                      style: const TextStyle(
                        fontSize: 13,
                        height: 1.4,
                        color: Colors.black87,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        if (member.instagram?.isNotEmpty == true)
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.pink[50],
                              shape: BoxShape.circle,
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.instagram,
                              size: 16,
                              color: Colors.pink[400],
                            ),
                          ),
                        if (member.linkedin?.isNotEmpty == true)
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              shape: BoxShape.circle,
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.linkedin,
                              size: 16,
                              color: Colors.blue[400],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showTeamDetail(TeamModel member) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: "${AppConsts.baseUrl}${member.image}",
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        height: 250,
                        color: Colors.grey[200],
                        child: const Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.pink),
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        height: 250,
                        color: Colors.pink[100],
                        alignment: Alignment.center,
                        child: Icon(Icons.person,
                            size: 80, color: Colors.pink[300]),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: IconButton(
                        icon: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        member.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        member.role,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.pink,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Divider(),
                      Text(
                        'Tentang ${member.name}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        member.description,
                        style: const TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          if (member.instagram?.isNotEmpty == true)
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  launchUrlString(member.instagram!);
                                },
                                icon: FaIcon(FontAwesomeIcons.instagram),
                                label: const Text('Instagram'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.pink,
                                ),
                              ),
                            ),
                          if (member.linkedin?.isNotEmpty == true) ...[
                            const SizedBox(width: 12),
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  launchUrlString(member.linkedin!);
                                },
                                icon: FaIcon(FontAwesomeIcons.linkedin),
                                label: const Text('LinkedIn'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[700],
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
