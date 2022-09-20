import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'notification.g.dart';

@HiveType(typeId: 2)
class NotificationEntity extends Equatable {
  //TODO to hive
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final String text;
  @HiveField(3)
  final String createdAt;
  @HiveField(4)
  final String time;

  const NotificationEntity({
    required this.text,
    required this.createdAt,
    required this.time,
    this.image = '',
    this.title = '',
  });

  @override
  List<Object?> get props => <Object>[text, createdAt, time, title, image];
}
