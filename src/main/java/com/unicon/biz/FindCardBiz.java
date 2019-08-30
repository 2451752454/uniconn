package com.unicon.biz;

import com.unicon.mapper.IFindCardMapper;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;

@Service
public class FindCardBiz {
    @Resource
    private IFindCardMapper iFindCardMapper;


}
