class YogaModel{
static String YogaTable1=  "BegineerYoga";
static String YogaTable2="WeightLossYoga";
static String YogaTable3="KidsYoga";
static String YogaSummary="YogaSummary";

static String YogaWorkOutName="YogaWorkOutName";
static String BackImage="BackImage";
static String TimeTaken="TimeTaken";
static String TotalNoOfWork="YogTotalNoOfWorkSummary";



static String IDName="ID";
static String YogaName="YogaName";
static String SecondsOrNot="SecondsOrNot";
static String ImageName="ImageName";
static List<String>? YogaTable1ColumnName=[YogaModel.IDName,YogaModel.ImageName,YogaModel.YogaName,YogaModel.SecondsOrNot];

}

class Yoga{
  final int? id;
  final bool Seconds;
  final String YogaTitile;
  final String  YogaImageUrl;
  const Yoga({
    this.id,
    required this.Seconds,
    required this.YogaImageUrl,
    required this.YogaTitile,
  });
  Yoga copy({
    int?id,
    bool? Seconds,
    String?YogaTitle,
    String?YogaImageUr

    
  }){
    return Yoga(
      id: id??this.id,
      Seconds: Seconds?? this.Seconds,
     YogaImageUrl: YogaImageUrl?? this.YogaImageUrl,
      YogaTitile: YogaTitile?? this.YogaTitile);
  }


  static Yoga fromJson(Map<String,Object?>json){
    return Yoga(
      id: json[YogaModel.IDName]as int,
      Seconds: json[YogaModel.SecondsOrNot]==1,
       YogaImageUrl: json[YogaModel.ImageName]as String, 
       YogaTitile: json[YogaModel.YogaName]as String);
  }


  Map<String , Object?>toJson(){
    return{ YogaModel.IDName:id,
    YogaModel.YogaName:YogaTitile,
    YogaModel.SecondsOrNot:Seconds?1:0,
    YogaModel.ImageName:YogaImageUrl,


  };
  }
}


class YogaSummary{

  final int? id;
  
  final String YogaWorkOutName;
  final String  BackImage;
  final String  TimeTaken;
  final String  TotalNoOfWork;
  const YogaSummary({
    this.id,
    required this.YogaWorkOutName,
    required this.BackImage,
    required this.TimeTaken,
    required this.TotalNoOfWork,
  });
  YogaSummary copy({
    int?id,
    String?  TimeTaken,
    String? TotalNoOfWork,
    String?YogaWorkOutName,
    String?BackImage

    
  }){
    return YogaSummary(
      id: id??this.id, 
     YogaWorkOutName:  YogaWorkOutName?? this.YogaWorkOutName, 
      BackImage: BackImage??this.BackImage, 
      TimeTaken: TimeTaken?? this.TimeTaken,
       TotalNoOfWork: TotalNoOfWork??this.TotalNoOfWork,
   );
  }


  static YogaSummary fromJson(Map<String,Object?>json){
    return YogaSummary(
      id: json[YogaModel.IDName]as int,
      YogaWorkOutName: json[YogaModel.YogaWorkOutName]as String,
       BackImage: json[YogaModel.BackImage]as String, 
       TimeTaken: json[YogaModel.TimeTaken]as String,
       TotalNoOfWork: json[YogaModel.TotalNoOfWork]as String,
       );
  }


  Map<String , Object?>toJson(){
    return{ YogaModel.IDName:id,
    YogaModel.YogaWorkOutName:YogaWorkOutName,
    YogaModel.TimeTaken:TimeTaken,
    YogaModel.BackImage:BackImage,
    YogaModel.TotalNoOfWork:TotalNoOfWork,


  };
  }
}