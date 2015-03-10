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
mus = SiteFileType.find_by( title: 'mus')

# Demos
Demo.create([
    # "Anal Tuck"
    {
        name: 'atuck',
        title: 'aNaL tUcK!!!11',
        platform: 'aTaR1 fAlC0n 0nLy!!!1!',
        size: 60,
        release_date: "1995-04-16 18:55:00",
        demo_order: 1,
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
    },
    # "Colonic Irrigation"
    {
        name: 'colonic',
        title: 'c0L0n1C 1rR1gAt10N!!!11',
        platform: 'aTaR1 fAlC0n 0nLy!!!1!',
        size: 63,
        release_date: "1995-08-09 04:19:00",
        demo_order: 2,
        site_file: SiteFile.create(
            name: 'Colonic Irrigation',
            url: '/filez/demos/senior.lzh',
            description: 'Local copy.',
            site_file_type: bin
        ),
        site_files: SiteFile.create([
            {
                name: 'Colonic Irrigation',
                url: 'ftp://ftp.funet.fi/pub/atari/falcon/demo/senior.lzh',
                description: 'Mirror 1.',
                site_file_type: bin
            },
            {
                name: 'Colonic Irrigation',
                url: 'ftp://sunsite.doc.ic.ac.uk/computing/systems/atari/umich/Falcon/Demos/senior.lzh',
                description: 'Mirror 2.',
                site_file_type: bin
            },
            {
                name: 'Colonic Irrigation',
                url: 'ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/senior.lzh',
                description: 'Mirror 3.',
                site_file_type: bin
            }
        ]),
        gallery: Gallery.create(
            name: 'colonic',
            title: '"Colonic Irrigation" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'colonic1',
                    url: '/images/demos/colonic.gif',
                    description: 'Back with a splash!!(!!)',
                    site_file_type: gfx
                }
            ])
        )
    },
    # "L' Aube Du Matin Du Soir II (Remix)"
    {
        name: 'ladmds2',
        title: '//a l;AuB3 dU mAt1N dU s01R iI//',
        platform: 'aTaR1 sT3/fAlC0n 0nLy!!!1!',
        size: 642,
        release_date: "1996-03-01 01:18:00",
        demo_order: 3,
        site_file: SiteFile.create(
            name: 'L\' Aube Du Matin Du Soir II (Remix)',
            url: '/filez/demos/ladmds2.lzh',
            description: 'Local copy.',
            site_file_type: bin
        ),
        site_files: SiteFile.create([
            {
                name: 'L\' Aube Du Matin Du Soir II (Remix)',
                url: 'ftp://ftp.funet.fi/pub/atari/falcon/demo/ladmds2.lzh',
                description: 'Mirror 1.',
                site_file_type: bin
            },
            {
                name: 'L\' Aube Du Matin Du Soir II (Remix)',
                url: 'ftp://ftp.ibp.fr/pub/atari/Demos/ladmds2.lzh',
                description: 'Mirror 2.',
                site_file_type: bin
            },
            {
                name: 'L\' Aube Du Matin Du Soir II (Remix)',
                url: 'ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/ladmds2.lzh',
                description: 'Mirror 3.',
                site_file_type: bin
            }
        ]),
        gallery: Gallery.create(
            name: 'ladmds2',
            title: '"L\' Aube Du Matin Du Soir II (Remix)" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'ladmds2_1',
                    url: '/images/demos/ladmds2.gif',
                    description: 'Our first big one!!(!!)',
                    site_file_type: gfx
                }
            ])
        )
    },
    # "The Airdirt Demo"
    {
        name: 'airdirt',
        title: 'The <strong>AIR DIRT demo!</strong>',
        platform: 'aTaR1 sT3/fAlC0n 0nLy!!!1!',
        size: 328,
        release_date: "1996-10-31 15:49:00",
        demo_order: 4,
        site_file: SiteFile.create(
            name: 'The Airdirt Demo',
            url: '/filez/demos/air_dirt.lzh',
            description: 'Local copy.',
            site_file_type: bin
        ),
        site_files: SiteFile.create([
            {
                name: 'The Airdirt Demo',
                url: 'ftp://ftp.funet.fi/pub/atari/falcon/demo/air_dirt.lzh',
                description: 'Mirror 1.',
                site_file_type: bin
            },
            {
                name: 'The Airdirt Demo',
                url: 'ftp://ftp.ibp.fr/pub/atari/Falcon/Demos/air_dirt.lzh',
                description: 'Mirror 2.',
                site_file_type: bin
            },
            {
                name: 'The Airdirt Demo',
                url: 'ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/air_dirt.lzh',
                description: 'Mirror 3.',
                site_file_type: bin
            }
        ]),
        gallery: Gallery.create(
            name: 'airdirt',
            title: '"The Airdirt Demo" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'airdirt1',
                    url: '/images/demos/airdirt.jpg',
                    description: 'The screen that launched a new era in Atari demoes!!!!',
                    site_file_type: gfx
                }
            ])
        )
    },
    # "The ST Floormat Demo"
    {
        name: 'floormat',
        title: 'The ST FLOORMAT demo!',
        platform: 'aTaR1 sTfM/sT3/fAlC0n/pAc1F1St 0nLy!!!1!',
        size: 34,
        release_date: '1997-02-24 13:14:00',
        demo_order: 5,
        site_file: SiteFile.create(
            name: 'The ST Floormat Demo',
            url: '/filez/demos/stflrmat.zip',
            description: 'Local copy.',
            site_file_type: bin
        ),
        site_files: SiteFile.create([
            {
                name: 'The ST Floormat Demo',
                url: 'ftp://ftp.funet.fi/pub/atari/demo/stflrmat.zip',
                description: 'Mirror 1.',
                site_file_type: bin
            },
            {
                name: 'The ST Floormat Demo',
                url: 'ftp://ftp.ibp.fr/pub/atari/Demos/stflrmat.zip',
                description: 'Mirror 2.',
                site_file_type: bin
            }
        ]),
        gallery: Gallery.create(
            name: 'floormat',
            title: '"The ST Floormat Demo" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'floormat1',
                    url: '/images/demos/floormat.gif',
                    description: 'This is what happens when inferior coders ripp you off!!!!',
                    site_file_type: gfx
                }
            ])
        )
    },
    # "The "Anti Teckno" Teckno Demo"
    {
        name: 'teckno',
        title: 'The &quot;ANTI-TECKNO&quot; TECKNO demo!',
        platform: 'aTaR1 sTfM/sT3/fAlC0n/pAc1F1St 0nLy!!!1!',
        size: 47,
        release_date: '1997-05-05 16:40:00',
        demo_order: 6,
        site_file: SiteFile.create(
            name: 'The "Anti Teckno" Teckno Demo',
            url: '/filez/demos/teckno.zip',
            description: 'Local copy.',
            site_file_type: bin
        ),
        site_files: SiteFile.create([
            {
                name: 'The "Anti Teckno" Teckno Demo',
                url: 'ftp://ftp.funet.fi/pub/atari/demo/teckno.lzh',
                description: 'Mirror 1.',
                site_file_type: bin
            },
            {
                name: 'The "Anti Teckno" Teckno Demo',
                url: 'ftp://ftp.ibp.fr/pub/atari/Demos/tekno.lzh',
                description: 'Mirror 2.',
                site_file_type: bin
            }
        ]),
        gallery: Gallery.create(
            name: 'teckno',
            title: '"The \'Anti Teckno\' Teckno Demo" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'teckno1',
                    url: '/images/demos/teckno.gif',
                    description: 'HARDCORE YOU KNOW THA SCORE!!!!',
                    site_file_type: gfx
                }
            ])
        )
    },
    # "Xmas Card 97"
    {
        name: 'xmas97',
        title: 'The XMAS CARD 97 demo!',
        platform: 'aTaR1 fAlC0n 0nLy!!!1!',
        size: 488,
        release_date: '1997-12-24 12:41:00',
        demo_order: 7,
        site_file: SiteFile.create(
            name: 'The "Anti Teckno" Teckno Demo',
            url: '/filez/demos/xmas97.zip',
            description: 'Local copy.',
            site_file_type: bin
        ),
        gallery: Gallery.create(
            name: 'xmas97',
            title: '"Xmas Card 97" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'xmas97_1',
                    url: '/images/demos/xmas97.jpg',
                    description: 'Merrey Xmas, everyboddy!!!!',
                    site_file_type: gfx
                }
            ])
        )
    },
    # "DadPlazz!"
    {
        name: 'dadplazz',
        title: 'DadPlazz!!',
        platform: 'aTaR1 fAlC0n 0nLy!!!1!',
        size: 0.125,
        release_date: '1998-01-20 00:21:58',
        demo_order: 8,
        site_file: SiteFile.create(
            name: 'DadPlazz!',
            url: '/filez/demos/dadplazz.zip',
            description: 'Local copy.',
            site_file_type: bin
        ),
        gallery: Gallery.create(
            name: 'dadplazz',
            title: '"DadPlazz!" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'dadplazz1',
                    url: '/images/demos/dadplazz.png',
                    description: 'Can you believe this was done in 128 bytes?!?!?',
                    site_file_type: gfx
                }
            ])
        )
    },
    # "Mono-Mental!"
    {
        name: 'mono',
        title: 'MONO-MENTAL!!!!',
        platform: 'aTaR1 sTfM/sT3/fAlC0n 0nLy!!!1!',
        size: 112,
        release_date: '1998-04-05 22:30:00',
        demo_order: 9,
        site_file: SiteFile.create(
            name: 'Mono-Mental!',
            url: '/filez/demos/monomntl.zip',
            description: 'Local copy.',
            site_file_type: bin
        ),
        gallery: Gallery.create(
            name: 'mono',
            title: '"Mono-Mental!" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'mono1',
                    url: '/images/demos/mono/testcard.gif',
                    description: 'Back to mono!!!!',
                    site_file_type: gfx
                }
            ])
        )
    },
    # "The Ultimate Fake Demo"
    {
        name: 'fake',
        title: 'The ULTIMATE FAKE DEMO!!!',
        platform: 'aTaR1 fAlC0n/JTFM/JTE/Hasbro Transformer!!/pAc1F1st PC 0nLy!!!1!',
        size: 15,
        release_date: '1998-04-05 22:30:00',
        demo_order: 10,
        site_file: SiteFile.create(
            name: 'The Ultimate Fake Demo',
            url: '/filez/demos/fake.zip',
            description: 'Local copy.',
            site_file_type: bin
        ),
        gallery: Gallery.create(
            name: 'fake',
            title: '"The Ultimate Fake Demo" Gallery',
            site_files: SiteFile.create([
                {
                    name: 'fake1',
                    url: '/images/demos/fake.gif',
                    description: 'Our first FAKE demo!!!',
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

# Dame Vera Lynn's music
MusicFileType.create([
    { name: 'ym', description: 'Atari ST chip music' },
    { name: 'mod', description: 'Noisetracker module' }
])

ym  = MusicFileType.find_by( name: 'ym' )
mod = MusicFileType.find_by( name: 'mod' )

MusicFile.create([
    {
      name: 'fanfare',
      title: 'The Senior Dads Fanfare',
      description: 'At the start of every Dads demo- this was the version at the start of <a href="../demos/atuck.html">Anal Tuck</a>. It signifies the end of the crumbling empire attitudes of those opposed to <em>&quot;one nation under a techno groove&quot;,</em> know what I\'m saying?',
      site_file: SiteFile.create(
            name: 'The Senior Dads Fanfare',
            url: '/filez/music/fanfare.zip',
            description: 'Local copy.',
            site_file_type: bin
      ),
      music_file_type: mod
    }
])
