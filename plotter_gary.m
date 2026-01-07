
v= VideoReader('"C:\Users\zivsh\OneDrive - mail.tau.ac.il\uni\מעבדה\ג1\טומוגרפיה קוונטית\ZIV AND TOMER PART 1\25 bit measurments.mp4"');
for i=1:1:30
frame = read(v,i);

%pcolor(frame(400:633,910:1220,1))
D2(i)=sum(sum(frame(400:633,910:1220,1)));
%D2(i)=sum(sum(frame(406:647,461:785,1)));
shading flat
%plot(frame(200,:,1))
%[M,I] = max(frame(200,:,1));
%x(i)=I;
%shading flat
%pause(0.05)
%colorbar
i
end
1

plot(D2) 


pcolor(frame(:,:,1))
shading flat