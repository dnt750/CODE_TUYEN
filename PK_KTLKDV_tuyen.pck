create or replace package PK_KTLKDV_tuyen is

  -- Author  : TUYEN
  -- Created : 2023/11/25 14:42:41
  -- Purpose : IR23-0052: Kiem tra LK dau vao
-----------------------------------------
  PROCEDURE Getdata_mst_cmbTypeAdd(data out sys_refcursor
                                   
                                   );
                                   
  FUNCTION CREATEMA (v_c_type IN VARCHAR2) RETURN VARCHAR ;
  PROCEDURE Getdata_M_COMMON_LKDV(data        out sys_refcursor,
                                  v_c_knrkbn1 IN VARCHAR);

  PROCEDURE INS_M_COMMONLKDV(
                             
                             v_c_type    varchar2,
                             v_c_item_vn nvarchar2,
                             v_c_item_jp nvarchar2,
                             v_c_msnv    varchar2,
                             v_c_rowid   varchar2,
                             kq          out number);
                             
 --MH MASTER : LKDVMSTG004
  PROCEDURE Getdata_mail365(data out sys_refcursor);

  PROCEDURE Getdata_m_user_lkdv(data out sys_refcursor);
  PROCEDURE Get_m_user_lkdv_chucvu(                         
                             data       out sys_refcursor                 
                             ) ;
                             
  PROCEDURE F_m_user_lkdv (data             out sys_refcursor,
                          v_c_msnv   IN VARCHAR,
                          v_c_hoten   IN VARCHAR,
                          v_c_chucvu IN VARCHAR
                  
                          );                   
   PROCEDURE INS_M_USER_LKDV(

                              v_c_user           varchar2,
                              v_c_name    nvarchar2,
                              v_c_position  varchar2,
                              v_c_mail varchar2, 
                              v_c_note    nvarchar2 ,      
                    
                              v_c_msnv    varchar2 ,                               
                              kq               out number);
                              

  procedure DELETE_M_COMMONLKDV (v_rowid  varchar2,
                               v_c_msnv varchar2,
                               kq       out number);           
                                                       
    PROCEDURE Getdata_v_m_bhnszimst(                         
                             data       out sys_refcursor                 
                             );

 PROCEDURE Get_m_dklk_lkdv(                         
                             data       out sys_refcursor                 
                             );

  PROCEDURE Getcmb_m_common_lkdv(                         
                             data       out sys_refcursor       ,
                             v_c_knrkbn1    varchar2 ,      
                             v_c_knrkbn2   varchar2                       
                             );
                             
 PROCEDURE Getcmb_maLK(                         
                             data       out sys_refcursor                      
                             );
                             
 PROCEDURE Getcmb_TenLK(                         
                             data       out sys_refcursor,       
                              v_c_bhnszicod  VARCHAR         
                             );
                             
  PROCEDURE Getcmb_NCC(                         
                             data       out sys_refcursor                                                   
                             );                            
                             
     PROCEDURE Getcmb_nhomLK(                         
                             data       out sys_refcursor       ,
                             v_c_knrkbn1    varchar2 ,      
                             v_c_knrkbn2   varchar2 , 
                             v_c_type   varchar2             --nhomLK        
                             );                            
                             
/*   PROCEDURE Getcmb_m_dklk_lkdv(data  out sys_refcursor,
                                data1 out sys_refcursor,
                                data2 out sys_refcursor);
*/     
 
  PROCEDURE Getcmb_m_dklk_lkdv(                         
                             data       out sys_refcursor       ,
                             data1       out sys_refcursor , 
                             data2       out sys_refcursor                              ) ;   
                             
PROCEDURE Getcmb_nhomLK_TK(                         
                             data       out sys_refcursor       ,  
                             v_c_type IN varchar2   
                             );      
                                                                
PROCEDURE Getcmb_M_DKLK_TenLK(                         
                             data       out sys_refcursor,       
                              v_c_component_code  VARCHAR         
                             );
 PROCEDURE F_LKDVMSTG002 (data            out sys_refcursor,
                           v_c_type  IN nvarchar2,
                          v_c_component_gr IN varchar2,                   
                           v_c_component_code  IN varchar2,
                           v_c_component_name       IN varchar2,                    
                           v_d_tungay      IN varchar2,
                           v_d_denngay     IN varchar2) ;           
 
   PROCEDURE Getcmb_maLK_TK(                         
                             data       out sys_refcursor       ,  
                              v_c_type IN varchar2  ,
                             v_c_component_gr IN varchar2                          
                             );
                             
    PROCEDURE Load_m_dklk_lkdv(                         
                             data       out sys_refcursor                 
                             ) ;
      PROCEDURE INS_m_dklk_lkdv   
                         (    
                           v_l_regis_code IN VARCHAR,   
                            v_c_type IN varchar2,   
                           v_c_type_check IN nvarchar2,   
                           v_c_component_gr IN nvarchar2,   
                           v_c_component_code IN VARCHAR,   
                           v_c_component_name IN VARCHAR,   
                           v_c_picture_code IN VARCHAR,   
                           v_c_picture_shape  IN nvarchar2,   
                           v_c_gqics_code IN VARCHAR,   
                           v_c_gqics_shape IN nvarchar2,    
                           v_c_suplier IN VARCHAR,    
                           v_c_drawing IN nvarchar2,    
                           v_l_size1 IN VARCHAR,    
                           v_l_tolerance1_up IN VARCHAR,    
                           v_l_tolerance1_down IN VARCHAR,    
                           v_l_size2 IN VARCHAR,    
                           v_l_tolerance2_up IN VARCHAR,    
                           v_l_tolerance2_down IN VARCHAR,    
                           v_l_size3 IN VARCHAR,    
                           v_l_tolerance3_up IN VARCHAR,    
                           v_l_tolerance3_down IN VARCHAR,    
                           v_l_size4 IN VARCHAR,    
                           v_l_tolerance4_up IN VARCHAR,    
                           v_l_tolerance4_down IN VARCHAR,    
                           v_l_size5 IN VARCHAR,    
                           v_l_tolerance5_up IN VARCHAR,    
                           v_l_tolerance5_down IN VARCHAR,    
                           v_l_size6 IN VARCHAR,    
                           v_l_tolerance6_up IN VARCHAR,    
                           v_l_tolerance6_down IN VARCHAR,    
                           v_l_congso IN VARCHAR,    
                           v_c_lotok IN VARCHAR,    
                           v_c_note IN nvarchar2,   
                          v_mapct  IN VARCHAR,    
                          v_c_gencyogyosyanam IN VARCHAR,  
                           v_c_user_udate IN VARCHAR,     
                            v_dt_start_date IN VARCHAR,
                            v_dt_finish_date     IN VARCHAR,     
                              v_dt_sxhl     IN VARCHAR,                                         
                            kq               out number   
                          );
  
 PROCEDURE F_m_dklk_lkdv (data             out sys_refcursor,
                         v_c_type  IN  nvarchar2,
                          v_c_component_code  IN varchar2,
                          v_c_component_name IN varchar2                 
                          );
                          

 PROCEDURE GetcmbMST001_maLK_TK(                         
                             data       out sys_refcursor  ,                      
                              v_c_type IN varchar2  );
                             
                             
/*  PROCEDURE Getcmb_TenLK_TK(                         
                             data       out sys_refcursor,
                             data1       out sys_refcursor,           
                              v_c_bhnszicod  VARCHAR         
                             ) ;*/
   PROCEDURE Getcmb_TenLK_TK(                         
                             data       out sys_refcursor,
                             v_c_type       VARCHAR ,        
                              v_c_bhnszicod  VARCHAR         
                             ); 
                             
  PROCEDURE Getcmb_TenLK_TK_2  (                         
                             data       out sys_refcursor,
                             v_c_type       VARCHAR ,   
                              v_c_component_gr VARCHAR ,   
                              v_c_component_code  VARCHAR         
                             ) ;             
                             
 PROCEDURE SP_GETMAX_MA( v_c_type IN VARCHAR, kq out varchar ) ;

 PROCEDURE F_m_common_lkdv (data             out sys_refcursor,
                         v_c_type  IN VARCHAR   
                          ) ;

   PROCEDURE Getdata_Chucvu(                         
                             data       out sys_refcursor         ,
                              v_c_knrkbn1 IN VARCHAR       
                             );
    PROCEDURE Getcmb_m_user_TK(                         
                             data       out sys_refcursor     , 
                             data1       out sys_refcursor                                                  
                             ) ;
