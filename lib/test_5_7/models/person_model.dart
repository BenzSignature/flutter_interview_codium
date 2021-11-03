class PersonModel {
  int id;
  String images;
  String name;
  String email;
  String address;
  String hbd;
  PersonModel({
    required this.id,
    required this.images,
    required this.name,
    required this.email,
    required this.address,
    required this.hbd,
  });
}

List<PersonModel> personmodels = [
  PersonModel(
    id: 0,
    images: 'assets/images/benz.jpg',
    name: 'Thanakrit krataipetch',
    email: 'benz.k@codium.co',
    address:
        'Siam@siam Hotel Building, 7th Floor 865 Rama 1 Road Wang Mai, Patumwan Bangkok 10330, Thailand',
    hbd: '02/08/39',
  ),
  PersonModel(
    id: 1,
    images: 'assets/images/alfade.jpg',
    name: 'Rungsri',
    email: 'alfade.r@codium.co',
    address:
        'Siam@siam Hotel Building, 7th Floor 865 Rama 1 Road Wang Mai, Patumwan Bangkok 10330, Thailand',
    hbd: '02/08/39',
  ),
  PersonModel(
    id: 2,
    images: 'assets/images/keang.jpeg',
    name: 'Pattarapong',
    email: 'kaeng.T@codium.co',
    address:
        'Siam@siam Hotel Building, 7th Floor 865 Rama 1 Road Wang Mai, Patumwan Bangkok 10330, Thailand',
    hbd: '02/08/39',
  ),
  PersonModel(
    id: 3,
    images: 'assets/images/pae.jpg',
    name: 'Sittha',
    email: 'pae.k@codium.co',
    address:
        'Siam@siam Hotel Building, 7th Floor 865 Rama 1 Road Wang Mai, Patumwan Bangkok 10330, Thailand',
    hbd: '02/08/39',
  ),
  PersonModel(
    id: 4,
    images: 'assets/images/ling.jpg',
    name: 'Ratchanon',
    email: 'ling.k@codium.co',
    address:
        'Siam@siam Hotel Building, 7th Floor 865 Rama 1 Road Wang Mai, Patumwan Bangkok 10330, Thailand',
    hbd: '02/08/39',
  ),
];
