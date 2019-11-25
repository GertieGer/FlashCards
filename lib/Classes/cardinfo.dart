class CardInfo{

  Map front = {"image":[], "text":[]};
  Map back = {"image":[], "text":[]};

  CardInfo(frontInfo,backInfo){
    this.front["image"] = frontInfo[0];
    this.front["text"] = frontInfo[1];
    this.back["image"] = backInfo[0];
    this.back["text"] = backInfo[1];
  }

}