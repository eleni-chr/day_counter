function mon = day_counter(year)

% The function returns the number of Mondays that fell on the first day of
% the month in a given year since 1776. The input is the requested year and
% it can be any year from 1776 onwards. The input must be a positive integer
% scalar. Note that a leap year occurs on any year evenly divisible by 4,
% but not on a century unless it is divisible by 400.

mondays=0;
for ii=1:12
    offset=days(datetime(year,ii,1)-datetime(1776,1,1));
    remainder=mod(offset,7);
    if remainder==0
        mondays=mondays+1;
    end
end
mon=mondays;
end