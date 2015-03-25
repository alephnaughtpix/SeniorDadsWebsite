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
    { name: 'sd_presents',
      url: '/images/demos/presents.gif',
      description: 'The way we start our demos.',
      site_file_type: gfx },
    { name: 'ladmds2',
      url: '/images/demos/ladmds2.gif',
      description: 'An abstract title page.',
      site_file_type: gfx },
    { name: 'airdirt1',
      url: '/images/demos/airdirt.jpg',
      description: 'An impressionistic demo intro page.',
      site_file_type: gfx },
    { name: 'OldFart',
      url: '/images/oldfart.jpg',
      description: 'A portrait created for the Air Dirt Demo.',
      site_file_type: gfx },
    { name: 'DodderingGit',
      url: '/images/dodgit.jpg',
      description: 'A portrait created for the Air Dirt Demo.',
      site_file_type: gfx },
    { name: 'DameVeraLynn',
      url: '/images/damevera.jpg',
      description: 'A portrait created for the Air Dirt Demo.',
      site_file_type: gfx },
    { name: 'JacksonPollock',
      url: '/images/jpollock.jpg',
      description: 'A portrait created for the Air Dirt Demo.',
      site_file_type: gfx },
    { name: 'ColostomyBag',
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
      title: 'Senior Dads Fanfare',
      description: 'At the start of every Dads demo- this was the version at the start of <a href="../demos/atuck.html">Anal Tuck</a>. It signifies the end of the crumbling empire attitudes of those opposed to <em>&quot;one nation under a techno groove&quot;,</em> know what I\'m saying?',
      site_file: SiteFile.create(
            name: 'fanfare',
            url: '/filez/music/fanfare.zip',
            description: 'Local copy.',
            site_file_type: mus
      ),
      music_file_type: mod
    },
    {
      name: 'theme',
      title: 'Senior Dads Theme',
      description: 'From <a href="../images/demos/colonic.html">Colonic Irrigation</a>. It samples bits of the fanfare and twists and turns it over a happy hardcore/jungle ragga stylee. Mad, like a raving nuttah, but that\'s the kind of guy I am, you catching my drift?',
      site_file: SiteFile.create(
            name: 'theme',
            url: '/filez/music/sdtheme.zip',
            description: 'Local copy.',
            site_file_type: mus
      ),
      music_file_type: mod
    },
    {
      name: 'laurent',
      title: 'Laurent Garnier, Kiss My Derriere',
      description: 'From the <a href="../demos/ladmds2.html">L\'Aube Du Matin Du Soir II (Remix)</a> intro. Mad karazee froggy-style techno trance monsta! Goes into record-breaking style bpm frenzy mania at the end, just to start the weekend off for the cool French Atrocity demo!',
      site_file: SiteFile.create(
            name: 'laurent',
            url: '/filez/music/laurent.zip',
            description: 'Local copy.',
            site_file_type: mus
      ),
      music_file_type: mod
    },
    {
      name: 'liam',
      title: 'Liam Gallagher, Kiss My Derriere (The Burp Song)',
      description: 'Also from the <a href="../demos/ladmds2.html">L\'Aube Du Matin Du Soir II (Remix)</a>, this time from the endtro. Made to piss off that thick Neanderthal troglodyte Manc bastardo Gallagher twat, who said that people would dance to farts if they stuck beats on top of them. Well, of course they would, most beats-fortified farts hit the spot better than your shit-for-brains Beatle rip-offs, you top prize wankaah! So I made this killer chune completely outta burps! Beat that, <strong>Oasisn\'t</strong>!!!',
      site_file: SiteFile.create(
            name: 'liam',
            url: '/filez/music/burp.zip',
            description: 'Local copy.',
            site_file_type: mus
      ),
      music_file_type: mod
    },
    {
      name: 'MoveYourAss',
      title: 'Move Your Ass To The Senior Dads',
      description: 'The monsta rave theme toon from the megademo <a href="../demos/airdirt.html">Air Dirt</a>. A classic dance floor filla that piles on tha crazee manic beats until it explodes! Treat with care, I take <strong>no</strong> responsibility if you spontaneously combust whilst listening to this twisted firestarter of a chune!',
      site_file: SiteFile.create(
            name: 'MoveYourAss',
            url: '/filez/music/moveuass.zip',
            description: 'Local copy.',
            site_file_type: mus
      ),
      music_file_type: mod
    },
    {
      name: 'XmasBalls',
      title: 'Kick Santa in the Balls',
      description: 'From <a href="../demos/xmas97.html">Xmas Card 97</a>. It\'s Christmastime, and there\'s a need to be afraid... Cause the Dame VL is kickin\' it again with the ill-est Xmas Medley ever, dropping like a Hiroshima for the earholes, know what I\'m saying?',
      site_file: SiteFile.create(
            name: 'XmasBalls',
            url: '/filez/music/xmas97.zip',
            description: 'Local copy.',
            site_file_type: mus
      ),
      music_file_type: mod
    },
    {
      name: 'NeverMindThePistols',
      title: 'Never Mind the Pistols, Here\'s the Bollocks',
      description: 'From the <a href="../demos/teckno.html">Anti-Teckno Teckno demo</a>. A pumping techno soundtrack (This is 1992, so it sounds a bit more laid-back now!!!) BTW This is the first techno module ever in ST chip musix!',
      site_file: SiteFile.create(
            name: 'NeverMindThePistols',
            url: '/filez/music/teckno.zip',
            description: 'Local copy.',
            site_file_type: mus
      ),
      music_file_type: ym
    },
    {
      name: 'PastIsAnUndiscoveredCountry',
      title: 'The Past Is An Undiscovered Country- I Am The Viking To Rape And Pillage It',
      description: 'From <a href="../demos/mono.html">Mono-mental</a>. It was a serious challenge to do a piece of killer music in mono, but you can agree I more than met it. And you notice how since then, you\'ve got all those guys like Jack White going back to mono? Yep, Dame VL- ahead of the curve as always.',
      site_file: SiteFile.create(
            name: 'PastIsAnUndiscoveredCountry',
            url: '/filez/music/mono.zip',
            description: 'Local copy.',
            site_file_type: mus
      ),
      music_file_type: ym
    },
    {
      name: 'RaseroTeam',
      title: 'Rasero Team Fuck Out',
      description: 'Lost after 14 years, so rare even I forgot about it! This chune was added in our patch to Reject\'s demo. We did this tune in response to some guys in Poland called the RASERO TEAM, who thought they were being clever by doing a demo called \'Senior Fucks out\'! You wot, mate?!? That demo was just shit, and the "music" didn\'t even get the bass frequencies right! Maybe you can\'t code to our level, guys, but at least you can get the chunes sorted! So that\'s what I did, just to show them who\'s boss. A cool jungle remix of a shite lamers tune, know what I\'m sayin\'?',
      site_file: SiteFile.create(
            name: 'RaseroTeam',
            url: '/filez/music/rasero.zip',
            description: 'Local copy.',
            site_file_type: mus
      ),
      music_file_type: ym
    }
])


