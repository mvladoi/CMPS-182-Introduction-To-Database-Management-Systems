-- Sample Script file to Populate a BEERS DB
-- print out the current time
SELECT timeofday();
-- Populate the tables
COPY Beers FROM stdin USING DELIMITERS '|';
Coors|Adolph Coors
Coors Lite|Adolph Coors
Miller|Miller Brewing
Miller Lite|Miller Brewing
MGD|Miller Brewing
Bud|Anheuser-Busch
Bud Lite|Anheuser-Busch
Michelob|Anheuser-Busch
Anchor Steam|Anchor Brewing
\.
COPY Bars FROM stdin USING DELIMITERS '|';
Joe's|123 Any Street|B7462A
Sue's|456 My Way|C5473S
\.
COPY Sells FROM stdin USING DELIMITERS '|';
Joe's|Coors|2.50
Joe's|Bud|2.50
Joe's|Bud Lite|2.50
Joe's|Michelob|2.50
Joe's|Anchor Steam|3.50
Sue's|Coors|2.00
Sue's|Miller|2.00
\.
COPY Drinkers FROM stdin USING DELIMITERS '|';
Bill Jones|180 Saint St.|831-459-1812
Kelly Arthur|180 Alto Pl.|650-856-2002
Fred|1234 Fifth St.|831-426-1956
\.
COPY Likes FROM stdin USING DELIMITERS '|';
Bill Jones|Miller
Bill Jones|Michelob
Kelly Arthur|Anchor Steam
Fred|MGD \.
COPY Frequents FROM stdin USING DELIMITERS '|';
Bill Jones|Joe's
Bill Jones|Sue's
Kelly Arthur|Joe's
\.
-- print out the current time
SELECT timeofday();