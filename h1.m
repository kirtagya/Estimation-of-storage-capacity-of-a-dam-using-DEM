I=imread('Watershed_DEM.tif');
h=1256;
Id=double(I);
[m,n,o]=size(Id);
for i=1:m
    for j=1:n
        if Id(i,j)<h & Id(i,j)~=0
            V(i,j)=(h-Id(i,j))*30*30;
            A(i,j)=30*30;
        else 
            V(i,j)=0;
            A(i,j)=0;
        end
    end
end
Volume=sum(V,'all')
Area=sum(A,'all')