# Dudes
MemberType.create([
  { name: 'code',  description: 'Coder' },
  { name: 'gfx',   description: 'Graphics Artist' },
  { name: 'music', description: 'Musician' },
])
coder = MemberType.find_by( name: 'code')

Member.create([
  { name: 'Old_Fart', title: 'Old Fart', member_type: coder, 
    joined: '1992-01-01 00:00:00',
    join_reason: 'I formed the bloody thing with Doddering Git at the <B>Fried Place to Be 4</B>, just half an hour before the deadline for a demo competition, and we did our first ground-breaking <strong><a href="../demos/default.html">demo</a></strong> for the 96ktro competition in that half an hour!!!',
    function: 'Coder and designer! I code in pure 68040 on the Falcon.',
    first_computer: 'Atari 2600 console, and I saw a BBC Micro Model B at school.',
    any_other_comments: 'Yes! <span id="bigger2"> WE ARE THE BEST!!</span>',
    site_file: SiteFile.find_by( name: 'OldFart' )
  },
  { name: 'Doddering_Git', title: 'Doddering Git', member_type: coder, 
    joined: '1992-01-01 00:00:00',
    join_reason: 'm3t 0Ld fArT, d1D k1Ck aSs d3M0!!!!111',
    function: 'c0D3R &amp; d33Z1neR 0V 0uR w3 pAg3Zz!!!!11',
    first_computer: 'dRaG0n 32',
    any_other_comments: '2 3Vr3 1 3lS3 - g1V3 uP!!!111 w33 r00l!!!!111',
    site_file: SiteFile.find_by( name: 'DodderingGit' )
  },
    { name: 'Dame_Vera_Lynn', title: 'Dame Vera Lynn', member_type: MemberType.find_by( name: 'music' ), 
    joined: '1995-04-16 00:00:00',
    join_reason: 'I was the only one around who could handle the pressure of doing a killer soundtrack to a massive demo in half an hour.',
    function: 'I do the most important stuff- the <strong><a href="../music/default.html">music</a></strong>.',
    first_computer: 'This is my first computer. If you\'re any good at computers, you don\'t need to have experience of older ones.',
    any_other_comments: 'Life is a movie- are you playing the lead role or a bit part?',
    site_file: SiteFile.find_by( name: 'DameVeraLynn' )
  },
    { name: 'Jackson_Pollock', title: 'Jackson Pollock', member_type: MemberType.find_by( name: 'gfx' ), 
    joined: '1995-07-24 00:00:00',
    join_reason: 'The other guys were sorely needing a new artistic direction, so Doddering Git asked me to join the crew over a pint of snakebite at the Rolf Harris bar at the student union.',
    function: '<strong><a href="../gfx/default.html">Art</a></strong> direction of demos is my bag!',
    first_computer: 'Originally it was a Viglen PC but it was too inhuman, so I sold it and got a Mac instead.',
    any_other_comments: 'Yes! I am mad ... ptang ptang beep beep two pencils up nose and a pair of underpants on my head!!!!!',
    site_file: SiteFile.find_by( name: 'JacksonPollock' )
  },
  { name: 'Colostomy_Bag', title: 'Colostomy_Bag', member_type: coder, 
    joined: '1998-02-05 00:00:00',
    join_reason: 'I was asked by the Atari lamers in the crew if I would produce/direct/design/choreograph a meisterwork of pure code on on the best computer in the entire existance of life, the universe and everything. (ie my computer!!!!!)',
    function: 'Mega-Arexx Guru on the Phase 5 Vicorp Commodore Amiga 1300!',
    first_computer: 'Well, I first used a Commodore calculator from the 1970s when I was in my Arithmetic class, and I could program in Arexx on that as well!!',
    any_other_comments: '2B V ~(2B) = ? (If You can\'t do Shakepeare in simpilified form, you shouldn\'t be a programmer! BTW the answer is "empty set"!!!)',
    site_file: SiteFile.find_by( name: 'ColostomyBag' )
  }
])

