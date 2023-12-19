function [dx] = tinhxapxidaoham(mangX,mangY,giatricantinh,pp)
h = abs(mangX(1)-mangX(2));
index = (giatricantinh-mangX(1))/h+1;
index = int16(index);
if pp == "Trung tâm"
    dx = (mangY(index+1)-mangY(index-1))/(2*h);
elseif pp == "Tiến"
    dx = (-mangY(index)+mangY(index+1))/(h);
else
    dx = (mangY(index)-mangY(index-1))/(h);
end
end