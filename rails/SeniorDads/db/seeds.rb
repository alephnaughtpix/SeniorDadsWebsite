# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SiteFileType.create([
    { title: 'bin', description: 'Binary file' },
    { title: 'gfx', description: 'Graphics' },
    { title: 'mus', description: 'Music' },
    { title: 'url', description: 'Link' }
])

gfx = SiteFileType.find_by( title: 'gfx')
bin = SiteFileType.find_by( title: 'bin')

# Demos
Demo.create([
    # "Anal Tuck"
    {
        name: 'atuck',
        title: 'aNaL tUcK!!!11',
        platform: 'aTaR1 fAlC0n 0nLy!!!1!',
        size: 60,
        release_date: "1995-04-16 18:55:00",
        site_file: SiteFile.create(
            name: 'Anal Tuck',
            url: '/filez/demos/analtuck.lzh',
            description: 'Local copy.',
            site_file_type: bin
        ),
        site_files: SiteFile.create([
            {
                name: 'Anal Tuck',
                url: 'ftp://ftp.funet.fi/pub/atari/falcon/demo/analtuck.lzh',
                description: 'Mirror 1.',
                site_file_type: bin
            },
            {
                name: 'Anal Tuck',
                url: 'ftp://sunsite.doc.ic.ac.uk/computing/systems/atari/umich/Falcon/Demos/analtuck.lzh',
                description: 'Mirror 2.',
                site_file_type: bin
            },
            {
                name: 'Anal Tuck',
                url: 'ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/96kdemos/ANALTUCK.LZH',
                description: 'Mirror 3.',
                site_file_type: bin
            }
        ]),
        gallery: Gallery.create(
            name: 'atuck',
            title: '"Anal Tuck" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'atuck1',
                    url: '/images/demos/atuck.gif',
                    description: 'A legend is born!!!!',
                    site_file_type: gfx
                }
            ])
        )
    }
])

# Jackson Pollock's Gallery
Gallery.create(
    name:        'JPG' ,
    title:       'Jackson Pollock\'s Gallery'
).site_files = SiteFile.create([
    { name: 'Senior Dads Presents',
      url: '/images/demos/presents.gif',
      description: 'The way we start our demos.',
      site_file_type: gfx },
    { name: 'L Aube Du Matin Du Soir 2',
      url: '/images/demos/ladmds2.gif',
      description: 'An abstract title page.',
      site_file_type: gfx },
    { name: 'Airdirt demo frontpage',
      url: '/images/demos/airdirt.jpg',
      description: 'An impressionistic demo intro page.',
      site_file_type: gfx },
    { name: 'Portrait of Old Fart',
      url: '/images/oldfart.jpg',
      description: 'A portrait created for the Air Dirt Demo.',
      site_file_type: gfx },
    { name: 'Portrait of Doddering Git',
      url: '/images/dodgit.jpg',
      description: 'A portrait created for the Air Dirt Demo.',
      site_file_type: gfx },
    { name: 'Portrait of Dame Vera Lynn',
      url: '/images/damevera.jpg',
      description: 'A portrait created for the Air Dirt Demo.',
      site_file_type: gfx },
    { name: 'Self Portrait by Jackson Pollock',
      url: '/images/jpollock.jpg',
      description: 'A portrait created for the Air Dirt Demo.',
      site_file_type: gfx },
    { name: 'Portrait of Colostomy Bag',
      url: '/images/colostomy.gif',
      description: 'CB joined later, and I did a nice portait for him in Photoshop!',
      site_file_type: gfx }
])