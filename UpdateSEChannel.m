function SE = UpdateSEChannel(SE,loss)
%更新此时源节点和窃听节点之间的位置关系和链路
%   此处显示详细说明
    SE(1,2)=(exprnd(sqrt(10))/power(SE(1,1),loss));
end

