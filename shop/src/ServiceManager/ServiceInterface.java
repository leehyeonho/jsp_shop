package ServiceManager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ServiceInterface {
	public ServiceForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
