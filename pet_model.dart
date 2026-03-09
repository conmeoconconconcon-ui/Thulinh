class Pet {
  String name;
  int level;
  int experience; // Tính bằng phút đã đọc

  Pet({required this.name, this.level = 1, this.experience = 0});

  // Cứ mỗi 60 phút đọc sách sẽ lên 1 cấp
  void addExperience(int minutes) {
    experience += minutes;
    level = (experience / 60).floor() + 1;
  }

  String get currentStage {
    if (level < 10) return "Trứng";
    if (level < 30) return "Thú nhỏ";
    return "Linh thú trưởng thành";
  }
}
