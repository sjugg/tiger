package com.tiger.jms;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.TextMessage;

import com.tiger.pojo.NoteInfo;
import com.tiger.utils.SpyMemcachedManager;

import net.sf.json.JSONObject;




public class MessageListener implements javax.jms.MessageListener{

	@Override
	public void onMessage(Message msg) {
		// TODO Auto-generated method stub
		TextMessage message=(TextMessage) msg;
		try {
			String textString=message.getText();
			JSONObject jsonObject=JSONObject.fromObject(textString);
			NoteInfo noteInfo=new NoteInfo();
			noteInfo.setContent(jsonObject.optString("content"));
			noteInfo.setTitle(jsonObject.optString("title"));
			SpyMemcachedManager spyMemcachedManager=SpyMemcachedManager.getInstance();
			if(spyMemcachedManager.get("noteInfo")==null){
				spyMemcachedManager.set("noteInfo", 3600, noteInfo);
			}else {
				spyMemcachedManager.replaceCache("noteInfo", 3600, noteInfo);
			}
			System.out.println(spyMemcachedManager.get("noteInfo").toString());
		} catch (JMSException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("收到通知！内容为："+msg);
	}

}
