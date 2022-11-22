class ContactList{
 ContactList({required this.name,required this.payout,required this.dpimage,required this.date});
 String name;
 String payout;
 String dpimage;
 String date;
}
var lists=[
  ContactList(name: 'Vijay', payout: '100 received',dpimage: 'images/dp1.png', date: '14/10/22'),
  ContactList(name: 'Pawan', payout: '102 received',dpimage: 'images/dp2.png', date: '14/10/22'),
  ContactList(name: 'Rajesh Kumar', payout: '105 received',dpimage: 'images/dp1.png', date: '14/10/22'),
  ContactList(name: 'Rahul', payout: '108 received',dpimage: 'images/dp2.png', date: '14/10/22'),
  ContactList(name: 'sonu', payout: '115 received',dpimage: 'images/dp1.png', date: '14/10/22'),
  ContactList(name: 'deepak', payout: '120 received',dpimage: 'images/dp2.png', date: '14/10/22'),
  ContactList(name: 'renu', payout: '125 received',dpimage: 'images/dp1.png', date: '14/10/22'),

];


class Chat{
  Chat({required this.msg1,required this.time });
  String msg1;
  String time;
  bool isme = false;
}

var chatlist=[
  Chat(msg1: 'hii', time: '12:10'),
  Chat(msg1: 'hello', time: '12:11'),
  Chat(msg1: 'where', time: '12:11'),
  Chat(msg1: 'delhi', time: '12:11'),
  Chat(msg1: 'whats up', time: '12:12'),
  Chat(msg1: 'nothing', time: '12:12'),
  Chat(msg1: 'ok', time: '12:12'),
  Chat(msg1: 'meet', time: '12:12'),
  Chat(msg1: 'no', time: '12:12'),
];








