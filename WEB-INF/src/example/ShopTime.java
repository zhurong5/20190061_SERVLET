import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import java.util.Calendar;

public class ShopTime {
    public String timenow() {
        // 한국 시간대 설정
        TimeZone seoulTimeZone = TimeZone.getTimeZone("Asia/Seoul");
        Calendar calendar = Calendar.getInstance(seoulTimeZone);
        calendar.add(Calendar.HOUR, 9); // 현재 시간에 9시간을 추가

        // 조정된 시간을 가져옵니다
        Date koreanTime = calendar.getTime();

        // 원하는 형식으로 시간을 포맷합니다
        SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss a");
        sdf.setTimeZone(seoulTimeZone);
        String formattedTime = sdf.format(koreanTime);

        return formattedTime; // 조정된 한국 시간을 문자열로 반환
    }
}
