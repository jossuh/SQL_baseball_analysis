--¿Cuál es el salario promedio de un jugador del año 1999?

	select round(avg(salary), 2) as salario_promedio
	from salaries
	where "yearID" = 1999;
	
--¿En qué año nacieron el/los jugador/es que más premios ha ganado?

	select
		master."playerID",
		master."birthYear",
		master."nameFirst",
		master."nameLast",
		count(awardsplayers."awardID") as total_premios
	from
		master
	join
		awardsplayers on master."playerID" = awardsplayers."playerID" 
	group by
		master."playerID", master."birthYear", master."nameFirst",
		master."nameLast" 
	order by
		total_premios desc 
	limit 5;

--¿Quien o quienes son los jugadores que tienen más Homeruns en la década de los 90’s y que nacieron fuera de los estados unidos?

	select 
		master."playerID" ,
		master."nameFirst" ,
		master."nameLast" ,
		sum(battingpost."HR") as total_homeruns
	from
		master
	join
		battingpost on master."playerID" = battingpost."playerID" 
	where
		battingpost."yearID" between 1990 and 1999
		and master."birthCountry" <> 'USA'
	group by 
		master."playerID" , master."nameFirst" , master."nameLast"
	order by 
		total_homeruns desc 
	limit 5;
	
--Para los jugadores que nacieron en la década de los 60’s, indicar por jugador cuantas bases se robaron.

   	select 
   		master."playerID" ,
   		master."nameFirst" ,
   		master."nameLast" ,
   		sum(battingpost."SB") as total_bases_robadas
   	from
   		master
   	join
   		battingpost on master."playerID" = battingpost."playerID" 
   	where 
   		master."birthYear" between 1960 and 1969
   	group by 
   		master."playerID" , master."nameFirst" , master."nameLast" 
   	order by 
   		total_bases_robadas desc ;
   		
--¿Cuál es el entrenador que más incentivo recibió durante la década de los 80’s? +
   	
   	select 
   		master."playerID" ,
   		master."nameFirst" ,
   		master."nameLast" ,
   		sum(
   			(managers."W" *15800)-
   			(managers."L" *10000)+
   			case 
   				when managers."rank" between 1 and 3 
   				then 0.25*((managers."W"*15800)-(managers."L"*10000))
   				when managers."rank" between 4 and 6 
   				then 0.10*((managers."W"*15800)-(managers."L"*10000))
   				else 0
   			end
   			) as total_incentivo	
   	from
   		managers
   	join
   		master on managers."playerID" = master."playerID" 
   	where 
   		managers."yearID" between 1980 and 1989
   	group by 
   		master."playerID" , master."nameFirst" , master."nameLast" 
   	order by 
   		total_incentivo desc;
   	
--Para el año 2015, consideran que hay una relación, que entre más salario ganan los jugadores, más hit realizan.
   	
   	with estatjugador as (
   		select 
   			salaries."playerID" ,
   			salaries.salary ,
   			batting."H" ,
   			rank() over (order by salaries.salary desc) as ranking_salario,
   			rank() over (order by batting."H" desc) as ranking_hits
   		from 
   			salaries
   		join
   			batting on salaries."playerID" = batting."playerID" 
   					and salaries."yearID" = batting."yearID" 
   		where 	
   			salaries."yearID" = 2015
   		)
   	select 
		estatjugador."playerID",
  	 	estatjugador.salary,
    	estatjugador."H",
    	estatjugador.ranking_salario,
    	estatjugador.ranking_hits
    from
    	estatjugador
    order by
    	estatjugador.ranking_hits