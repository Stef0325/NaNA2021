function [SR,RD]=UpdateMainChannel(SR,Node,RD,K,distance,loss)
% 更新当前时刻主信道SR和RD链路对应的信噪比，并按照信噪比大小降序排序
%   此处显示详细说明
    for i=1:K
        if(SR(i,2)==1 &&Node(SR(i,1),3))
            SR(i,3)=(exprnd(1000)/power(distance(SR(i,1),3),loss));
            %我们的方案是当且仅当该链路可用且中继节点可信，对比方案则是只考虑节点是否可用
        else
            SR(i,3)=0;%若该链路不可用或中继节点不可信时，则不计算信噪比
        end
    end
    for j=1:K
        if(RD(j,2)==0)
            RD(j,3)=0;%若该链路不可用，则不计算信噪比
        end
        if(RD(j,2)==1)
            RD(j,3)=(exprnd(1000)/power(distance(RD(j,1),4),loss));
            %当且仅当该链路可用且中继节点可信，则获得该时刻的RD链路的信噪比
        end
    end
    SR=sortrows(SR,3,'descend');
    RD=sortrows(RD,3,'descend');%将SR链路和RD链路按照信噪比大小降噪排序
end

