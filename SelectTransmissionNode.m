function [m,state]=SelectTransmissionNode(SR,RD)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    m=zeros(1,3);
    if(SR(1,3)>RD(1,3))
        m(1,1)=SR(1,1);
        m(1,2)=1;
        m(1,3)=find(RD(:,1)==m(1,1));
        state=0;
    else
        m(1,1)=RD(1,1);
        m(1,2)=find(SR(:,1)==m(1,1));
        m(1,3)=1;
        state=1;
    end
end

