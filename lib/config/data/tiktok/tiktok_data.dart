// class Tiktok {
//   InfoPost info_post;
//   InfoAuthor info_author;

//   Tiktok({
//     required this.info_post,
//     required this.info_author,
//   });

//   factory Tiktok.fromJson(Map<String, dynamic> json) => Tiktok(
//       info_post: InfoPost.fromJson(json['info_post']),
//       info_author: InfoAuthor.fromJson(json['info_author']));
// }

// class InfoPost {
//   final String id_post;
//   final String link_post;
//   final String caption;
//   final int heart_count;
//   final int comment_count;
//   final int views_count;

//   InfoPost({
//     required this.id_post,
//     required this.link_post,
//     required this.caption,
//     required this.heart_count,
//     required this.comment_count,
//     required this.views_count,
//   });

//   factory InfoPost.fromJson(Map<String, dynamic> json) => InfoPost(
//         id_post: json['id_post'],
//         link_post: json['link_post'],
//         caption: json['caption'],
//         heart_count: json['heart_count'],
//         comment_count: json['comment_count'],
//         views_count: json['views_count'],
//       );
// }

// class InfoAuthor {
//   final String nick_name;
//   final String link_info;
//   final int following_count;
//   final int follower_count;
//   final int video_count;
//   final int heart_count;

//   InfoAuthor({
//     required this.nick_name,
//     required this.link_info,
//     required this.following_count,
//     required this.follower_count,
//     required this.video_count,
//     required this.heart_count,
//   });

//   factory InfoAuthor.fromJson(Map<String, dynamic> json) => InfoAuthor(
//         nick_name: json['nick_name'],
//         link_info: json['link_info'],
//         following_count: json['following_count'],
//         follower_count: json['follower_count'],
//         video_count: json['video_count'],
//         heart_count: json['heart_count'],
//       );
// }
