class DeliverTime {
  final String mStartTime;
  final String mEndTime;

  DeliverTime({this.mStartTime, this.mEndTime});
}

List<DeliverTime> mTimeDeliverList = [
  DeliverTime(mStartTime: "10:00AM", mEndTime: "12:00PM"),
  DeliverTime(mStartTime: "12:00PM", mEndTime: "2:00PM"),
  DeliverTime(mStartTime: "2:00PM", mEndTime: "4:00PM"),
  DeliverTime(mStartTime: "4:00PM", mEndTime: "6:00PM"),
  DeliverTime(mStartTime: "6:00PM", mEndTime: "8:00PM"),
  DeliverTime(mStartTime: "8:00PM", mEndTime: "10:00PM"),
];
