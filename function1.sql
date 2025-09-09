create function
  greeting () returns text as $$
  begin
return 'Hello SQL World';
end;
  $$ language plpgsql;

select greeting ();

-- Make Squre
create function
  make_squre (num int) returns int as $$
begin 
  return num * num;
end;  $$ language plpgsql;

select make_squre (12);

-- Get Full Name
create function
  get_full_name (first text, last text) returns text as $$
begin 
  return concat(first, ' ', last);
end;
  $$ language plpgsql;

select get_full_name ('Rahim', 'Badsha');

-- Get birth years
create function
  get_birth_year (birthdate date) returns int as $$
  begin 
  return date_part('year', age(birthdate));
end;
  $$ language plpgsql;

select get_birth_year ('2000-02-23');

-- Get birth years months days
create function
  get_old (birthdate date) returns text as $$
  declare
  years int;
  months int;
  days int;
begin
  years := extract(year from age(birthdate));
  months :=  extract(month from age(birthdate));
  days :=  extract(day from age(birthdate));

  return years || ' years ' || months || ' months ' || days || ' days' || '.';
  end;
$$ language plpgsql;

select get_old ('2002-07-12');