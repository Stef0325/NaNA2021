function  e= InitEavesLocation(radius)
%初始化窃听节点的位置
%   此处显示详细说明
    e=zeros(1,2);
    e(1,1)=unifrnd(radius/2+5,radius);
    %第一行第一列为窃听节点的距离
    e(1,2)=unifrnd(0,2*pi);
    %第一行第二列为窃听节点的角度
end