PROCEDURE Getcmb_hoten_TK(                         
                             data       out sys_refcursor,       
                              v_c_user  VARCHAR         
                             );

  procedure DELETE_M_USER (
                               v_c_user varchar2,
                                 v_c_msnv varchar2,
                               kq       out number);
                               
    PROCEDURE Getdata_hpa (                         
                             data       out sys_refcursor                 
                             );       
    PROCEDURE Get_t_actualresult_lkdv(                         
                             data       out sys_refcursor                 
                             );                          
    procedure DELETE_m_dklk_lkdv (
                               v_c_component_code varchar2,
                               v_l_regis_code varchar2,                            
                               v_c_msnv varchar2,
                               kq       out number) ;                                                  
    
    
 
                                              
end PK_KTLKDV_tuyen;
/
create or replace package body PK_KTLKDV_tuyen is

  -- Author  : TUYEN
  -- Created : 2023/11/25 14:42:41
  -- Purpose : IR23-0052: Kiem tra LK dau vao
  --------------
  --LKDVMSTG003: MH master dung chung 
 
      PROCEDURE Getdata_mst_cmbTypeAdd(                         
                             data       out sys_refcursor
                  
                             ) is
 
  BEGIN

  OPEN data FOR   
  SELECT DISTINCT M1.C_KNRKBN2 || ':' || M1.C_KNRNIY as c_type, C_KNRKBN2 as c_ma
  FROM M_UNYKNR M1
  WHERE M1.C_KNRKBN1 = 'MASTER_LKDV'
  ORDER BY c_type;     
 
  END;
  
    PROCEDURE Getdata_M_COMMON_LKDV(                         
                             data       out sys_refcursor         ,
                              v_c_knrkbn1 IN VARCHAR       
                             ) is
   c_knrkbn1_ VARCHAR2(200) := null;
  BEGIN
  if v_c_knrkbn1 is NULL then
      c_knrkbn1_ := '%';
    else
      c_knrkbn1_ := v_c_knrkbn1;
    end if; 
  OPEN data FOR   
    SELECT DISTINCT M1.C_KNRKBN2 || ':' || M1.C_KNRNIY as c_type, 
    c_item_vn, c_item_jp, m2.rowid,  C_KNRKBN2, c_ma
  FROM M_UNYKNR M1
  left join  m_common_lkdv m2 
  on m1.c_knrkbn2 = m2.c_type
 where m1.c_knrkbn1 =c_knrkbn1_  -- 'MASTER_LKDV'
  ORDER BY C_KNRKBN2,c_item_vn ; 
 
  END;
  --------------------------------
   FUNCTION CREATEMA (v_c_type IN VARCHAR2) RETURN VARCHAR IS
    kq       VARCHAR(20) := NULL;
    temp_      NUMBER := 0;
  BEGIN
    SELECT nvl(max(to_number(c_ma)), 0) + 1 into temp_  
    FROM m_common_lkdv T
    where t.c_type =v_c_type;
    
    if (length (to_char(temp_)) <4 and length (to_char(temp_)) >=3 ) then
        kq :='0'||temp_;
    else
        if (length (to_char(temp_)) <3 and length (to_char(temp_)) >=2 ) then
        kq :='00'||temp_;
        else
          
             if length (to_char(temp_)) < 2 then
                kq :='000'||temp_;
            end if;
         end if;
    end if;
     RETURN kq;
   end;
   ---------------------
  PROCEDURE INS_M_COMMONLKDV(
--v_c_type, v_c_item_vn, v_c_item_jp, v_c_msnv, v_c_rowid
                            v_c_type           varchar2,
                            v_c_item_vn    nvarchar2,
                            v_c_item_jp  nvarchar2,
                            v_c_msnv varchar2, 
                            v_c_rowid    varchar2 ,              
                            kq               out number) is

    COUNT_ NUMBER(5) := 0;
     MA_NEW  VARCHAR(20) := NULL;
  BEGIN

    SELECT COUNT(*)
      INTO COUNT_
      FROM m_common_lkdv t
     where t.c_item_vn = v_c_item_vn
       And t.c_type = v_c_type
       and t.rowid is not null;

    kq := 0;
    IF COUNT_ = 0 THEN
      
      MA_NEW := CREATEMA(v_c_type);
      
            insert into m_common_lkdv
              (c_type, c_item_vn, c_item_jp, c_ma , c_user_udate, dt_date_update)
            values
              (v_c_type, v_c_item_vn, v_c_item_jp,MA_NEW,  v_c_msnv, sysdate); 
                commit;
                 kq := 1;
                 
                 --ghi history
                    INSERT INTO t_history_common_lkdv
          (c_type, c_item_vn, c_item_jp, c_ma, c_user_udate, dt_date)
                  values
              (v_c_type, v_c_item_vn, v_c_item_jp,MA_NEW, v_c_msnv,sysdate ); 
            
      ELSE
        
          --1.backup m_common_lkdv -> t_history_common_lkdv
             INSERT INTO t_history_common_lkdv
                (c_type, c_item_vn, c_item_jp, c_ma, c_user_udate, dt_date_update, dt_date)
                   (
                  select c_type, c_item_vn, c_item_jp,c_ma,  v_c_msnv, sysdate, dt_date_update
                   from m_common_lkdv m
                   WHERE m.c_type = v_c_type
                   and m.c_item_vn = v_c_item_vn
                   );
        --2.update du lieu
               update m_common_lkdv t
                 set 
                    c_type = v_c_type,
                    c_item_vn = v_c_item_vn,
                     c_item_jp = v_c_item_jp,
                     c_user_udate = v_c_msnv,
                     dt_date_update = sysdate
               where t.rowid  = v_c_rowid;  
                      commit;
                       kq := 2;              
         
    END IF;

  END INS_M_COMMONLKDV;
  
 ------------------------
 
