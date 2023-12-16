function df = xapxidaoham_hamso(f,h,pp,saiso,giatricantinh)
if pp == "Trung tâm"
        df = (f(giatricantinh+h)-f(giatricantinh-h))/(2*h);
end
if pp == "Tiến"
    if saiso == "Oh"
        df = (-f(giatricantinh)+f(giatricantinh+h))/h;
    end
    if saiso == "Oh2"
       df = (-3*f(giatricantinh)+4*f(giatricantinh+h)-f(giatricantinh+2*h))/(2*h);
    end
end
if pp == "Lùi"
    if saiso == "Oh"
        df = (f(giatricantinh)-f(giatricantinh-h))/h;
    end
    if saiso == "Oh2"
        df = (3*f(giatricantinh)-4*f(giatricantinh-h)+f(giatricantinh-2*h))/(2*h);
    end
end
end