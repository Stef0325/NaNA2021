function RE = UpdateREChannel(RE,K,loss)
%更新此时中继节点和窃听节点之间的位置关系和链路
%   此处显示详细说明
    for i=1:K
        RE(i,2)=(exprnd(sqrt(10))/power(RE(i,1),loss));
    end
end

