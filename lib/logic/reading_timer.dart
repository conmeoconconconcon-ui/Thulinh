import 'dart:async';

class ReadingTimer {
  Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;
  int totalMinutesRead = 0;

  // Bắt đầu đếm khi mở sách
  void startReading() {
    _stopwatch.start();
    // Cứ mỗi phút sẽ tự động cập nhật dữ liệu một lần
    _timer = Timer.periodic(Duration(minutes: 1), (timer) {
      totalMinutesRead++;
      print("Bạn đã đọc thêm được 1 phút! Tổng: $totalMinutesRead");
    });
  }

  // Dừng đếm khi đóng sách hoặc thoát app
  void stopReading() {
    _stopwatch.stop();
    _timer?.cancel();
    
    // Tính toán số phút thực tế từ stopwatch để chính xác hơn
    int sessionMinutes = _stopwatch.elapsed.inMinutes;
    print("Phiên đọc này kết thúc. Bạn đã đọc được $sessionMinutes phút.");
  }

  // Reset bộ đếm nếu cần
  void reset() {
    _stopwatch.reset();
    totalMinutesRead = 0;
  }
}
