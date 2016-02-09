package gduf.swimming.repair.util;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class MessageUtils {
	private static MessageUtils messageUtils;
	// api请求地址
	private final static String REQUEST_URL = "http://gw.api.taobao.com/router/rest";
	// appKey
	private final static String APPKEY = "23308694";
	// appSecret
	private final static String APPSECRET = "c4e66696f9c9d384e1899b5706e92803";

	// 短信类型
	private String smsType;
	// 短信签名
	private String tSmsFreeSignName;
	// 短信参数
	private String smsParams;
	// 发送电话号码
	private String recNum;
	// 短信模板代号
	private String smsTemplateCode;

	public void sendMsg() {
		TaobaoClient client = new DefaultTaobaoClient(REQUEST_URL, APPKEY,
				APPSECRET);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		// 设置短信类型
		req.setSmsType(getSmsType());
		// 设置短信签名
		req.setSmsFreeSignName(gettSmsFreeSignName());
		// 设置模板参数
		req.setSmsParamString(getSmsParams());
		// 设置接收方手机号码
		req.setRecNum(getRecNum());
		// 设置模板
		req.setSmsTemplateCode(getSmsTemplateCode());
		// 执行
		AlibabaAliqinFcSmsNumSendResponse rsp = null;
		try {
			rsp = client.execute(req);
		} catch (ApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(rsp.getBody());
	}

	public String getSmsType() {
		return smsType;
	}

	public void setSmsType(String smsType) {
		this.smsType = smsType;
	}

	public String gettSmsFreeSignName() {
		return tSmsFreeSignName;
	}

	public void settSmsFreeSignName(String tSmsFreeSignName) {
		this.tSmsFreeSignName = tSmsFreeSignName;
	}

	public String getSmsParams() {
		return smsParams;
	}

	public void setSmsParams(String smsParams) {
		this.smsParams = smsParams;
	}

	public String getRecNum() {
		return recNum;
	}

	public void setRecNum(String recNum) {
		this.recNum = recNum;
	}

	public String getSmsTemplateCode() {
		return smsTemplateCode;
	}

	public void setSmsTemplateCode(String smsTemplateCode) {
		this.smsTemplateCode = smsTemplateCode;
	}

	public static MessageUtils getInstance() {
		if (messageUtils == null) {
			messageUtils = new MessageUtils();
			messageUtils.setSmsTemplateCode("SMS_4960261");
			messageUtils.setSmsType("normal");
			messageUtils.settSmsFreeSignName("身份验证");
		}
		return messageUtils;
	}

	private MessageUtils() {
	}
}
