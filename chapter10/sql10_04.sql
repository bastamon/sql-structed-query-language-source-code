declare @yz real,@w int  --��������
set @w=120               --Ϊ������ֵ
 if @w<=100              --if�������
   begin                 --Begin�����
     set @yz=@w*0.12     --Ϊ������ֵ
   end
 else
   begin
     set @yz=100*0.12+(@w-100)*0.05
   end
 /*����ʼ����������ʷ�*/
 print '�ʼ��������ǣ�'+cast(@w as varchar(20))+'��'
 print '�ʷ��ǣ�'+cast(@yz as varchar(20))+'Ԫ'


    










