function [cap,flag]=CalCapacity(m,state,P,SR,RD,SE,RE,TC)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    if(state==0)
        SRSNR=P*SR(m(1,2),3);
        SESNR=P*SE(1,2);
        cap=log2(1+SRSNR)-log2(1+SESNR);
    else
        RDSNR=P*RD(m(1,3),3);
        RESNR=P*RE(m(1,1),2);
        cap=log2(1+RDSNR)-log2(1+RESNR);
    end
    if(cap>=TC)
        flag=1;
    else
        flag=0;
    end 
end

