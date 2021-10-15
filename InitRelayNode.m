function Node=InitRelayNode(K)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
       Node=zeros(K,1);
       for i=1:K
           Node(i,1)=i;
           Node(i,2)=0;%数据包个数
           Node(i,3)=0;%信任与否
       end
end

