function Node = UpdateFaith(K,FD,Node)
%更新该时刻中继节点与源节点之间的信任度
%   
    for i=1:K
        x=unifrnd(0,1);
        if(x<=FD(i,1))
            Node(i,3)=1;%该时刻中继的信任度为1
        else
            Node(i,3)=0;%该时刻中继的信任度为0
        end
    end
end

