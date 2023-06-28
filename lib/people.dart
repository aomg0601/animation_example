class People {
  String name;
  double height;
  double weight;
  double? bmi;  //null 가능


  // this는 현재 객체를 가리키는 키워드
  People(this.name, this.height, this.weight) {
    bmi = weight / ((height/100) *(height/100));
  }
}