venue_columns = %i[name address]
venue_values = [['Wembley Stadium', 'London'], ['The O2', 'Greenwich'], ['SSE Wembley Arena', 'Wembley'],
                ['Alexandra Palace', 'Haringey']]
Venue.import(venue_columns, venue_values)

artist_columns = [:name]
artist_values = [['The Beatles'],
                 ['Garth Brooks'],
                 ['Elvis Presley'],
                 ['Eagles'],
                 ['Led Zeppelin'],
                 ['Billy Joel'],
                 ['Michael Jackson']]

Artist.import(artist_columns, artist_values)

10.times do
  artist = Artist.order(Arel.sql('RANDOM()')).first
  venue = Venue.order(Arel.sql('RANDOM()')).first
  Event.create(name: "#{artist.name} at #{venue.name}", artist: artist, venue: venue, thumbnail: 'https://picsum.photos/500/500')
end