procedure DELETE_M_COMMONLKDV (
                              v_rowid  varchar2,
                               v_c_msnv varchar2,
                               kq       out number) as
    exit_ number := 1;
  begin
    kq := 0;
  
    SELECT COUNT(*) INTO exit_ FROM m_common_lkdv m
     where m.rowid = v_rowid;
  
    if exit_ > 0 then
      --backup 
      INSERT INTO t_history_common_lkdv
  (c_type, c_item_vn, c_item_jp, c_note, c_ma, c_user_udate, dt_date_update,dt_date )

        (
        select c_type, c_item_vn, c_item_jp,'delete', c_ma,v_c_msnv, sysdate, dt_date_update
         from m_common_lkdv m
         WHERE m.rowid = v_rowid     
         );
         
    --xoa
      DELETE FROM m_common_lkdv m WHERE m.rowid = v_rowid; 
      commit;
      kq := 1; -- xoa
    
    ELSE
      kq := 2;
    END IF;
  end DELETE_M_COMMONLKDV; 
  ------------------------
  PROCEDURE F_m_common_lkdv (data             out sys_refcursor,
                         v_c_type  IN VARCHAR   
                          ) is
  
    STRSQL VARCHAR(4000) := NULL;
  BEGIN
  
    STRSQL := ' SELECT DISTINCT '''' CHECK_DELETE,M.C_TYPE || '':'' ||M1.C_KNRNIY C_TYPE, 
    M.C_ITEM_VN,M.C_ITEM_JP,
M.C_USER_UDATE,TO_CHAR(M.DT_DATE_UPDATE,''yyyy/MM/dd hh24:mi:ss'') DT_DATE_UPDATE
,M.ROWID  ,
M.C_TYPE as C_KNRKBN2,  c_ma                    
FROM M_COMMON_LKDV M
INNER JOIN M_UNYKNR M1                        
ON M.C_TYPE=M1.C_KNRKBN2     
AND M1.C_KNRKBN1= ''MASTER_LKDV''   
and  1=1';
  
    IF v_c_type IS NOT NULL THEN
      STRSQL := STRSQL || '  and M.C_TYPE || '':'' ||M1.C_KNRNIY = ''' || v_c_type || '''';
    END IF; 
 
    STRSQL := STRSQL ||  '  ORDER BY M.C_TYPE || '':'' ||M1.C_KNRNIY, M.C_ITEM_VN   ';
    
    OPEN data FOR STRSQL;
  END F_m_common_lkdv;  
  
 --------------------------------
 ---***---
 
 --LKDVMSTG004: MH dang luc mail nhan vien tham tra
 
   PROCEDURE Getdata_Chucvu(                         
                             data       out sys_refcursor         ,
                              v_c_knrkbn1 IN VARCHAR       
                             ) is
   c_knrkbn1_ VARCHAR2(200) := null;
  BEGIN
  if v_c_knrkbn1 is NULL then
      c_knrkbn1_ := '%';
    else
      c_knrkbn1_ := v_c_knrkbn1;
    end if; 
  OPEN data FOR   

 SELECT DISTINCT M1.C_KNRKBN2 || ':' || M1.C_KNRNIY as c_type, 
    C_KNRKBN2, C_KNRNIY
  FROM M_UNYKNR M1
where m1.c_knrkbn1 =  c_knrkbn1_   --'POSITION_LKDV' 
  ORDER BY C_KNRKBN2;
  END;
 -----------------------

  PROCEDURE Getdata_hpa (                         
                             data       out sys_refcursor                 
                             ) is
 
  BEGIN

  OPEN data FOR   
          select distinct d.employeeid,  d.fullnameen
                From hpa_tblemployee@pxc.pxc d
               where d.terminatedate is null
               order by  d.employeeid;
 
  END;
  --------------
   PROCEDURE Getdata_mail365(                         
                             data       out sys_refcursor                 
                             ) is
 
  BEGIN

  OPEN data FOR   
  select distinct 
                      t.c_社員番号 as c_user,
                        t.c_英字名 || ' ' || t.c_英字ミドル || ' ' || t.c_英字姓 as c_name,                        
                        CASE WHEN   t. c_役職名  =  '課長 （現地スタッフ）' THEN '01'
                        when t. c_役職名  in (  '課長 （現地スタッフ）', '課長代理 （現地スタッフ）') THEN '05'                           
                        when t. c_役職名  in (   '主任 (現地スタッフ) ' ,  '主任 (現地スタッフ)', '主任 （現地スタッフ）' ) THEN '04'                          
                       when t. c_役職名  =   'Staff' THEN '02'
                     else t. c_役職名    END AS c_position,                   
                      t.c_グローバルid as c_mail,
                       t.C_BUMON as C_BUMON
        from t_mail365@pxc.pxc  t
        left join dp_department_name@pxc.pxc  t2
          on t.c_bumon = t2.code
       where
       t.c_社員番号 not in
             (select distinct d.employeeid
                From hpa_tblemployee@pxc.pxc d, 
                T_MAIL365@pxc.pxc  t
               where d.employeestatusid = 20
                 and d.employeeid = t.c_社員番号)
          
       order by  t.c_社員番号;
 
  END;

--------------------------------------------
PROCEDURE Getdata_m_user_lkdv(                         
                             data       out sys_refcursor                 
                             ) is
 
  BEGIN

  OPEN data FOR   
  select distinct c_user, c_name, c_position, c_mail, c_note, c_user_update, dt_date_update, c_flag , 
  c_user || ':' || c_name as c_msnv
  from m_user_lkdv
  order by  c_user;
  
  end;

-----------------------
    PROCEDURE Getcmb_m_user_TK(                         
                             data       out sys_refcursor     , 
                             data1       out sys_refcursor                                                  
                             ) is
  
  BEGIN

  OPEN data FOR   
        select distinct c_user
          from   m_user_lkdv m
          where m.c_flag = 0 
          order by c_user;
          
   OPEN data1 FOR   
          select distinct u.c_position || ':' ||  m.c_knrniy as c_knrniy , u.c_position as c_position
            from   m_user_lkdv u ,m_unyknr m
            where u.c_position = m.c_knrkbn2
            and m.c_knrkbn1 ='POSITION_LKDV'
            and u.c_flag = 0 
            order by c_position;
  
  END;
  ------------------------------


PROCEDURE Get_m_user_lkdv_chucvu(                         
                             data       out sys_refcursor                 
                             ) is
 
  BEGIN

  OPEN data FOR   
  select distinct c_position, c_position || ':' ||  m.c_knrniy as c_chucvu
 
  from m_user_lkdv u, m_unyknr m 
  where u.c_position = m.c_knrkbn2
  and m.c_knrkbn1 = 'POSITION_LKDV'
  and u.c_flag =0
  order by  c_position;
  end;

-----------------------
  PROCEDURE F_m_user_lkdv (data             out sys_refcursor,
                          v_c_msnv   IN VARCHAR,
                          v_c_hoten   IN VARCHAR,
                          v_c_chucvu IN VARCHAR
                  
                          ) is
  
    STRSQL VARCHAR(4000) := NULL;
  BEGIN

  
    STRSQL := ' select DISTINCT '''' CHECK_DELETE, c_user, c_name, 
    u.c_position || '':'' ||   m.c_knrniy as c_knrniy, c_mail,
     c_note, c_user_update, dt_date_update, c_position   
        from m_user_lkdv u ,  m_unyknr m 
     where  u.c_position = m.c_knrkbn2
       and m.c_knrkbn1 = ''POSITION_LKDV''
     and u.c_flag = 0

