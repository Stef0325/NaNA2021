function RD=InitRDLink(K)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    RD=zeros(K,3);
    for i=1:K
        RD(i,1)=i;%中继编号
        RD(i,2)=0;%可用状态
        RD(i,3)=0;%增益
    end
end

