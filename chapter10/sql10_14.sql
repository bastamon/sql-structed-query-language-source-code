use db_business 
go
while (select AVG(���) from �ֿⱸ��)<6000
  begin
    update �ֿⱸ�� set ���=���+1000 where ����!='�ൺ'
    select MAX(���) as ���ֿ���� from �ֿⱸ��
    if (select max(���) from �ֿⱸ��)>4500
      break
    else
      continue
  end
  
   