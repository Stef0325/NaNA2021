function distance=InitRelayLocation(K,radius)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    distance=zeros(K,4);
    R=zeros(1,K);
    Angle=zeros(1,K);
    for i=1:K
        R(1,i)=unifrnd(0,radius/2-5);
        Angle(1,i)=unifrnd(0,2*pi);
    end
    for z=1:K
        distance(z,1)=R(1,z);%中继距离中心的距离
        distance(z,2)=Angle(1,z);%中继与中心所成角度
        distance(z,3)=sqrt(power(radius,2)+power(distance(z,1),2)+2*distance(z,1)*radius*cos(distance(z,2)));%中继与源节点
        distance(z,4)=sqrt(power(radius,2)+power(distance(z,1),2)-2*distance(z,1)*radius*cos(distance(z,2)));%中继与目的节点
    end
    
end

