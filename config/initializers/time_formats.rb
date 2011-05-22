# Time::DATE_FORMATS[:full] = "%A, %B %d, %Y"

Time::DATE_FORMATS.merge!(
   :default => '%m/%d/%Y',
   :full => "%A, %B %d, %Y",
   :full_short => "%b %d, %Y",
   :full_short_time => "%a, %b %d, %Y %I:%M%p",
   :short_time => "%a, %b %d %I:%M%p",
   :full_short_time_no_year => "%a, %b %d %l:%M %p",
   :full_no_year => "%A, %B %d",
   :full_no_year_short => "%b %d",
   :full_clipped => "%a, %b %d, %Y",
   :datetime_military => '%Y-%m-%d %H:%M',
   :datetime          => '%Y-%m-%d %I:%M%P',
   :time              => '%I:%M%P',
   :time_military     => '%H:%M%P',
   :datetime_short    => '%m/%d %I:%M%P',
   :date_short        => '%m.%d.%Y',
   :month_day_short   => '%m/%d'
)
