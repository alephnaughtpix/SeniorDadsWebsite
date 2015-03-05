class OldDemo

    @@mirrorNames = ["[m1Rr0R 1n3!!11]", "[m1Rr0R 2w0!!11]", "[m1Rr0R tHr33!!11]"]
    @@count = 0
    @@demos = []

    @id = nil
    @name = nil
    @platform = nil
    @size = nil
    @releaseDate = nil
    @mainFile = nil
    @mirrorFiles = nil
    @gfxGallery = nil

    def initialize( id, name, platform, size, releaseDate, mainFile, mirrorFiles, gfxFiles )
        @name = name
        @size = size
        @platform = platform
        @releaseDate = DateTime.parse(releaseDate)
        @mainFile = OldSiteFile.new("[d0Wnl0Ad!!11]",mainFile)
        unless mirrorFiles.nil?
            @mirrorFiles = [mirrorFiles.size]
            (0..mirrorFiles.size-1).each do |i|
                @mirrorFiles[i] = OldSiteFile.new(@@mirrorNames[i],mirrorFiles[i])
            end
        end
        @gfxGallery = [gfxFiles.size]
        (0..gfxFiles.size-1).each do |i|
            @gfxGallery[i] = gfxFiles[i]
        end
        @@count++
        @id = id
        @@demos.push( self )
    end

    def self.GetByID( id )
        demoInfo = nil
        if (@@demos.size==0)
            OldDemo.LoadAll
        end
        (0..@@demos.size-1).each do |i|
            if (@@demos[i].id == id)
                demoInfo = @@demos[i]
            end
        end
        demoInfo
    end

    def self.LoadAll
        OldDemo.new(
            1,
            "aNaL tUcK!!!11",
            "aTaR1 fAlC0n 0nLy!!!1!",
            60,
            "1995-04-16 18:55:00",
            "../filez/demos/analtuck.lzh",
            [
                "ftp://ftp.funet.fi/pub/atari/falcon/demo/analtuck.lzh",
                "ftp://sunsite.doc.ic.ac.uk/computing/systems/atari/umich/Falcon/Demos/analtuck.lzh",
                "ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/96kdemos/ANALTUCK.LZH"
            ],
            [
                OldSiteFile.new("A legend is born!!!!","../images/demos/atuck.gif")
            ]
        )
        OldDemo.new(
            2,
            "c0L0n1C 1rR1gAt10N!!!11",
            "aTaR1 fAlC0n 0nLy!!!1!",
            63,
            "1995-08-09 04:19:00",
            "../filez/demos/senior.lzh",
            [
                "ftp://ftp.funet.fi/pub/atari/falcon/demo/senior.lzh",
                "ftp://sunsite.doc.ic.ac.uk/computing/systems/atari/umich/Falcon/Demos/senior.lzh",
                "ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/senior.lzh"
            ],
            [
                OldSiteFile.new("Back with a splash!!(!!)","../images/demos/colonic.gif")
            ]
        )
        OldDemo.new(
            3,
            "//a l;AuB3 dU mAt1N dU s01R iI//",
            "aTaR1 sT3/fAlC0n 0nLy!!!1!",
            642,
            "1996-03-01 01:18:00",
            "../filez/demos/ladmds2.lzh",
            [
                "ftp://ftp.funet.fi/pub/atari/falcon/demo/ladmds2.lzh",
                "ftp://ftp.ibp.fr/pub/atari/Demos/ladmds2.lzh",
                "ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/ladmds2.lzh"
            ],
            [
                OldSiteFile.new("Our first big one!!(!!)","../images/demos/ladmds2.gif")
            ]
        )
        OldDemo.new(
            4,
            "The <strong>AIR DIRT demo!</strong>",
            "aTaR1 fAlC0n 0nLy!!!1!",
            328,
            "1996-10-31 15:49:00",
            "../filez/demos/air_dirt.lzh",
            [
                "ftp://ftp.funet.fi/pub/atari/falcon/demo/air_dirt.lzh",
                "ftp://ftp.ibp.fr/pub/atari/Falcon/Demos/air_dirt.lzh",
                "ftp://ftp.uni-kl.de/pub/atari/falcon/gfx_demos/air_dirt.lzh"
            ],
            [
                OldSiteFile.new("The screen that launched a new era in Atari demoes!!!!","../images/demos/airdirt.jpg")
            ]
        )
        OldDemo.new(
            5,
            "The ST FLOORMAT demo!",
            "aTaR1 sTfM/sT3/fAlC0n/pAc1F1St 0nLy!!!1!",
            34,
            "1997-02-24 13:14:00",
            "../filez/demos/stflrmat.zip",
            [
                "ftp://ftp.funet.fi/pub/atari/demo/stflrmat.zip",
                "ftp://ftp.ibp.fr/pub/atari/Demos/stflrmat.zip"
            ],
            [
                OldSiteFile.new("This is what happens when inferior coders ripp you off!!!!","../images/demos/floormat.gif")
            ]
        )
        OldDemo.new(
            6,
            "The &quot;ANTI-TECKNO&quot; TECKNO demo!",
            "aTaR1 sTfM/sT3/fAlC0n/pAc1F1St 0nLy!!!1!",
            47,
            "1997-05-05 16:40:00",
            "../filez/demos/teckno.lzh",
            [
                "ftp://ftp.funet.fi/pub/atari/demo/teckno.lzh",
                "ftp://ftp.ibp.fr/pub/atari/Demos/tekno.lzh"
            ],
            [
                OldSiteFile.new("HARDCORE YOU KNOW THA SCORE!!!!","../images/demos/teckno.gif")
            ]
        )
        OldDemo.new(
            7,
            "The XMAS CARD 97 demo!",
            "aTaR1 fAlC0n 0nLy!!!1!",
            488,
            "1997-12-24 12:41:00",
            "../filez/demos/xmas97.zip",
            nil,
            [
                OldSiteFile.new("Merrey Xmas, everyboddy!!!!","../images/demos/xmas97.jpg")
            ]
        )
        OldDemo.new(
            8,
            "DadPlazz!!",
            "aTaR1 fAlC0n 0nLy!!!1!",
            0.125,
            "1998-01-20 00:21:58",
            "../filez/demos/dadplazz.zip",
            nil,
            [
                OldSiteFile.new("Can you believe this was done in 128 bytes?!?!?","../images/demos/dadplazz.png")
            ]
        )
        OldDemo.new(
            9,
            "MONO-MENTAL!!!!",
            "aTaR1 sTfM/sT3/fAlC0n 0nLy!!!1!",
            112,
            "1998-04-05 22:30:00",
            "../filez/demos/monomntl.zip",
            nil,
            [
                OldSiteFile.new("Back to mono!!!!","../images/demos/mono/testcard.gif")
            ]
        )
        OldDemo.new(
            10,
            "The ULTIMATE FAKE DEMO!!!",
            "(aTaR1 fAlC0n/JTFM/JTE/Hasbro Transformer!!/pAc1F1st PC 0nLy!!!1!)",
            15,
            "1998-04-05 22:30:00",
            "../filez/demos/fake.zip",
            nil,
            [
                OldSiteFile.new("Our first FAKE demo!!!","../images/demos/fake.gi")
            ]
        )
    end

    def GetNext
        OldDemo.GetByID(self.id +1)
    end

    def id
        @id
    end

    def name
        @name
    end

    def size
        @size
    end

    def platform
        @platform
    end

    def releaseDate
        @releaseDate.strftime("%e %b %Y %H:%M")
    end

    def mainFile
        @mainFile
    end

    def mirrorFiles
        @mirrorFiles
    end

    def gallery
        @gfxGallery
    end

end
