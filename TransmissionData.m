function [SR,Node,RD]=TransmissionData(m,state,SR,Node,RD,L)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
    if(state==0)
        Node(m(1,1),2)=Node(m(1,1),2)+1;
    else
        Node(m(1,1),2)=Node(m(1,1),2)-1;
    end
     if(Node(m(1,1),2)==0)
        SR(m(1,2),2)=1;
        RD(m(1,3),2)=0;
    else
        if(Node(m(1,1),2)==L)
            SR(m(1,2),2)=0;
            RD(m(1,3),2)=1;
        else
            SR(m(1,2),2)=1;
            RD(m(1,3),2)=1;
        end
    end
end

