import 'package:teste_cubiq/business/entities/chat_entity.dart';
import 'package:teste_cubiq/business/entities/message_entity.dart';

List<ChatEntity> chatsMock = [
  ChatEntity(
    name: 'Rosangela Neves',
    lastMesasage: 'Olá, como tu está?',
    imageUrl: 'images/avatar.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(minutes: 5)),
    type: ChatType.unread,
  ),
  ChatEntity(
    name: 'Cassio Machado',
    lastMesasage: 'Oi, vamos nos encontrar amanhã?',
    imageUrl: 'images/avatar1.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(minutes: 10)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Daniela Targaryen',
    lastMesasage: 'Você viu o último episódio?',
    imageUrl: 'images/avatar2.png',
    lastMessageTime: DateTime.now().subtract(const Duration(hours: 1)),
    type: ChatType.finished,
  ),
  ChatEntity(
    name: 'Samuel Tarly',
    lastMesasage: 'Sim, eu adorei!',
    imageUrl: 'images/avatar3.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(hours: 2)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Cersei Lannister',
    lastMesasage: 'Vamos marcar um café?',
    imageUrl: 'images/avatar4.png',
    lastMessageTime: DateTime.now().subtract(const Duration(days: 1)),
    type: ChatType.unread,
  ),
  ChatEntity(
    name: 'Arya Stark',
    lastMesasage: 'Qual o plano para hoje?',
    imageUrl: 'images/avatar5.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(days: 2)),
    type: ChatType.unread,
  ),
  ChatEntity(
    name: 'Jorah Mormont',
    lastMesasage: 'Recebi suas fotos, estão ótimas!',
    imageUrl: 'images/avatar6.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(days: 3)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Missandei',
    lastMesasage: 'Não esqueça nossa reunião amanhã.',
    imageUrl: 'images/avatar7.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(days: 4)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Sansa Stark',
    lastMesasage: 'Bom dia! Como você está?',
    imageUrl: 'images/avatar8.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(days: 5)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Ana Carolina',
    lastMesasage: 'Estou indo para a academia.',
    imageUrl: 'images/avatar9.png',
    lastMessageTime: DateTime.now().subtract(const Duration(minutes: 30)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Guilherme',
    lastMesasage: 'Você já terminou aquele projeto?',
    imageUrl: 'images/avatar11.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(minutes: 45)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Maria Solange',
    lastMesasage: 'Precisamos discutir o orçamento.',
    imageUrl: 'images/avatar.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(hours: 3)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Eddard Stark',
    lastMesasage: 'Obrigado pela ajuda!',
    imageUrl: 'images/avatar1.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(hours: 4)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Rosana',
    lastMesasage: 'Você está livre hoje à noite?',
    imageUrl: 'images/avatar4.png',
    lastMessageTime: DateTime.now().subtract(const Duration(days: 6)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Maria Perci',
    lastMesasage: 'Vamos sair para jantar?',
    imageUrl: 'images/avatar5.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(days: 7)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Roberto Baratheon',
    lastMesasage: 'Tenho novidades para você!',
    imageUrl: 'images/avatar6.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(minutes: 15)),
    type: ChatType.read,
  ),
  ChatEntity(
    name: 'Marcia Zilles',
    lastMesasage: 'Vamos assistir um filme?',
    imageUrl: 'images/avatar7.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(hours: 5)),
    type: ChatType.finished,
  ),
  ChatEntity(
    name: 'Sabrina Rosa',
    lastMesasage: 'Estou trabalhando no relatório.',
    imageUrl: 'images/avatar8.jpeg',
    lastMessageTime: DateTime.now().subtract(const Duration(hours: 6)),
    type: ChatType.read,
  ),
];

final messagesMock = [
  MessageEntity(
    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.',
    sender: 'Jorah',
    dateTime: DateTime(2024, 8, 8, 15, 30),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Suspendisse potenti. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis.',
    sender: 'Arya',
    dateTime: DateTime(2024, 8, 8, 14, 22),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.',
    sender: 'Bran',
    dateTime: DateTime(2024, 8, 7, 11, 45),
    type: MessageType.text,
    isSentByMe: true,
  ),
  MessageEntity(
    text: 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
    sender: 'Sansa',
    dateTime: DateTime(2024, 8, 7, 9, 15),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh.',
    sender: 'Jon',
    dateTime: DateTime(2024, 8, 6, 22, 10),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem.',
    sender: 'Daenerys',
    dateTime: DateTime(2024, 8, 6, 17, 30),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis.',
    sender: 'Tyrion',
    dateTime: DateTime(2024, 8, 6, 16, 20),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',
    sender: 'Cersei',
    dateTime: DateTime(2024, 8, 6, 13, 45),
    type: MessageType.text,
    isSentByMe: true,
  ),
  MessageEntity(
    text: 'Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.',
    sender: 'Jaime',
    dateTime: DateTime(2024, 8, 5, 18, 30),
    type: MessageType.text,
    isSentByMe: true,
  ),
  MessageEntity(
    text: 'Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra.',
    sender: 'Samwell',
    dateTime: DateTime(2024, 8, 5, 17, 15),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh.',
    sender: 'Brienne',
    dateTime: DateTime(2024, 8, 5, 14, 00),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',
    sender: 'Varys',
    dateTime: DateTime(2024, 8, 5, 11, 20),
    type: MessageType.text,
    isSentByMe: true,
  ),
  MessageEntity(
    text: 'Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.',
    sender: 'Melisandre',
    dateTime: DateTime(2024, 8, 4, 20, 10),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh.',
    sender: 'Theon',
    dateTime: DateTime(2024, 8, 4, 18, 45),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis.',
    sender: 'Sandor',
    dateTime: DateTime(2024, 8, 4, 14, 30),
    type: MessageType.text,
    isSentByMe: true,
  ),
  MessageEntity(
    text: 'Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra.',
    sender: 'Gregor',
    dateTime: DateTime(2024, 8, 4, 11, 15),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',
    sender: 'Petyr',
    dateTime: DateTime(2024, 8, 4, 09, 50),
    type: MessageType.text,
    isSentByMe: true,
  ),
  MessageEntity(
    text: 'Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem.',
    sender: 'Eddard',
    dateTime: DateTime(2024, 8, 3, 20, 30),
    type: MessageType.text,
    isSentByMe: false,
  ),
  MessageEntity(
    text: 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.',
    sender: 'Robb',
    dateTime: DateTime(2024, 8, 3, 19, 20),
    type: MessageType.text,
    isSentByMe: true,
  ),
  MessageEntity(
    text: 'Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.',
    sender: 'Ygritte',
    dateTime: DateTime(2024, 8, 3, 17, 05),
    type: MessageType.text,
    isSentByMe: false,
  ),
];
