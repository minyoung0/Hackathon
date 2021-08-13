package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import util.st_DatabaseUtil;

public class st_UserDAO {
	Connection conn = st_DatabaseUtil.getConnection();

	public int join(String userID, String userPassword, String name, String email, String number) {
		String SQL = "INSERT INTO userjoin VALUES (?,?,?,?,?)";
		try {
// 각각의 데이터를 실제로 넣어준다. 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
// 쿼리문의 ?안에 각각의 데이터를 넣어준다. 
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, number);
// 명령어를 수행한 결과 반환, 반환값: insert가 된 데이터의 개수 
			return pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("BBBBBBBBBBBB");
			e.printStackTrace();
		}
		return -1;
	}
}