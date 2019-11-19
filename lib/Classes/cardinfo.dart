class CardInfo{

  Map front = {"image":[], "text":[]};
  Map back = {"image":[], "text":[]};

  CardInfo(frontInfo,backInfo){
    this.front["image"] = frontInfo[0];
    this.front["text"] = frontInfo[0];
    this.back["image"] = frontInfo[0];
    this.back["text"] = frontInfo[0];
  }

}