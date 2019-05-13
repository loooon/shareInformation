package com.zyx.controller;


import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zyx.model.MsgPushActivity;
import com.zyx.service.MsgPushActivityService;

/**
 * <p>
 * 活动表 前端控制器
 * </p>
 *
 * @author yixin123
 * @since 2019-05-05
 */
@Controller
//@RequestMapping("/msgPushActivity")
public class MsgPushActivityController {
	
	@Autowired
	private MsgPushActivityService msgPushActivityService;

	/*
	 * 我的发布：根据用户编号user_id（msg_push_user）即activity_initiate_user_id（msg_push_activity）查询数据
	 */
	@RequestMapping(value = "/selActivityByUserId", method = RequestMethod.POST)
	@ResponseBody
	public List<MsgPushActivity> selActivityByUserId(HttpServletRequest request,HttpServletResponse response){
		System.out.println("Controller");
		String activityInitiateUserId =request.getParameter("activityInitiateUserId");
		System.out.println("activityInitiateUserId="+activityInitiateUserId);
		List<MsgPushActivity> list = msgPushActivityService.selectActivityById(activityInitiateUserId);
		/*
		 * System.out.println(list.size()); if(list.size()>0) { for(MsgPushActivity
		 * msgPushActivity:list) { String activityRuleName =
		 * msgPushActivity.getActivityRuleName(); String receivingWayName =
		 * msgPushActivity.getReceivingWayName(); String userName =
		 * msgPushActivity.getUserName(); String
		 * startTime=msgPushActivity.getStartTime(); String endTime
		 * =msgPushActivity.getEndTime();
		 * System.out.println("activityRuleName = "+activityRuleName
		 * +"receivingWayName = "+receivingWayName+"userName = "+userName+"startTime = "
		 * +startTime +"endTime= "+endTime); } }
		 */
		return list;
	}
}