and  1=1';
  
    IF v_c_msnv IS NOT NULL THEN
      STRSQL := STRSQL || ' and u.c_user  = ''' || v_c_msnv || '''';
    END IF;
  
IF v_c_hoten IS NOT NULL THEN
      STRSQL := STRSQL || ' and u.c_name  = ''' || v_c_hoten || '''';
    END IF;
    
    IF v_c_chucvu IS NOT NULL THEN
      STRSQL := STRSQL || ' and u.c_position  = ''' || v_c_chucvu || '''';
    END IF;
  
 
    STRSQL := STRSQL ||   ' order by c_user';
           
    OPEN data FOR STRSQL;
  END F_m_user_lkdv;
  -----------------------------
   PROCEDURE INS_M_USER_LKDV(
--v_c_user , v_c_name , v_c_position, v_c_mail, v_c_note, v_c_msnv , v_c_bumon
                              v_c_user           varchar2,
                              v_c_name    nvarchar2,
                              v_c_position  varchar2,
                              v_c_mail varchar2, 
                              v_c_note    nvarchar2 ,                               
                              v_c_msnv    varchar2 ,                               
                              kq               out number) is

      COUNT_ NUMBER(5) := 0;
      COUNT_XOA NUMBER(5) := 0;
    BEGIN

      SELECT COUNT(*)
        INTO COUNT_
        FROM m_user_lkdv t
       where c_user = v_c_user;

    SELECT COUNT(*)
        INTO COUNT_XOA
        FROM m_user_lkdv t
       where c_user = v_c_user
       and c_flag = 1;
       
      kq := 0;
      IF COUNT_ = 0 THEN
         if COUNT_XOA = 0 THEN
              insert into m_user_lkdv
              (c_user, c_name, c_position, c_mail, c_note,  c_user_update, dt_date)
            values
              (v_c_user, v_c_name, v_c_position, v_c_mail, v_c_note,  v_c_msnv, sysdate);
            commit;
             kq := 1;
         else
              update m_user_lkdv
             set 
                 c_name = v_c_name,
                 c_position = v_c_position,
                 c_mail = v_c_mail,
                 c_note = v_c_note,
                 c_user_update = v_c_msnv,
                 dt_date_update = sysdate,         
                 c_flag = 0
           where c_user = v_c_user;

          commit;
           kq := 2;
         end if     ;    
           
        ELSE
           if COUNT_XOA = 0 THEN
               update m_user_lkdv
             set 
                 c_name = v_c_name,
                 c_position = v_c_position,
                 c_mail = v_c_mail,
                 c_note = v_c_note,
                 c_user_update = v_c_msnv,
                 dt_date_update = sysdate
   
                  
           where c_user = v_c_user;
          commit;
           kq := 2;
           else
                 update m_user_lkdv
             set 
                 c_name = v_c_name,
                 c_position = v_c_position,
                 c_mail = v_c_mail,
                 c_note = v_c_note,
                 c_user_update = v_c_msnv,
                 dt_date_update = sysdate,
      
                  c_flag = 0
           where c_user = v_c_user;
          commit;
           kq := 2;
           end if;
        
      END IF;

    END INS_M_USER_LKDV;
-------------------------

  procedure DELETE_M_USER (
                               v_c_user varchar2,
                                 v_c_msnv varchar2,
                               kq       out number) as
    exit_ number := 1;
  begin
    kq := 0;
  
    SELECT COUNT(*) INTO exit_ 
    FROM m_user_lkdv m
     where m.c_user = v_c_user;
  
    if exit_ > 0 then
   
    --xoa
    update m_user_lkdv
       set 
           c_user_update = v_c_msnv,
           dt_date_update = sysdate,
           c_flag = 1 
     where c_user = v_c_user;    
   
      commit;
      kq := 1; -- xoa
    
    ELSE
      kq := 2;
    END IF;
  end DELETE_M_USER; 
---------------------------------- 
---***---

--LKDVMSTG001:  MH dang ki kiem tra linh kien

    PROCEDURE Getdata_v_m_bhnszimst(                         
                             data       out sys_refcursor                  
                             ) is
 
  BEGIN

  OPEN data FOR   
select c_bhnbri, c_bhnszicod, c_bhndsnnam, l_tublen, c_dsnsiz, c_dsnjiiro, c_dsnstripe, c_tkssencod, 
c_syktni, c_bhntnieng, l_tjylenhta, l_tjylenoev, l_bhnkopsuu, c_bhnkoptni, l_minlotsuu, c_minlottni, 
l_jpntnk, l_usatnk, c_hrikbn, c_strumu, l_minosdknbsuu, l_allknbsuu, l_allknbsuujpn, l_allknbsuubhn, 
l_dayknbsuu, l_lasknbnum, l_lasknbnumhjk, l_lasknbnumjpn, l_lasknbnumbhn, c_ngskbn, d_dsntnk, 
l_radtimnsu, c_genkbn, d_bhnknytnk, c_knymei, l_allknbsuubhnoev, l_lasknbnumbhnoev, l_idolblseq, 
c_gencyogyosyacod, c_gencyogyosyanam, l_gencyotnk, l_suu_nf, c_partner, c_signal 
from m_bhnszimst;
  
  END;
  ------------------

   procedure DELETE_m_dklk_lkdv (
                               v_c_component_code varchar2,
                               v_l_regis_code varchar2,                                                       
                               v_c_msnv varchar2,
                               kq       out number) as
    exit_ number := 1;
    exit_actualresult number := 1;

  begin
    kq := 0;


  
    SELECT COUNT(*) INTO exit_ 
    FROM m_dklk_lkdv m
     where m.c_component_code = v_c_component_code
and m.l_regis_code =v_l_regis_code;
        
    if exit_ > 0 then
      
     select COUNT(*) INTO exit_actualresult
  from t_actualresult_lkdv t
  where t.c_component_code = v_c_component_code
and t.l_regis_code =v_l_regis_code
and rownum <2;

       if exit_actualresult = 0 then --ko co thuc tich thi cho delete
         --backup qua t_history_dklk_lkdv
              
          insert into t_history_dklk_lkdv
  ( d_ngay, l_regis_code, c_type_check, c_component_gr, c_component_code, c_component_name, c_picture_code, c_picture_shape,
   c_gqics_code, c_gqics_shape, c_suplier, c_drawing,
    l_size1, l_tolerance1_up, l_tolerance1_down, l_size2, l_tolerance2_up, l_tolerance2_down,
     l_size3, l_tolerance3_up, l_tolerance3_down, l_size4, l_tolerance4_up, l_tolerance4_down, 
     l_size5, l_tolerance5_up, l_tolerance5_down, l_size6, l_tolerance6_up, l_tolerance6_down, 
     dt_start_date, dt_finish_date, c_mapct, c_lotok, c_note, 
     c_user, dt_date, c_user_udate, dt_date_update, l_congso, c_comment ) 


        ( select substr(l_regis_code, 1,8) ,  l_regis_code, c_type_check,c_component_gr, c_component_code,    c_component_name,   c_picture_code,  c_picture_shape,
             c_gqics_code, c_gqics_shape, c_suplier,c_drawing,
             l_size1, l_tolerance1_up,  l_tolerance1_down, l_size2, l_tolerance2_up,   l_tolerance2_down,
             l_size3,  l_tolerance3_up,  l_tolerance3_down,   l_size4,   l_tolerance4_up,  l_tolerance4_down,
             l_size5,  l_tolerance5_up, l_tolerance5_down, l_size6, l_tolerance6_up, l_tolerance6_down,
             dt_start_date, dt_finish_date,  c_mapct,   c_lotok, c_note,
             '',  '', c_user_udate, dt_date_update ,l_congso,  'delete'||v_c_msnv
              from m_dklk_lkdv
            where c_component_code = v_c_component_code       
             and l_regis_code = v_l_regis_code);
             commit;   
             
   /*       insert into t_history_dklk_lkdv
            ( l_regis_code, c_type_check, c_component_gr, c_component_code, c_component_name, 
            c_picture_code, c_picture_shape, c_gqics_code, c_gqics_shape, c_suplier, c_drawing, 
            l_size1, l_tolerance1_up, l_tolerance1_down, l_size2, l_tolerance2_up, l_tolerance2_down,
             l_size3, l_tolerance3_up, l_tolerance3_down, l_size4, l_tolerance4_up, l_tolerance4_down, 
             l_size5, l_tolerance5_up, l_tolerance5_down, l_size6, l_tolerance6_up, l_tolerance6_down,
              dt_start_date, dt_finish_date, c_mapct, c_lotok, c_note, c_user_udate, dt_date_update,  l_congso, 
              dt_date, c_user)
              
            (select l_regis_code, c_type_check, c_component_gr, c_component_code, c_component_name, 
            c_picture_code, c_picture_shape, c_gqics_code, c_gqics_shape, c_suplier, c_drawing,
             l_size1, l_tolerance1_up, l_tolerance1_down, l_size2, l_tolerance2_up, l_tolerance2_down,
              l_size3, l_tolerance3_up, l_tolerance3_down, l_size4, l_tolerance4_up, l_tolerance4_down,
               l_size5, l_tolerance5_up, l_tolerance5_down, l_size6, l_tolerance6_up, l_tolerance6_down,
                dt_start_date, dt_finish_date, c_mapct, c_lotok, c_note, v_c_msnv, sysdate, l_congso , 
                dt_date_update, c_user_udate
                
            from m_dklk_lkdv t
            where t.c_component_code = v_c_component_code
            and t.l_regis_code =v_l_regis_code
            );
             commit;*/
             
              --xoa
          delete m_dklk_lkdv
           where c_component_code = v_c_component_code
             and l_regis_code = v_l_regis_code;
             commit;
         else
       kq := 3;  --da co thuc tich, ko duoc xoa
      end if;      
 
      kq := 1; -- xoa
    
    ELSE
      kq := 2; --ko co dl m_dklk_lkdv
    END IF;
  end DELETE_m_dklk_lkdv;  
  --------------------------
   PROCEDURE Getcmb_TenLK(                         
                             data       out sys_refcursor,       
                              v_c_bhnszicod  VARCHAR         
                             ) is
  c_bhnszicod_ VARCHAR2(100);
  BEGIN
 if v_c_bhnszicod is null then
      c_bhnszicod_ := '%';
    else
      c_bhnszicod_ := v_c_bhnszicod;
    end if;
    
  OPEN data FOR   
select distinct  c_bhndsnnam,c_bhnszicod
  from m_bhnszimst m
  where m.c_bhnszicod like c_bhnszicod_
  order by c_bhndsnnam;
  END;
  ------------------------------
  PROCEDURE Getcmb_TenLK_TK(                         
                             data       out sys_refcursor,
                  --           data1       out sys_refcursor,    
                             v_c_type       VARCHAR ,        
                              v_c_bhnszicod  VARCHAR         
                             ) is
                             
 c_type_ VARCHAR2(100);
  c_bhnszicod_ VARCHAR2(100);
  BEGIN
    
 if v_c_type is null then
      c_type_ := '%';
    else
      c_type_ := v_c_type;
    end if;
    
 if v_c_bhnszicod is null then
      c_bhnszicod_ := '%';
    else
      c_bhnszicod_ := v_c_bhnszicod;
    end if;
    
  OPEN data FOR   
select distinct  c_component_name, c_component_code
  from m_dklk_lkdv m
  where m.c_type like c_type_
  and m.c_component_code like c_bhnszicod_
  and m.dt_finish_date is null
  order by c_component_name;
  
/*   OPEN data1 FOR   
select distinct  c_component_name, c_component_code
  from m_dklk_lkdv m
  where m.c_type like c_type_
 and m.c_component_code like c_bhnszicod_  
  order by c_component_name;
  */
  END;
 ------------------------- 
/*       PROCEDURE Getcmb_nhomLK_TK(                         
                             data       out sys_refcursor  ,
                             v_c_type   varchar2          
                             ) is
 c_type_ VARCHAR2(100);
  BEGIN

 if v_c_type is null then
      c_type_ := '%';
    else
      c_type_ := v_c_type;
    end if;
    
    
     OPEN data FOR   
 select distinct t.c_component_gr
             from m_dklk_lkdv t
             where t.c_type like c_type_
             order by t.c_component_gr;
 
  END;*/
  --------------------
  PROCEDURE Getcmb_TenLK_TK_2  (                         
                             data       out sys_refcursor,
                             v_c_type       VARCHAR ,   
                              v_c_component_gr VARCHAR ,   
                              v_c_component_code  VARCHAR         
                             ) is
                             
c_type_ VARCHAR2(100);
c_component_code_ VARCHAR2(100);
c_component_gr_ VARCHAR2(100);
    
  BEGIN
    
 if v_c_type is null then
      c_type_ := '%';
    else
      c_type_ := v_c_type;
    end if;
  
 if v_c_component_gr is null then
      c_component_gr_ := '%';
    else
      c_component_gr_ := v_c_component_gr;
    end if; 
   
 if v_c_component_code is null then
      c_component_code_ := '%';
    else
      c_component_code_ := v_c_component_code;
    end if;
    
  OPEN data FOR   
select distinct  c_component_name, c_component_code
  from m_dklk_lkdv m
  where m.c_type like c_type_
  and m.c_component_gr like c_component_gr_
  and m.c_component_code like c_component_code_
  order by c_component_name;

  END;
--------------------------------

PROCEDURE Get_m_dklk_lkdv(                         
                             data       out sys_refcursor                 
                             ) is
 
  BEGIN

  OPEN data FOR   
select  to_char(dt_start_date, 'yyyy/MM/dd') dt_start_date , 
to_char(dt_finish_date,'yyyy/MM/dd') dt_finish_date,
l_regis_code, c_component_code, c_component_name, 
c_type_check, c_component_gr,    c_lotok , c_type,
c_picture_code, c_picture_shape, c_gqics_code, c_gqics_shape, c_suplier, m.c_gencyogyosyanam as c_gencyogyosyanam,   c_drawing,
 l_size1, l_tolerance1_up, l_tolerance1_down, l_size2, l_tolerance2_up, l_tolerance2_down, 
 l_size3, l_tolerance3_up, l_tolerance3_down, l_size4, l_tolerance4_up, l_tolerance4_down,
  l_size5, l_tolerance5_up, l_tolerance5_down,
  l_size6, l_tolerance6_up, l_tolerance6_down,
c_note, c_user_udate, dt_date_update 
from m_dklk_lkdv t
left join m_bhnszimst m
on t.c_component_code = m.c_bhnszicod
 order by dt_start_date, c_component_code;
 
 END;
----------------------------------
  --v_c_knrkbn1 , v_c_knrkbn2
  PROCEDURE Getcmb_m_common_lkdv(                         
                             data       out sys_refcursor       ,
                             v_c_knrkbn1    varchar2 ,      
                             v_c_knrkbn2   varchar2                       
                             ) is

  BEGIN
 
  if v_c_knrkbn2 is not null then
     OPEN data FOR   
              select c_knrkbn2,  t.c_item_vn, t.c_item_jp, c_knrkbn1, c_knrniy,  c_ma as c_type
             from M_COMMON_LKDV t
             left join m_unyknr m
             on t.c_type = m.c_knrkbn2
            where  m.c_knrkbn1 =v_c_knrkbn1
             and m.c_knrkbn2 =v_c_knrkbn2
             order by t.c_item_vn;
 else
    OPEN data FOR   
          select m.c_knrkbn2, m.c_knrniy
             from  m_unyknr m        
            where  m.c_knrkbn1 =v_c_knrkbn1 --'PCT_LKDV'
            order by c_knrkbn2;
         
    end if;

  
  END;
  ------------------------
  
    PROCEDURE Getcmb_nhomLK(                         
                             data       out sys_refcursor       ,
                             v_c_knrkbn1    varchar2 ,      
                             v_c_knrkbn2   varchar2 , 
                             v_c_type   varchar2             --nhomLK        
                             ) is

  BEGIN

     OPEN data FOR   
              select distinct c_knrkbn2,  t.c_item_vn
             from M_COMMON_LKDV t
             left join m_unyknr m
             on t.c_type = m.c_knrkbn2
              where  m.c_knrkbn1 =v_c_knrkbn1--'MASTER_LKDV'
             and m.c_knrkbn2 =v_c_knrkbn2 --01
             and c_type = v_c_type -- 01
             order by c_item_vn;
 
  END;
  -----------------

------------------------------
 PROCEDURE F_m_dklk_lkdv (data             out sys_refcursor,
                         v_c_type  IN  nvarchar2,
                          v_c_component_code  IN varchar2,
                          v_c_component_name IN varchar2
                  
                          ) is
  
    STRSQL VARCHAR(4000) := NULL;
  BEGIN
  
    STRSQL := ' select  distinct '''' check_delete,  to_char(dt_start_date , ''yyyy/MM/dd hh24:mi:ss'') dt_start_date ,          dt_finish_date,               
       to_char(l_regis_code) as l_regis_code,       c_type_check,              
       c_component_gr,    c_component_code,        c_component_name,                     
       c_picture_code,    c_gqics_code,   c_drawing ,       
       c_suplier,t.c_gencyogyosyanam ,         l_congso  ,      c_lotok,          
        c_picture_shape,                
            c_gqics_shape,     
       l_size1,          l_tolerance1_up,          l_tolerance1_down,               
       l_size2,        l_tolerance2_up,     l_tolerance2_down,                   
       l_size3,          l_tolerance3_up,          l_tolerance3_down,              
       l_size4,         l_tolerance4_up,         l_tolerance4_down,               
       l_size5,       l_tolerance5_up,      l_tolerance5_down,                    
       l_size6,        l_tolerance6_up,        l_tolerance6_down,                            
       c_note,              
        t.c_user_udate,        to_char(t.dt_date_update,''yyyy/MM/dd hh24:mi:ss'') dt_date_update,  
            to_char(t.dt_sxhl, ''yyyy/MM/dd'')  dt_sxhl,   
        C_MAPCT  , t.c_type
  FROM m_dklk_lkdv t 
  where   t.dt_finish_date is null  
