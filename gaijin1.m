clc;
close all;
clear all;


for j=1:10
 for i=10:5:50
    Accuracy_0(j,i/5-1)=DV0(200,i,20,0.3);
 Accuracy_1(j,i/5-1)=DVc(200,i,20,0.3);   
  if mean(Accuracy_0(j,i/5-1))>1|mean(Accuracy_1(j,i/5-1))>1
    break; %�Ƚ϶��ߵ�׼ȷ�ȣ�����Ľ�ǰ��׼ȷ�ȱȸĽ���ĸ��ߣ�����ѭ��
  end
 end 
  if j==1
    Accuracy0=Accuracy_0;
    Accuracy1=Accuracy_1;
  else
          Accuracy0=[Accuracy0;Accuracy_0];
    Accuracy1=[Accuracy1;Accuracy_1];
  end
end
 
errorr0=mean(Accuracy0);
errorr1=mean(Accuracy1);
figure(3)
plot(10:5:50,errorr0,'r');
hold on
plot(10:5:50,errorr1,'b');
xlabel('�ű�ڵ����');
ylabel('Accuracy');
title('�Ľ������ֵ����')
legend('?????','?????');