category_1 = Category.create("name"=>"link", "title"=>"Link", "parent_category_id"=>nil)
category_2 = Category.create("name"=>"netbest", "title"=>"NetBest", "parent_category_id"=>1)
category_3 = Category.create("name"=>"sitefile", "title"=>"Site File", "parent_category_id"=>1)
category_4 = Category.create("name"=>"bin", "title"=>"Binary File", "parent_category_id"=>3)
category_5 = Category.create("name"=>"gfx", "title"=>"Graphics File", "parent_category_id"=>3)
category_6 = Category.create("name"=>"mus", "title"=>"Music File", "parent_category_id"=>3)
category_7 = Category.create("name"=>"url", "title"=>"Site Link", "parent_category_id"=>3)
link_1 = Link.create("name"=>"hotwired_rgb", "title"=>"Hotwired RGB Gallery", "url"=>"http://www.hotwired.com/rgb/", "description"=>"We must be really visonary, because this is a section devoted to people who do the sort of stuff we do in our <a href=\"../../demos/default.html\">demos</a>!!", "category_id"=>2)
link_2 = Link.create("name"=>"kitchenette", "title"=>"Kitchenette Magazine!", "url"=>"http://www.kitchenette.com/", "description"=>"Our mouths were watering after visiting this site!", "category_id"=>2)
link_3 = Link.create("name"=>"whisky_tasting", "title"=>"Whisky tasting notes", "url"=>"http://www.dcs.ed.ac.uk/home/jhb/whisky/padlip.html", "description"=>"I never knew whisky tasting was so interesting! Though I don't spit it out after tasting!!!!!", "category_id"=>2)
link_4 = Link.create("name"=>"irnbru_sausage", "title"=>"Internet Irn Bru and Sliced Sausage machine!", "url"=>"http://www.icbl.hw.ac.uk/~william/irnintro.html", "description"=>"If you thought Coke machines on the WebNet were originall then check this out! This machine actually dispenses Irn Bru and suasages. Shame we can't get to eat them! (The sausages, we mean!!! It would silly to try and eat Irn Bru cans, wouldn't it!!!!)", "category_id"=>2)
link_5 = Link.create("name"=>"irnbru", "title"=>"Official Irn Bru Web Site", "url"=>"http://www.irn-bru.co.uk/", "description"=>"Talking of the famous Scottish soft-drink, check out their visionary web opus! We almost felt like giving up when we saw how brilliant it was!", "category_id"=>2)
link_6 = Link.create("name"=>"cheesemaking", "title"=>"Cheesemaking in Scotland", "url"=>"http://www.efr.hw.ac.uk/SDA/book1.html", "description"=>"Well, as they say, \"blessed are the cheesemakers\", and this is a really interesting site!", "category_id"=>2)
link_7 = Link.create("name"=>"biff", "title"=>"B1FF#S K3WL H0M3 PAG3!!!", "url"=>"http://www.panix.com/~clays/biff/", "description"=>"This guy was a major influence on us! Look here and see why- he knows how to web-design! Also, check out his <a href=\"http://shell.rmi.net/~tph/biffsig.html\">signature/a> for tips on how to end your messages on Presetel!!", "category_id"=>2)
link_8 = Link.create("name"=>"tain", "title"=>"Tain Through Time", "url"=>"http://www.cali.co.uk/HIGHEXP/TTT/", "description"=>"CLASS. This is an online museum about a Scottish town called Tain! It's really educational and after reading this site, you want to go there and experience it's history!", "category_id"=>2)
link_9 = Link.create("name"=>"team_gates", "title"=>"Team Gates", "url"=>"http://www.teamgates.com/", "description"=>"Read more about the amazing Mr William Gates III, and his fans. If you want to know how &quot;way too cool&quot; the future of programming is going to be read here!", "category_id"=>2)
link_10 = Link.create("name"=>"bigger_net", "title"=>"Bigger Net", "url"=>"http://www.biggar-net.co.uk/index.htm", "description"=>"If you thought all this talk about &quot;global village&quot; was a load of rubbish, check this out! This is a shining example of a small village in Scotland wired up to the global intranet superinfo highway pipe and beating the big boys at their own game!", "category_id"=>2)
link_11 = Link.create("name"=>"cruel_site", "title"=>"Cruel Site of the Day", "url"=>"http://www.cruel.com/", "description"=>"A really thought-provoking site, detailing communication problems in a corrupt Western society. If you're an intellictual, check this one out!", "category_id"=>2)
link_12 = Link.create("name"=>"grampian_transport", "title"=>"Grampian Transport Museum", "url"=>"http://www.cw.globalweb.co.uk/alford/gtm.htm", "description"=>"Wow! Who knew transport in the north of Scotland could be so interesting!!!! Also, check out the radical design of this site, which uses color opposites to make the text easier on the eyes!", "category_id"=>2)
link_13 = Link.create("name"=>"tocs", "title"=>"T.O.C.S", "url"=>"http://dspace.dial.pipex.com/town/plaza/lh48/", "description"=>"No wonder this company is &quot;well established&quot;! Wait till you see the quality of their site!!!", "category_id"=>2)
link_14 = Link.create("name"=>"calico_links", "title"=>"Links page on Calico", "url"=>"http://www.cali.co.uk/links/", "description"=>"Some wisdom from the professionals. These guys design web pages for a living. Check out how their brilliance!!!", "category_id"=>2)
link_14 = Link.create(name: "AnalTuck", title: "Anal Tuck", description: "Local copy.", url: "/filez/demos/analtuck.lzh", "category_id" => 4)
link_15 = Link.create(name: "AnalTuck1", title: "Anal Tuck", description: "Mirror 1.", url: "ftp://ftp.funet.fi/pub/atari/falcon/demo/analtuck.lzh", "category_id" => 4)
link_16 = Link.create(name: "AnalTuck2", title: "Anal Tuck", description: "Mirror 2.", url: "ftp://sunsite.doc.ic.ac.uk/computing/systems/atari/umich/Falcon/Demos/analtuck.lzh", "category_id" => 4)
link_17 = Link.create(name: "AnalTuck3", title: "Anal Tuck", description: "Mirror 3.", url: "ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/96kdemos/ANALTUCK.LZH", "category_id" => 4)
link_18 = Link.create(name: "Atuck1", title: "atuck1", description: "A legend is born!!!!", url: "/images/demos/atuck.gif", "category_id" => 5)
link_19 = Link.create(name: "ColonicIrrigation", title: "Colonic Irrigation", description: "Local copy.", url: "/filez/demos/senior.lzh", "category_id" => 4)
link_20 = Link.create(name: "ColonicIrrigation1", title: "Colonic Irrigation", description: "Mirror 1.", url: "ftp://ftp.funet.fi/pub/atari/falcon/demo/senior.lzh", "category_id" => 4)
link_21 = Link.create(name: "ColonicIrrigation2", title: "Colonic Irrigation", description: "Mirror 2.", url: "ftp://sunsite.doc.ic.ac.uk/computing/systems/atari/umich/Falcon/Demos/senior.lzh", "category_id" => 4)
link_22 = Link.create(name: "ColonicIrrigation3", title: "Colonic Irrigation", description: "Mirror 3.", url: "ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/senior.lzh", "category_id" => 4)
link_23 = Link.create(name: "Colonic1", title: "colonic1", description: "Back with a splash!!(!!)", url: "/images/demos/colonic.gif", "category_id" => 5)
link_24 = Link.create(name: "LAubeDuMatinDuSoirIIRemix", title: "L' Aube Du Matin Du Soir II (Remix)", description: "Local copy.", url: "/filez/demos/ladmds2.lzh", "category_id" => 4)
link_25 = Link.create(name: "LAubeDuMatinDuSoirIIRemix1", title: "L' Aube Du Matin Du Soir II (Remix)", description: "Mirror 1.", url: "ftp://ftp.funet.fi/pub/atari/falcon/demo/ladmds2.lzh", "category_id" => 4)
link_26 = Link.create(name: "LAubeDuMatinDuSoirIIRemix2", title: "L' Aube Du Matin Du Soir II (Remix)", description: "Mirror 2.", url: "ftp://ftp.ibp.fr/pub/atari/Demos/ladmds2.lzh", "category_id" => 4)
link_27 = Link.create(name: "LAubeDuMatinDuSoirIIRemix3", title: "L' Aube Du Matin Du Soir II (Remix)", description: "Mirror 3.", url: "ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/ladmds2.lzh", "category_id" => 4)
link_28 = Link.create(name: "Ladmds21", title: "ladmds2_1", description: "Our first big one!!(!!)", url: "/images/demos/ladmds2.gif", "category_id" => 5)
link_29 = Link.create(name: "AirdirtDemo", title: "The Airdirt Demo", description: "Local copy.", url: "/filez/demos/air_dirt.lzh", "category_id" => 4)
link_30 = Link.create(name: "AirdirtDemo1", title: "The Airdirt Demo", description: "Mirror 1.", url: "ftp://ftp.funet.fi/pub/atari/falcon/demo/air_dirt.lzh", "category_id" => 4)
link_31 = Link.create(name: "AirdirtDemo2", title: "The Airdirt Demo", description: "Mirror 2.", url: "ftp://ftp.ibp.fr/pub/atari/Falcon/Demos/air_dirt.lzh", "category_id" => 4)
link_32 = Link.create(name: "AirdirtDemo3", title: "The Airdirt Demo", description: "Mirror 3.", url: "ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/air_dirt.lzh", "category_id" => 4)
link_33 = Link.create(name: "Airdirt1", title: "airdirt1", description: "The screen that launched a new era in Atari demoes!!!!", url: "/images/demos/airdirt.jpg", "category_id" => 5)
link_34 = Link.create(name: "STFloormatDemo", title: "The ST Floormat Demo", description: "Local copy.", url: "/filez/demos/stflrmat.zip", "category_id" => 4)
link_35 = Link.create(name: "STFloormatDemo1", title: "The ST Floormat Demo", description: "Mirror 1.", url: "ftp://ftp.funet.fi/pub/atari/demo/stflrmat.zip", "category_id" => 4)
link_36 = Link.create(name: "STFloormatDemo2", title: "The ST Floormat Demo", description: "Mirror 2.", url: "ftp://ftp.ibp.fr/pub/atari/Demos/stflrmat.zip", "category_id" => 4)
link_37 = Link.create(name: "Floormat1", title: "floormat1", description: "This is what happens when inferior coders ripp you off!!!!", url: "/images/demos/floormat.gif", "category_id" => 5)
link_38 = Link.create(name: "AntiTecknoTecknoDemo", title: "The \"Anti Teckno\" Teckno Demo", description: "Local copy.", url: "/filez/demos/teckno.zip", "category_id" => 4)
link_39 = Link.create(name: "AntiTecknoTecknoDemo1", title: "The \"Anti Teckno\" Teckno Demo", description: "Mirror 1.", url: "ftp://ftp.funet.fi/pub/atari/demo/teckno.lzh", "category_id" => 4)
link_40 = Link.create(name: "AntiTecknoTecknoDemo2", title: "The \"Anti Teckno\" Teckno Demo", description: "Mirror 2.", url: "ftp://ftp.ibp.fr/pub/atari/Demos/tekno.lzh", "category_id" => 4)
link_41 = Link.create(name: "Teckno1", title: "teckno1", description: "HARDCORE YOU KNOW THA SCORE!!!!", url: "/images/demos/teckno.gif", "category_id" => 5)
link_42 = Link.create(name: "AntiTecknoTecknoDemo3", title: "The \"Anti Teckno\" Teckno Demo", description: "Local copy.", url: "/filez/demos/xmas97.zip", "category_id" => 4)
link_43 = Link.create(name: "Xmas971", title: "xmas97_1", description: "Merrey Xmas, everyboddy!!!!", url: "/images/demos/xmas97.jpg", "category_id" => 5)
link_44 = Link.create(name: "DadPlazz", title: "DadPlazz!", description: "Local copy.", url: "/filez/demos/dadplazz.zip", "category_id" => 4)
link_45 = Link.create(name: "Dadplazz1", title: "dadplazz1", description: "Can you believe this was done in 128 bytes?!?!?", url: "/images/demos/dadplazz.png", "category_id" => 5)
link_46 = Link.create(name: "MonoMental", title: "Mono-Mental!", description: "Local copy.", url: "/filez/demos/monomntl.zip", "category_id" => 4)
link_47 = Link.create(name: "Mono1", title: "mono1", description: "Back to mono!!!!", url: "/images/demos/mono/testcard.gif", "category_id" => 5)
link_48 = Link.create(name: "UltimateFakeDemo", title: "The Ultimate Fake Demo", description: "Local copy.", url: "/filez/demos/fake.zip", "category_id" => 4)
link_49 = Link.create(name: "Fake1", title: "fake1", description: "Our first FAKE demo!!!", url: "/images/demos/fake.gif", "category_id" => 5)
link_50 = Link.create(name: "Sdpresents", title: "sd_presents", description: "The way we start our demos.", url: "/images/demos/presents.gif", "category_id" => 5)
link_51 = Link.create(name: "Ladmds2", title: "ladmds2", description: "An abstract title page.", url: "/images/demos/ladmds2.gif", "category_id" => 5)
link_52 = Link.create(name: "Airdirt11", title: "airdirt1", description: "An impressionistic demo intro page.", url: "/images/demos/airdirt.jpg", "category_id" => 5)
link_53 = Link.create(name: "OldFart", title: "OldFart", description: "A portrait created for the Air Dirt Demo.", url: "/images/oldfart.jpg", "category_id" => 5)
link_54 = Link.create(name: "DodderingGit", title: "DodderingGit", description: "A portrait created for the Air Dirt Demo.", url: "/images/dodgit.jpg", "category_id" => 5)
link_55 = Link.create(name: "DameVeraLynn", title: "DameVeraLynn", description: "A portrait created for the Air Dirt Demo.", url: "/images/damevera.jpg", "category_id" => 5)
link_56 = Link.create(name: "JacksonPollock", title: "JacksonPollock", description: "A portrait created for the Air Dirt Demo.", url: "/images/jpollock.jpg", "category_id" => 5)
link_57 = Link.create(name: "ColostomyBag", title: "ColostomyBag", description: "CB joined later, and I did a nice portait for him in Photoshop!", url: "/images/colostomy.gif", "category_id" => 5)
link_58 = Link.create(name: "Fanfare", title: "fanfare", description: "Local copy.", url: "/filez/music/fanfare.zip", "category_id" => 6)
link_59 = Link.create(name: "Me", title: "theme", description: "Local copy.", url: "/filez/music/sdtheme.zip", "category_id" => 6)
link_60 = Link.create(name: "Laurent", title: "laurent", description: "Local copy.", url: "/filez/music/laurent.zip", "category_id" => 6)
link_61 = Link.create(name: "Liam", title: "liam", description: "Local copy.", url: "/filez/music/burp.zip", "category_id" => 6)
link_62 = Link.create(name: "MoveYourAss", title: "MoveYourAss", description: "Local copy.", url: "/filez/music/moveuass.zip", "category_id" => 6)
link_63 = Link.create(name: "XmasBalls", title: "XmasBalls", description: "Local copy.", url: "/filez/music/xmas97.zip", "category_id" => 6)
link_64 = Link.create(name: "NeverMindPistols", title: "NeverMindThePistols", description: "Local copy.", url: "/filez/music/teckno.zip", "category_id" => 6)
link_65 = Link.create(name: "PastIsAnUndiscoveredCountry", title: "PastIsAnUndiscoveredCountry", description: "Local copy.", url: "/filez/music/mono.zip", "category_id" => 6)
link_66 = Link.create(name: "RaseroTeam", title: "RaseroTeam", description: "Local copy.", url: "/filez/music/rasero.zip", "category_id" => 6)
