package dataAtual;

import java.util.Date;
import java.text.SimpleDateFormat;

public class Data {
	
	private static Date data = new Date();
	
	public static String dateAtual() {
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		return df.format(data);
	}
}
