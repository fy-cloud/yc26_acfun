package com.yc.acfun.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.acfun.entity.Delete;
import com.yc.acfun.entity.Follow;
import com.yc.acfun.entity.PaginationBean;
import com.yc.acfun.mapper.FollowMapper;
import com.yc.acfun.service.FollowService;



@Service("followService")
public class FollowServiceImpl implements FollowService {

	@Autowired
	private FollowMapper followMapper;

	@Override
	public PaginationBean<Follow> showfollowing(String currPage, String pageSize, int id) {
		PaginationBean<Follow> followBean=new PaginationBean<Follow>();
		if(currPage!=null){
			followBean.setCurrPage(Integer.parseInt(currPage));
		}
		
		if(pageSize!=null){
			followBean.setPageSize(Integer.parseInt(pageSize));
		}
		followBean.setId(id);
		System.out.println(followBean.getPageSize());
		return followMapper.findFollowing(followBean);
	}

	@Override
	public boolean rmFollow(Delete delete) {
		// TODO Auto-generated method stub
		return followMapper.deleteFollowing(delete)>0;
	}

	@Override
	public PaginationBean<Follow> showfolloed(String currPage, String pageSize, int id) {
		PaginationBean<Follow> followBean=new PaginationBean<Follow>();
		if(currPage!=null){
			followBean.setCurrPage(Integer.parseInt(currPage));
		}
		
		if(pageSize!=null){
			followBean.setPageSize(Integer.parseInt(pageSize));
		}
		followBean.setId(id);
		System.out.println(followBean.getPageSize());
		return followMapper.findFollowed(followBean);
	}

	@Override
	public boolean Followother(Delete delete) {
		// TODO Auto-generated method stub
		return followMapper.insertFollowing(delete)>0;
	}


	


	

	

}
