Addendums Vesper Plugin
=======================
> Adds useful extensions to Ruby and Sinatra


active(path)
------------
> Adds a class of 'active' to an element that matches the page url.

	>> <a href="#" class="<%= active '/home' %>">Home</a>
	=> <a href="#" class="active">Home</a>


alert
-----
> Displays an alert message div.

> Note: Will only display on the next page load.

	>> session[:flash] = 'Your message here.' # Before page loads, usually in a route the redirects
	>> <%= alert => # In your view or layout
	=> "<div id='alert'>Your message here.</div>"


hidden
------
> Hides an element.

> Note: Works will with if/unless (hidden unless @var.empty?).

	>> <div style="<%= hidden %>">Content to hide</div>


dollarize
---------
> Converts a number to a dollar

> Note: This isn't a currency conversion, it's only a string.

	>> 1.dollarize
	=> '$1.00'


even?
-----
> Returns true if a number is even.

	>> 2.even?
	=> true


odd?
----
> Returns true if a number is odd.

	>> 2.even?
	=> false


truncate_to_decimal(dec = 1)
----------------------------
> Truncates a number to a float (The standard truncate methods returns an integer).

> The dec argument determines how many digits to leave after the decimal; it defaults to 1.

> Note: Removes trailing 0s.

	>> 1.234.truncate_to_decimal 2
	=> 1.23


titleize
--------
> Capitalizes the first letter of each word in a string.

	>> 'This is a title'.titleize
	=> 'This Is A Title'


truncate(word_count = 100, end_string = '...')
----------------------------------------------
> Truncates by word count (not letter).

	>> 'One Two Three Four Five'.truncate 3
	=> 'One Two Three...'