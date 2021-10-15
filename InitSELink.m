function SE=InitSELink(e,radius)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
    SE(1,1)=sqrt(power(radius,2)+power(e(1,1),2)+2*e(1,1)*radius*cos(e(1,2)));
    %计算源节点和窃听节点的距离
    SE(1,2)=0;
end

