create procedure insertuser(in username varchar(20),in firstname varchar(20),out successFlag smallint)
begin
    declare exit handler
    for sqlexception
    set successFlag=0;
    insert into users
    values(
      null,
      username,
      firstname
    );
    set successFlag=1; 
end