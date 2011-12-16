Timepiece Vesper Plugin
=======================
> Assists in converting db date and time fields to and from usable elements.


display
-------
> Converts a Date, Time or DateTime object into a human readable string.

    >> d = DateTime.now
    >> d.display
	=> 'Thursday Dec 15, 2011'
	
	>> d.display(:date)
	=> 'Thursday Dec 15, 2011'
	
	>> d.display(:day)
	=> 'Dec 15, 2011'
	
	>> d.display(:day_with_time)
	=> 'Dec 15, 2011 at 11:51pm'
	
	>> d.display(:american_day)
	=> '12/15/11'


to_fields(select_field_name)
----------------------------
> Converts a Date, Time or DateTime object into form fields.

> Requires a select name argument. The generated select fields will end with _year, _month and _day.

	# This will generate 'my_date_year', 'my_date_month' and 'my_date_day'
    >> d = DateTime.now
	>> d.to_fields('my_date')
	=> "<select name='my_date_month' id='my_date_month'><option value='1' >1</option><option value='2' >2</option><option value='3' >3</option><option value='4' >4</option><option value='5' >5</option><option value='6' >6</option><option value='7' >7</option><option value='8' >8</option><option value='9' >9</option><option value='10' >10</option><option value='11' >11</option><option value='12' selected>12</option></select><select name='my_date_day' id='my_date_day'><option value='1' >1</option><option value='2' >2</option><option value='3' >3</option><option value='4' >4</option><option value='5' >5</option><option value='6' >6</option><option value='7' >7</option><option value='8' >8</option><option value='9' >9</option><option value='10' >10</option><option value='11' >11</option><option value='12' >12</option><option value='13' >13</option><option value='14' >14</option><option value='15' selected>15</option><option value='16' >16</option><option value='17' >17</option><option value='18' >18</option><option value='19' >19</option><option value='20' >20</option><option value='21' >21</option><option value='22' >22</option><option value='23' >23</option><option value='24' >24</option><option value='25' >25</option><option value='26' >26</option><option value='27' >27</option><option value='28' >28</option><option value='29' >29</option><option value='30' >30</option><option value='31' >31</option></select><select name='my_date_year' id='my_date_year'><option value='2007' >2007</option><option value='2008' >2008</option><option value='2009' >2009</option><option value='2010' >2010</option><option value='2011' selected>2011</option><option value='2012' >2012</option><option value='2013' >2013</option><option value='2014' >2014</option></select>"


from_fields(year, month, day)
-----------------------------
> Converts a year, month and day string into a database DateTime object.

> This example is based on the fields generated in the above 'to_fields' example, as if they were passed from a form.

    >> Date.from_fields(params[:my_date_year], params[:my_date_month], params[:my_date_day])
	=> 2011-12-15 12:00:00 -0500