and 1=1';

    IF v_c_type IS NOT NULL THEN
      STRSQL := STRSQL || ' and t.c_type = ''' || v_c_type || '''';
    END IF;
  
    IF v_c_component_code IS NOT NULL THEN
      STRSQL := STRSQL || ' and t.c_component_code  = ''' || v_c_component_code || '''';
    END IF;
  
   IF v_c_component_name IS NOT NULL THEN
      STRSQL := STRSQL || ' and t.c_component_name  = ''' || v_c_component_name || '''';
    END IF;
 
    STRSQL := STRSQL ||  '   order by dt_start_date,   c_type_check,  c_component_gr,  c_component_code     ';
    OPEN data FOR STRSQL;
  END F_m_dklk_lkdv;
  --   STRSQL := STRSQL || ' and t.c_type|| '':'' ||c.c_ma  = ''' || v_c_type || '''';
-------------------------------------------

      PROCEDURE INS_m_dklk_lkdv   
                         (    
                           v_l_regis_code IN VARCHAR,   
                           v_c_type IN varchar2,   
                           v_c_type_check IN nvarchar2,   
                           v_c_component_gr IN nvarchar2,   
                           v_c_component_code IN VARCHAR,   
                           v_c_component_name IN VARCHAR,   
                           v_c_picture_code IN VARCHAR,   
                           v_c_picture_shape  IN nvarchar2,   
                           v_c_gqics_code IN VARCHAR,   
                           v_c_gqics_shape IN nvarchar2,    
                           v_c_suplier IN VARCHAR,    
                           v_c_drawing IN nvarchar2,    
                           v_l_size1 IN VARCHAR,    
                           v_l_tolerance1_up IN VARCHAR,    
                           v_l_tolerance1_down IN VARCHAR,    
                           v_l_size2 IN VARCHAR,    
                           v_l_tolerance2_up IN VARCHAR,    
                           v_l_tolerance2_down IN VARCHAR,    
                           v_l_size3 IN VARCHAR,    
                           v_l_tolerance3_up IN VARCHAR,    
                           v_l_tolerance3_down IN VARCHAR,    
                           v_l_size4 IN VARCHAR,    
                           v_l_tolerance4_up IN VARCHAR,    
                           v_l_tolerance4_down IN VARCHAR,    
                           v_l_size5 IN VARCHAR,    
                           v_l_tolerance5_up IN VARCHAR,    
                           v_l_tolerance5_down IN VARCHAR,    
                           v_l_size6 IN VARCHAR,    
                           v_l_tolerance6_up IN VARCHAR,    
                           v_l_tolerance6_down IN VARCHAR,    
                           v_l_congso IN VARCHAR,    
                           v_c_lotok IN VARCHAR,    
                           v_c_note IN nvarchar2,   
                          v_mapct  IN VARCHAR,    
                            v_c_gencyogyosyanam IN VARCHAR,    
                           v_c_user_udate IN VARCHAR,     
                            v_dt_start_date IN VARCHAR,     
                             v_dt_finish_date     IN VARCHAR,     
                                     v_dt_sxhl     IN VARCHAR,                                                      
                            kq               out number   
                          ) is    
    
    COUNT_ NUMBER(5) := 0;    
     dt_start_date_ VARCHAR2(100);
     dt_finish_date_ VARCHAR2(100);
 
  BEGIN   
    
    SELECT COUNT(*)   
      INTO COUNT_   
      FROM m_dklk_lkdv t    
      where  t.c_component_code = v_c_component_code    
    and  to_char(t.dt_start_date,'yyyy/MM/dd') = v_dt_start_date
and  t.dt_finish_date is null;

   
    kq := 0;    
    IF COUNT_ = 0 THEN    
           
     if v_dt_start_date is null or v_dt_start_date ='' then
          dt_start_date_ := '';
    else
            if v_dt_start_date = to_char(sysdate , 'yyyy/MM/dd')    then
               dt_start_date_ := sysdate;
            else
               dt_start_date_ := v_dt_start_date;
            end if;
    end if;
    
     if v_dt_finish_date is null or v_dt_finish_date ='' then
          dt_finish_date_ := '';
    else
           if v_dt_finish_date = to_char(sysdate , 'yyyy/MM/dd') then
              dt_finish_date_ := sysdate;
          else
              dt_finish_date_ := v_dt_finish_date;
          end if;
    end if;
              
          insert into t_history_dklk_lkdv
  ( d_ngay, l_regis_code, c_type_check, c_component_gr, c_component_code, c_component_name, c_picture_code, c_picture_shape,
   c_gqics_code, c_gqics_shape, c_suplier, c_drawing,
    l_size1, l_tolerance1_up, l_tolerance1_down, l_size2, l_tolerance2_up, l_tolerance2_down,
     l_size3, l_tolerance3_up, l_tolerance3_down, l_size4, l_tolerance4_up, l_tolerance4_down, 
     l_size5, l_tolerance5_up, l_tolerance5_down, l_size6, l_tolerance6_up, l_tolerance6_down, 
     dt_start_date, dt_finish_date, c_mapct, c_lotok, c_note, 
     c_user, dt_date, c_user_udate, dt_date_update, l_congso, c_gencyogyosyanam, c_comment,  DT_SXHL ) 

        ( select substr(l_regis_code, 1,8) ,  l_regis_code, c_type_check,c_component_gr, c_component_code,    c_component_name,   c_picture_code,  c_picture_shape,
             c_gqics_code, c_gqics_shape, c_suplier,c_drawing,
             l_size1, l_tolerance1_up,  l_tolerance1_down, l_size2, l_tolerance2_up,   l_tolerance2_down,
             l_size3,  l_tolerance3_up,  l_tolerance3_down,   l_size4,   l_tolerance4_up,  l_tolerance4_down,
             l_size5,  l_tolerance5_up, l_tolerance5_down, l_size6, l_tolerance6_up, l_tolerance6_down,
             dt_start_date, dt_finish_date,  c_mapct,   c_lotok, c_note,
             c_user_udate,  dt_date_update, '', '' ,l_congso,c_gencyogyosyanam,  'insert', DT_SXHL
              from m_dklk_lkdv
            where c_component_code = v_c_component_code    
             and l_regis_code = v_l_regis_code);
             commit;    
    
    --insert new
         insert into m_dklk_lkdv   
        (   
        l_regis_code, c_type_check, c_type, c_component_gr, c_component_code, c_component_name,     
        c_picture_code, c_picture_shape,    
        c_gqics_code, c_gqics_shape, c_suplier, c_drawing, l_size1, l_tolerance1_up, l_tolerance1_down,     
        l_size2, l_tolerance2_up, l_tolerance2_down, l_size3, l_tolerance3_up, l_tolerance3_down,   
         l_size4, l_tolerance4_up, l_tolerance4_down,     
        l_size5, l_tolerance5_up, l_tolerance5_down, l_size6, l_tolerance6_up, l_tolerance6_down,   
          c_note, C_MAPCT, c_lotok,
         l_congso,   c_gencyogyosyanam,  c_user_udate, dt_start_date, dt_finish_date   ,dt_date_update   
       ,DT_SXHL  )   
      values    
        (   
           v_l_regis_code ,   
                                 v_c_type_check ,  
                                  v_c_type ,
                                 v_c_component_gr ,   
                                 v_c_component_code ,   
                                 v_c_component_name ,   
                                 v_c_picture_code ,   
                                 v_c_picture_shape  ,   
                                 v_c_gqics_code ,   
                                 v_c_gqics_shape ,    
                                 v_c_suplier ,    
                                 v_c_drawing ,    
                                 v_l_size1 ,    
                                 v_l_tolerance1_up ,    
                                 v_l_tolerance1_down ,    
                                 v_l_size2 ,    
                                 v_l_tolerance2_up ,    
                                 v_l_tolerance2_down ,    
                                 v_l_size3 ,    
                                 v_l_tolerance3_up ,    
                                 v_l_tolerance3_down ,    
                                 v_l_size4 ,    
                                 v_l_tolerance4_up ,    
                                 v_l_tolerance4_down ,    
                                 v_l_size5 ,    
                                 v_l_tolerance5_up ,    
                                 v_l_tolerance5_down ,    
                                 v_l_size6 ,    
                                 v_l_tolerance6_up ,    
                                 v_l_tolerance6_down ,                       
                                 v_c_note ,   
                                v_mapct  ,    
                                v_c_lotok,
                                v_l_congso,
                                v_c_gencyogyosyanam,
                                 v_c_user_udate ,     
                              sysdate, dt_finish_date_, sysdate    ,  v_dt_sxhl
        );    
               commit;
             
                  kq := 1;     
                   
      ELSE     
         if v_dt_start_date is null or v_dt_start_date ='' then
          dt_start_date_ := '';
    else
            if v_dt_start_date <> to_char(sysdate , 'yyyy/MM/dd')    then
         
               dt_start_date_ := v_dt_start_date;
               else
                  dt_start_date_ := to_char(sysdate , 'yyyy/MM/dd');
            end if;
    end if;
    
     if v_dt_finish_date is null or v_dt_finish_date ='' then
          dt_finish_date_ := '';
    else
           if v_dt_finish_date = to_char(sysdate , 'yyyy/MM/dd') then
              dt_finish_date_ := sysdate;
          else
              dt_finish_date_ := v_dt_finish_date;
          end if;
    end if;    
        --update
          insert into t_history_dklk_lkdv
  ( d_ngay, l_regis_code, c_type_check, c_component_gr, c_component_code, c_component_name, c_picture_code, c_picture_shape,
   c_gqics_code, c_gqics_shape, c_suplier, c_drawing,
    l_size1, l_tolerance1_up, l_tolerance1_down, l_size2, l_tolerance2_up, l_tolerance2_down,
     l_size3, l_tolerance3_up, l_tolerance3_down, l_size4, l_tolerance4_up, l_tolerance4_down, 
     l_size5, l_tolerance5_up, l_tolerance5_down, l_size6, l_tolerance6_up, l_tolerance6_down, 
     dt_start_date, dt_finish_date, c_mapct, c_lotok, c_note, 
     c_user, dt_date, c_user_udate, dt_date_update, l_congso, c_gencyogyosyanam, c_comment, dt_sxhl  ) 


        ( select substr(l_regis_code, 1,8) ,  l_regis_code, c_type_check,c_component_gr, c_component_code,    c_component_name,   c_picture_code,  c_picture_shape,
             c_gqics_code, c_gqics_shape, c_suplier,c_drawing,
             l_size1, l_tolerance1_up,  l_tolerance1_down, l_size2, l_tolerance2_up,   l_tolerance2_down,
             l_size3,  l_tolerance3_up,  l_tolerance3_down,   l_size4,   l_tolerance4_up,  l_tolerance4_down,
             l_size5,  l_tolerance5_up, l_tolerance5_down, l_size6, l_tolerance6_up, l_tolerance6_down,
             dt_start_date, dt_finish_date,  c_mapct,   c_lotok, c_note,
             '',  '', c_user_udate, dt_date_update ,l_congso,c_gencyogyosyanam,   'update',dt_sxhl
              from m_dklk_lkdv
            where c_component_code = v_c_component_code
             and l_regis_code = v_l_regis_code);
             
             commit;   


                    update m_dklk_lkdv
                    set 
                   c_type_check = v_c_type_check,
                     c_type = v_c_type,
                   c_component_gr = v_c_component_gr,
                --  c_component_code = v_c_component_code,
                   c_component_name = v_c_component_name,
                   c_picture_code = v_c_picture_code,
                   c_picture_shape = v_c_picture_shape,
                   c_gqics_code = v_c_gqics_code,
                   c_gqics_shape = v_c_gqics_shape,
                   c_suplier = v_c_suplier,
                   c_drawing = v_c_drawing,
                   l_size1 = v_l_size1,
                   l_tolerance1_up = v_l_tolerance1_up,
                   l_tolerance1_down = v_l_tolerance1_down,
                   l_size2 = v_l_size2,
                   l_tolerance2_up = v_l_tolerance2_up,
                   l_tolerance2_down = v_l_tolerance2_down,
                   l_size3 = v_l_size3,
                   l_tolerance3_up = v_l_tolerance3_up,
                   l_tolerance3_down = v_l_tolerance3_down,
                   l_size4 = v_l_size4,
                   l_tolerance4_up = v_l_tolerance4_up,
                   l_tolerance4_down = v_l_tolerance4_down,
                   l_size5 = v_l_size5,
                   l_tolerance5_up = v_l_tolerance5_up,
                   l_tolerance5_down = v_l_tolerance5_down,
                   l_size6 = v_l_size6,
                   l_tolerance6_up = v_l_tolerance6_up,
                   l_tolerance6_down = v_l_tolerance6_down,            
                   c_note = v_c_note,
                   c_lotok = v_c_lotok,
                     l_congso = v_l_congso,
                  c_gencyogyosyanam = v_c_gencyogyosyanam,
                   c_user_udate = v_c_user_udate,
                   dt_date_update = sysdate,
                   C_MAPCT = v_mapct,
                   dt_finish_date = dt_finish_date_,
                     dt_sxhl = v_dt_sxhl
             where c_component_code = v_c_component_code
               and to_char (dt_start_date, 'yyyy/MM/dd') = dt_start_date_
               and l_regis_code = v_l_regis_code;
         --      and dt_finish_date is null;               
               commit;
   
               kq := 2; 
         

    END IF;   
    
  END INS_m_dklk_lkdv;  

--------------------------------
---***---
 
--LKDVMSTG002: MH xem ki luc: 
------------

 PROCEDURE Getcmb_maLK(                         
                             data       out sys_refcursor                                                   
                             ) is
  
  BEGIN

  OPEN data FOR   
select distinct c_bhnszicod, c_bhndsnnam
  from m_bhnszimst
  order by c_bhnszicod;
  END;
--------------
/* PROCEDURE Getcmb_maLK_TK(                         
                             data       out sys_refcursor                                                   
                             ) is
  
  BEGIN

  OPEN data FOR   
select distinct m.c_component_code, m.c_component_name
  from   m_dklk_lkdv m 
  order by c_component_code;
  END;*/
  ---------------------
 PROCEDURE GetcmbMST001_maLK_TK(                         
                             data       out sys_refcursor  ,
                
                              v_c_type IN varchar2  
                             
                             ) is
                             
c_type_ VARCHAR2(100);

  BEGIN

 if v_c_type is null then
      c_type_ := '%';
    else
      c_type_ := v_c_type;
    end if;
    
  
    OPEN data FOR           
                select  distinct  c_component_code 
             from m_dklk_lkdv m
             where m.c_type like c_type_
             and m.dt_finish_date is null
             order by c_component_code;

  END GetcmbMST001_maLK_TK;
-------------------------------

 PROCEDURE Getcmb_NCC(                         
                             data       out sys_refcursor                                                   
                             ) is
  
  BEGIN

  OPEN data FOR   
select distinct m.c_gencyogyosyacod,  c_gencyogyosyanam
  from m_bhnszimst m
  where m.c_gencyogyosyanam is not null
  order by c_gencyogyosyanam;
  END;
------------------------------
  PROCEDURE Load_m_dklk_lkdv(                         
                             data       out sys_refcursor                 
                             ) is
 
  BEGIN

  OPEN data FOR   
 select  '' check_delete, dt_start_date,          dt_finish_date,               
      l_regis_code,       c_type_check,              
       c_component_gr,    c_component_code,        c_component_name,                     
       c_picture_code,      c_picture_shape,                
       c_gqics_code,       c_gqics_shape,    c_lotok,           
       c_suplier, m.c_gencyogyosyanam ,      c_drawing,              
       l_size1,          l_tolerance1_up,          l_tolerance1_down,               
       l_size2,        l_tolerance2_up,     l_tolerance2_down,                   
       l_size3,          l_tolerance3_up,          l_tolerance3_down,              
       l_size4,         l_tolerance4_up,         l_tolerance4_down,               
       l_size5,       l_tolerance5_up,      l_tolerance5_down,                    
       l_size6,        l_tolerance6_up,        l_tolerance6_down,                          

         c_note,              
       t.c_user_udate,        t.dt_date_update,    C_MAPCT    , l_congso ,c_ma
  FROM m_dklk_lkdv t      , m_bhnszimst m  ,  m_common_lkdv c
      where t.dt_finish_date is null
        and t.c_component_code = m.c_bhnszicod      
           and t.c_type_check = c.c_item_vn
      order by t.dt_start_date,   c_type_check,  c_component_gr,  c_component_code    ;    
 
 END; 
 -------------------------

  PROCEDURE Getcmb_m_dklk_lkdv(                         
                             data       out sys_refcursor       ,
                              data1       out sys_refcursor , 
                             data2       out sys_refcursor   
 
                              )  is
                             
 
  BEGIN
  --data
    OPEN data FOR  
    --LKDVMSTG001: dt_finish_date is null
  select  distinct  c_type_check, m.c_type
             from m_dklk_lkdv m , m_common_lkdv c
             where   c.c_ma = m.c_type       
             and m.dt_finish_date is null     
             order by c_type_check;
             
  --data1
   --LKDVMSTG002
    OPEN data1 FOR  
   select  distinct  c_type_check, m.c_type
             from m_dklk_lkdv m , m_common_lkdv c
             where   c.c_ma = m.c_type            
             order by c_type_check;
             
  --data2
    OPEN data2 FOR                   
             select  distinct  c_component_code   
             from m_dklk_lkdv
             order by c_component_code;  
             
  END Getcmb_m_dklk_lkdv;
  
  ----------------
   PROCEDURE Getcmb_nhomLK_TK(                         
                             data       out sys_refcursor       ,  
                             v_c_type IN varchar2   ) 
                             is
                             
  c_type_ VARCHAR2(100);
 
  BEGIN

 if v_c_type is null then
      c_type_ := '%';
    else
      c_type_ := v_c_type;
    end if;
    
    OPEN data FOR           
                select  distinct  c_component_gr 
             from m_dklk_lkdv m
             where m.c_type like c_type_
             order by c_component_gr;
  
  END Getcmb_nhomLK_TK;
  
  ----------------------
   PROCEDURE Getcmb_maLK_TK(                         
                             data       out sys_refcursor  ,
                              v_c_type IN varchar2  ,
                             v_c_component_gr IN varchar2                          
                             ) is
                             
c_type_ VARCHAR2(100);
c_component_gr_ VARCHAR2(100);
 
  BEGIN

 if v_c_type is null then
      c_type_ := '%';
    else
      c_type_ := v_c_type;
    end if;
    
   if v_c_component_gr is null then
      c_component_gr_ := '%';
    else
      c_component_gr_ := v_c_component_gr;
    end if;
      
    OPEN data FOR           
                select  distinct  c_component_code 
             from m_dklk_lkdv m
             where (m.c_type like c_type_ and ( m.c_component_gr like c_component_gr_ or m.c_component_gr  is null))
            
             order by c_component_code;
             
  END Getcmb_maLK_TK;
----------------------------
PROCEDURE Getcmb_M_DKLK_TenLK(                         
                             data       out sys_refcursor,       
                              v_c_component_code  VARCHAR         
                             ) is
  c_component_code_ VARCHAR2(50);
  BEGIN
 if v_c_component_code is null then
      c_component_code_ := '%';
    else
      c_component_code_ := v_c_component_code;
    end if;
    
  OPEN data FOR   
 select  distinct  c_component_name, c_component_code     
   from m_dklk_lkdv m     
  where m.c_component_code = c_component_code_
  order by c_component_name;
  
  END;

-------------------------
--v_c_type , v_c_component_gr, v_c_component_code, v_c_component_name ,v_d_tungay  ,v_d_denngay
 PROCEDURE F_LKDVMSTG002 (data            out sys_refcursor,
                           v_c_type  IN nvarchar2,
                          v_c_component_gr IN varchar2,                   
                           v_c_component_code  IN varchar2,
                           v_c_component_name       IN varchar2,                    
                           v_d_tungay      IN varchar2,
                           v_d_denngay     IN varchar2) 
                           is
    STRSQL VARCHAR(4000) := NULL;
  BEGIN
 
  STRSQL := ' select distinct  '''' check_delete,  to_char(dt_start_date , ''yyyy/MM/dd hh24:mi:ss'') dt_start_date , 
    to_char(dt_finish_date , ''yyyy/MM/dd hh24:mi:ss'')  dt_finish_date,               
       to_char(l_regis_code) as l_regis_code,       c_type_check,              
       c_component_gr,    c_component_code,        c_component_name,                     
       c_picture_code,    c_gqics_code,   c_drawing ,       
       c_suplier, t.c_gencyogyosyanam ,         l_congso  ,      c_lotok,          
        c_picture_shape,                
            c_gqics_shape,     
         l_size1,          l_tolerance1_up,          l_tolerance1_down,               
       l_size2,        l_tolerance2_up,     l_tolerance2_down,                   
       l_size3,          l_tolerance3_up,          l_tolerance3_down,              
       l_size4,         l_tolerance4_up,         l_tolerance4_down,               
       l_size5,       l_tolerance5_up,      l_tolerance5_down,                    
       l_size6,        l_tolerance6_up,        l_tolerance6_down,    
          c_note,              
        t.c_user_udate,        to_char(t.dt_date_update,''yyyy/MM/dd hh24:mi:ss'') dt_date_update,    
       to_char(t.dt_sxhl, ''yyyy/MM/dd'')  dt_sxhl,  
        C_MAPCT , t.c_type
  FROM m_dklk_lkdv t 

