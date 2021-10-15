function RE=InitRELink(K,distance,e)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    RE=zeros(K,2);
    for i=1:K
        RE(i,1)=sqrt(power(distance(i,1),2)+power(e(1,1),2)-2*distance(i,1)*e(1,1)*cos(abs(distance(i,2)-e(1,2))));
        %计算窃听信道和中继信道的距离
        RE(i,2)=0;
    end
    
end

