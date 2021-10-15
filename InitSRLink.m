function SR=InitSRLink(K)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    SR=zeros(K,3);
    for i=1:K
        SR(i,1)=i;%中继编号
        SR(i,2)=1;%可用
        SR(i,3)=0;%增益
    end
end