where 1=1      ';         

    --    to_char(t.dt_sxhl, ''yyyy/MM/dd'')  dt_sxhl,    
          IF v_c_type IS NOT NULL THEN
      STRSQL := STRSQL || '  t.c_type  = ''' || v_c_type || '''';
    END IF;
    
       IF v_c_component_gr IS NOT NULL THEN
      STRSQL := STRSQL || 'and t.c_component_gr  = ''' || v_c_component_gr || '''';
    END IF;
    
  
    IF v_c_component_code IS NOT NULL THEN
      STRSQL := STRSQL || ' and t.c_component_code  = ''' || v_c_component_code || '''';
    END IF;
  
    IF v_c_component_name IS NOT NULL THEN
      STRSQL := STRSQL || ' and t.c_component_name   = ''' || v_c_component_name || '''';
    END IF;  
 
    IF v_d_tungay IS NOT NULL AND v_d_denngay IS NULL THEN
      STRSQL := STRSQL || ' and t.dt_start_date >=''' || v_d_tungay || '''';
      
    ELSIF v_d_tungay IS NULL AND v_d_denngay IS NOT NULL THEN
      STRSQL := STRSQL || ' and t.dt_finish_date <=''' || v_d_denngay || '''';
      
    ELSIF v_d_tungay IS NOT NULL AND v_d_denngay IS NOT NULL THEN
      STRSQL := STRSQL || ' and t.dt_start_date between ''' || v_d_tungay ||
                ''' and  ''' || v_d_denngay || '''';
    END IF;
  
    STRSQL := STRSQL || ' order by dt_start_date , l_regis_code, c_component_code  ';
    OPEN data FOR STRSQL;
 
  END F_LKDVMSTG002; 

 -------------------------
 
 ------------------  
 PROCEDURE SP_GETMAX_MA( v_c_type IN VARCHAR, kq out varchar ) AS
    temp_ number := 0;
   
  BEGIN

    select nvl(max(to_number(c_ma)), 0) + 1
      into temp_
      from m_common_lkdv m
     where m.c_type  =v_c_type;
    
if (length (to_char(temp_)) <3 and length (to_char(temp_)) >=2 ) then
        kq :='0'||temp_;
else
     if length (to_char(temp_)) <2 then
        kq :='00'||temp_;
    end if;
end if;
    END;
  ---------------------------
 
---select c_user, c_name, c_position, c_mail, c_note, c_user_update, dt_date_update, c_flag, dt_date from m_user_lkdv
----------
PROCEDURE Getcmb_hoten_TK(                         
                             data       out sys_refcursor,       
                              v_c_user  VARCHAR         
                             ) is
  c_user_ VARCHAR2(100);
  BEGIN
 if v_c_user is null then
      c_user_ := '%';
    else
      c_user_ := v_c_user;
    end if;
    
  OPEN data FOR   
select distinct c_name,  c_user 
  from   m_user_lkdv m 
  where m.c_user like c_user_
  and m.c_flag = 0
  order by c_user;
  END; 
 -------------------------------- 

 PROCEDURE Get_t_actualresult_lkdv(                         
                             data       out sys_refcursor                 
                             ) is
 
  BEGIN

  OPEN data FOR   
select c_component_code , l_regis_code
 from t_actualresult_lkdv
 order by l_regis_code, c_component_code;
 
 END;
 ------------------------- 

 




------------------  
end PK_KTLKDV_tuyen;
/
