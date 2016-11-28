class Treasure
  constructor: ->
    
  treasure:
    cp: 0
    sp: 0
    ep: 0
    gp: 0
    pp: 0
    extra:
      gems: []
      art: []
      magicItems: []
      
  reset: ->
    @.treasure = 
      cp: 0
      sp: 0
      ep: 0
      gp: 0
      pp: 0
      extra:
        gems: []
        art: []
        magicItems: []

  generate: (ratings, tradePercentage, hoard=false) ->
    @.reset()
    
    self = @
    gems = {
      one: [
        'Azurite'
        'Banded Agate'
        'Blue Quartz'
        'Eye Agate'
        'Hematite'
        'Lapis Lazuli'
        'Malachite'
        'Moss Agate'
        'Obsidian'
        'Rhodochrosite'
        'Tiger Eye'
        'Turquoise'
      ]
      two: [
        'Bloodstone'
        'Carnelian'
        'Chalcedony'
        'Chrysoprase'
        'Citrine'
        'Jasper'
        'Moonstone'
        'Onyx'
        'Quartz'
        'Sardonyx'
        'Star Rose Quartz'
        'Zircon'
      ]
      three: [
        'Amber'
        'Amethyst'
        'Chrysoberyl'
        'Coral'
        'Garnet'
        'Jade'
        'Jet'
        'Pearl'
        'Spinel'
        'Tourmaline'
      ]
      four: [
        'Alexandrite'
        'Aquamarine'
        'Black Pearl'
        'Blue Spinel'
        'Peridot'
        'Topaz'
      ]
      five: [
        'Black Opal'
        'Blue Sapphire'
        'Emerald'
        'Fire Opal'
        'Opal'
        'Star Ruby'
        'Star Sapphire'
        'Yellow Sapphire'
      ]
      six: [
        'Black Sapphire'
        'Diamond'
        'Jacinth'
        'Ruby'
      ]
    }

    arts = {
      one: [
        'Silver Ewer'
        'Carved Bone Statuette'
        'Small Gold Bracelet'
        'Cloth-of-gold Vestments'
        'Black Velvet Mask (Stitched with silver thread)'
        'Copper chalice with silver filigree'
        'Pair of engraved bone dice'
        'Small mirror set in a painted wooden frame'
        'Embroidered sild handkerchief'
        'Gold locket with a painted portrait inside'
      ]
      two: [
        'Gold ring set with bloodstones'
        'Carved ivory statuette'
        'Large gold bracelet'
        'Silver necklace with a gemstone pendant'
        'Bronze crown'
        'Silk robe with gold embroidery'
        'Large well-made tapestry'
        'Brass mug with jade inlay'
        'Box of turquoise animal figurines'
        'Gold bird cage with electrum filigree'
      ]
      three: [
        'Silver chalice with moonstones'
        'Silver-plated steel longsword with jet set in hilt'
        'Carved harp of exotic wood with ivory inlay and zircon gems'
        'Small gold idol'
        'Gold dragon comb set with red garnets as eyes'
        'Bottle stopper cork embossed with gold leaf and set with amethysts'
        'Ceremonial electrum dagger with black peral in the pommel'
        'Silver and gold brooch'
        'Obsidian statuette with gold fittings and inlay'
        'Painted gold war mask'
      ]
      four: [
        'Fine gold chain set with fire opal'
        'Old masterpiece painting'
        'Embroidered silk and velvet mantle set with numerous moonstones'
        'Platinum bracelet set with a sapphire'
        'Embroidered glove set with jewel chips'
        'Jeweled anklet'
        'Gold music box'
        'Gold circlet set with four aquamarines'
        'Eye patch with a mock eye set in blue sapphire and moonstone'
        'A necklace string of small pink pearls'
      ]
      five: [
        'Jeweled gold crown'
        'Jeweled platinum ring'
        'Small gold statuette set with rubies'
        'Gold cup set with emeralds'
        'Gold jewerly box with platinum filigree'
        'Painted gold child\'s sarcophagus'
        'Jade game board with solid gold playing pieces'
        'Bejeweled ivory drinking horn with gold filigree'
      ]
    }

    treasure =
      cp: 0
      sp: 0
      ep: 0
      gp: 0
      pp: 0
      extra:
        gems: []
        art: []
        magicItems: []
    unless hoard
      for cr in ratings
        d100 = Utils.dice.d100()
        switch cr
          when 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
            if 0 <= d100 <= 30
              switch cr
                when 0, 1, 2, 3, 4
                  self.treasure.cp += Utils.dice.d6(5)
                else
                  self.treasure.cp += Utils.dice.d6(4) * 100
                  self.treasure.ep += Utils.dice.d6(1) * 10
            else if 30 < d100 <= 60
              switch cr
                when 0, 1, 2, 3, 4
                  self.treasure.sp += Utils.dice.d6(4)
                else
                  self.treasure.sp += Utils.dice.d6(6) * 10
                  self.treasure.gp += Utils.dice.d6(2) * 10
            else if 60 < d100 <= 70
              switch cr
                when 0, 1, 2, 3, 4
                  self.treasure.ep += Utils.dice.d6(3)
                else
                  self.treasure.ep += Utils.dice.d6(3) * 10
                  self.treasure.gp += Utils.dice.d6(2) * 10
            else if 70 < d100 <= 95
              switch cr
                when 0, 1, 2, 3, 4
                  self.treasure.gp += Utils.dice.d6(3)
                else
                  self.treasure.gp += Utils.dice.d6(4) * 10
            else if 95 < d100 <= 100
              switch cr
                when 0, 1, 2, 3, 4
                  self.treasure.pp += Utils.dice.d6(1)
                else
                  self.treasure.gp += Utils.dice.d6(2) * 10
                  self.treasure.pp += Utils.dice.d6(3)

          when 11, 12, 13, 14, 15, 16
            if 0 <= d100 <= 20
              self.treasure.sp += Utils.dice.d6(4) * 100
              self.treasure.gp += Utils.dice.d6(1) * 100
            else if 20 < d100 <= 35
              self.treasure.ep += Utils.dice.d6(1) * 100
              self.treasure.gp += Utils.dice.d6(1) * 100
            else if 35 < d100 <= 75
              self.treasure.gp += Utils.dice.d6(2) * 100
              self.treasure.pp += Utils.dice.d6(1) * 100
            else if 75 < d100 <= 100
              self.treasure.gp += Utils.dice.d6(2) * 100
              self.treasure.pp += Utils.dice.d6(2) * 100

          else
            if 0 <= d100 <= 15
              self.treasure.ep += Utils.dice.d6(2) * 1000
              self.treasure.gp += Utils.dice.d6(8) * 100
            else if 15 < d100 <= 55
              self.treasure.gp += Utils.dice.d6(1) * 1000
              self.treasure.pp += Utils.dice.d6(1) * 100
            else if 55 < d100 <= 100
              self.treasure.gp += Utils.dice.d6(1) * 100
              self.treasure.pp += Utils.dice.d6(2) * 100

      totalGold = (self.treasure.cp/100) + (self.treasure.sp/10) + (self.treasure.ep/2) + (self.treasure.pp*10)
      goldToTrade = ((tradePercentage*1)/100)*totalGold

      if tradePercentage != 0 && goldToTrade > 10
        remaining = goldToTrade

        if remaining > self.treasure.cp / 100
          remaining -= self.treasure.cp / 100
          self.treasure.cp = 0
        else
          self.treasure.cp -= remaining * 100
          remaining = 0

        if remaining > self.treasure.sp / 10
          remaining -= self.treasure.sp / 10
          self.treasure.sp = 0
        else
          self.treasure.sp -= remaining * 10
          remaining = 0

        if remaining > self.treasure.ep / 2
          remaining -= self.treasure.ep / 2
          self.treasure.ep = 0
        else
          self.treasure.ep = remaining * 2
          remaining = 0

        if remaining > self.treasure.gp
          remaining -= self.treasure.gp
          self.treasure.gp = 0
        else
          self.treasure.gp -= remaining
          remaining = 0

        if remaining > self.treasure.pp * 10
          remaining -= self.treasure.pp * 10
          self.treasure.pp = 0
        else
          self.treasure.pp -= remaining / 10
          remaining = 0

        remaining = goldToTrade
        while(remaining >= 10)
          if remaining >= 7500
            self.treasure.extra.art.push(arts.five[Utils.random.between(0, 7)] + ' (7500G)')
            remaining -= 7500
          else if 7500 > remaining >= 5000
            self.treasure.extra.gems.push(gems.six[Utils.random.between(0, 3)] + ' (5000G)')
            remaining -= 5000
          else if 5000 > remaining >= 2500
            self.treasure.extra.art.push(arts.four[Utils.random.between(0, 9)] + ' (2500G)')
            remaining -= 2500
          else if 2500 > remaining >= 1000
            self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
            remaining -= 1000
          else if 1000 > remaining >= 750
            self.treasure.extra.art.push(arts.three[Utils.random.between(0, 9)] + ' (750G)')
            remaining -= 750
          else if 750 > remaining >= 500
            self.treasure.extra.gems.push(gems.four[Utils.random.between(0, 5)] + ' (500G)')
            remaining -= 500
          else if 500 > remaining >= 250
            self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
            remaining -= 250
          else if 250 > remaining >= 100
            self.treasure.extra.gems.push(gems.three[Utils.random.between(0, 9)] + ' (100G)')
            remaining -= 100
          else if 100 > remaining >= 50
            self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
            remaining -= 50
          else if 50 > remaining >= 25
            self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
            remaining -= 25
          else if 25 > remaining >= 10
            self.treasure.extra.gems.push(gems.one[Utils.random.between(0, 11)] + ' (10G)')
            remaining -= 10

        self.treasure.gp += Math.floor(remaining)
    else
      for cr in ratings
        d100 = Utils.dice.d100()
        switch cr
          when 0, 1, 2, 3, 4
            self.treasure.cp += Utils.dice.d6(6)*100
            self.treasure.sp += Utils.dice.d6(3)*100
            self.treasure.gp += Utils.dice.d6(2)*10
            if 0 <= d100 <= 6
              console.log 'Nothing'
            else if 7 <= d100 <= 16
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.one[Utils.random.between(0, 11)] + ' (10G)')
            else if 17 <= d100 <= 26
              _(Utils.dice.d4(5)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
            else if 27 <= d100 <= 36
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
            else if 37 <= d100 <= 44
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.one[Utils.random.between(0, 11)] + ' (10G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
            else if 45 <= d100 <= 52
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
            else if 53 <= d100 <= 60
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
            else if 61 <= d100 <= 65
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.one[Utils.random.between(0, 11)] + ' (10G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')
            else if 66 <= d100 <= 70
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')
            else if 71 <= d100 <= 75
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')
            else if 76 <= d100 <= 78
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.one[Utils.random.between(0, 11)] + ' (10G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')
            else if 79 <= d100 <= 80
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')
            else if 81 <= d100 <= 85
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')
            else if 86 <= d100 <= 92
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
            else if 93 <= d100 <= 97
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
            else if 98 <= d100 <= 99
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')
            else if d100 == 100
              _(Utils.dice.d6(2)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')
          when 5, 6, 7, 8, 9, 10
            self.treasure.cp += Utils.dice.d6(2)*100
            self.treasure.sp += Utils.dice.d6(2)*1000
            self.treasure.gp += Utils.dice.d6(6)*100
            self.treasure.pp += Utils.dice.d6(3)*10
            if 0 <= d100 <= 4
              console.log 'Nothing'
            else if 5 <= d100 <= 10
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
            else if 11 <= d100 <= 16
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
            else if 17 <= d100 <= 22
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.three[Utils.random.between(0, 9)] + ' (100G)')
            else if 23 <= d100 <= 28
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
            else if 29 <= d100 <= 32
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
            else if 33 <= d100 <= 36
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
            else if 37 <= d100 <= 40
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.three[Utils.random.between(0, 9)] + ' (100G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
            else if 41 <= d100 <= 44
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
            else if 45 <= d100 <= 49
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')
            else if 50 <= d100 <= 54
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')
            else if 55 <= d100 <= 59
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.three[Utils.random.between(0, 9)] + ' (100G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')
            else if 60 <= d100 <= 63
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')
            else if 64 <= d100 <= 66
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')
            else if 67 <= d100 <= 69
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')
            else if 70 <= d100 <= 72
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.three[Utils.random.between(0, 9)] + ' (100G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')
            else if 73 <= d100 <= 74
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')
            else if 75 <= d100 <= 76
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'd')
            else if 77 <= d100 <= 78
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'd')
            else if d100 == 79
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.three[Utils.random.between(0, 9)] + ' (100G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'd')
            else if d100 == 80
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'd')
            else if 81 <= d100 <= 84
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.one[Utils.random.between(0, 9)] + ' (25G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
            else if 85 <= d100 <= 88
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.two[Utils.random.between(0, 11)] + ' (50G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
            else if 89 <= d100 <= 91
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.three[Utils.random.between(0, 9)] + ' (100G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
            else if 92 <= d100 <= 94
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
            else if 95 <= d100 <= 96
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.three[Utils.random.between(0, 9)] + ' (100G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')
            else if 97 <= d100 <= 98
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')
            else if d100 == 99
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.three[Utils.random.between(0, 9)] + ' (100G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'h')
            else if d100 == 100
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'h')

          when 11, 12, 13, 14, 15, 16
            self.treasure.gp += Utils.dice.d6(4)*1000
            self.treasure.pp += Utils.dice.d6(5)*100

            if 0 <= d100 <= 3
              console.log 'Nothing'
            else if 4 <= d100 <= 6
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')

            else if 7 <= d100 <= 9
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.three[Utils.random.between(0, 9)] + ' (750G)')

            else if 10 <= d100 <= 12
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.four[Utils.random.between(0, 5)] + ' (500G)')

            else if 13 <= d100 <= 15
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')

            else if 16 <= d100 <= 19
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')

            else if 20 <= d100 <= 23
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.three[Utils.random.between(0, 9)] + ' (750G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')

            else if 24 <= d100 <= 26
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.four[Utils.random.between(0, 5)] + ' (500G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')

            else if 27 <= d100 <= 29
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'a')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'b')

            else if 30 <= d100 <= 35
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')

            else if 36 <= d100 <= 40
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.three[Utils.random.between(0, 9)] + ' (750G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')

            else if 41 <= d100 <= 45
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.four[Utils.random.between(0, 5)] + ' (500G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')

            else if 46 <= d100 <= 50
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d6(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')

            else if 51 <= d100 <= 54
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'd')

            else if 55 <= d100 <= 58
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.three[Utils.random.between(0, 9)] + ' (750G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'd')

            else if 59 <= d100 <= 62
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.four[Utils.random.between(0, 5)] + ' (500G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'd')

              # Error
            else if 63 <= d100 <= 66
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'd')

            else if 67 <= d100 <= 68
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'e')

            else if 69 <= d100 <= 70
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.three[Utils.random.between(0, 9)] + ' (750G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'e')

            else if 71 <= d100 <= 72
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.four[Utils.random.between(0, 5)] + ' (500G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'e')

            else if 73 <= d100 <= 74
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'e')

            else if 75 <= d100 <= 76
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')

            else if 77 <= d100 <= 78
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.three[Utils.random.between(0, 9)] + ' (750G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')

            else if 79 <= d100 <= 80
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.four[Utils.random.between(0, 5)] + ' (500G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')

            else if 81 <= d100 <= 82
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'f')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')

            else if 83 <= d100 <= 85
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'h')

            else if 86 <= d100 <= 88
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.three[Utils.random.between(0, 9)] + ' (750G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'h')

            else if 89 <= d100 <= 90
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.four[Utils.random.between(0, 5)] + ' (500G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'h')

            else if 91 <= d100 <= 92
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d4(1)).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'h')

            else if 93 <= d100 <= 94
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.two[Utils.random.between(0, 9)] + ' (250G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'i')

            else if 95 <= d100 <= 96
              _(Utils.dice.d4(2)).times ->
                self.treasure.extra.art.push(arts.three[Utils.random.between(0, 9)] + ' (750G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'i')

            else if 97 <= d100 <= 98
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.four[Utils.random.between(0, 5)] + ' (500G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'i')

            else if 99 <= d100 <= 100
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              self.treasure.extra.magicItems.push(self.rollMagicItem 'i')

          else
            self.treasure.gp += Utils.dice.d6(12)*1000
            self.treasure.pp += Utils.dice.d6(8)*1000
            if 1 <= d100 <= 2
              console.log 'Nothing'

            if 3 <= d100 <= 5
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d8()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')

            else if 6 <= d100 <= 8
              _(Utils.dice.d10()).times ->
                self.treasure.extra.art.push(arts.four[Utils.random.between(0, 9)] + ' (2500G)')
              _(Utils.dice.d8()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')

            else if 9 <= d100 <= 11
              _(Utils.dice.d4()).times ->
                self.treasure.extra.art.push(arts.five[Utils.random.between(0, 7)] + ' (7500G)')
              _(Utils.dice.d8()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')

            else if 12 <= d100 <= 14
              _(Utils.dice.d8()).times ->
                self.treasure.extra.gems.push(gems.six[Utils.random.between(0, 3)] + ' (5000G)')
              _(Utils.dice.d8()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'c')

            else if 15 <= d100 <= 22
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d6()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'd')

            else if 23 <= d100 <= 30
              _(Utils.dice.d10()).times ->
                self.treasure.extra.art.push(arts.four[Utils.random.between(0, 9)] + ' (2500G)')
              _(Utils.dice.d6()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'd')

            else if 31 <= d100 <= 38
              _(Utils.dice.d4()).times ->
                self.treasure.extra.art.push(arts.five[Utils.random.between(0, 7)] + ' (7500G)')
              _(Utils.dice.d6()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'd')

            else if 39 <= d100 <= 46
              _(Utils.dice.d8()).times ->
                self.treasure.extra.gems.push(gems.six[Utils.random.between(0, 3)] + ' (5000G)')
              _(Utils.dice.d6()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'd')

            else if 47 <= d100 <= 52
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d6()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'e')

            else if 53 <= d100 <= 58
              _(Utils.dice.d10()).times ->
                self.treasure.extra.art.push(arts.four[Utils.random.between(0, 9)] + ' (2500G)')
              _(Utils.dice.d6()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'e')

            else if 59 <= d100 <= 63
              _(Utils.dice.d4()).times ->
                self.treasure.extra.art.push(arts.five[Utils.random.between(0, 7)] + ' (7500G)')
              _(Utils.dice.d6()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'e')

            else if 64 <= d100 <= 68
              _(Utils.dice.d8()).times ->
                self.treasure.extra.gems.push(gems.six[Utils.random.between(0, 3)] + ' (5000G)')
              _(Utils.dice.d6()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'e')

            else if d100 == 69
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')

            else if d100 == 70
              _(Utils.dice.d10()).times ->
                self.treasure.extra.art.push(arts.four[Utils.random.between(0, 9)] + ' (2500G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')

            else if d100 == 71
              _(Utils.dice.d4()).times ->
                self.treasure.extra.art.push(arts.five[Utils.random.between(0, 7)] + ' (7500G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')

            else if d100 == 72
              _(Utils.dice.d8()).times ->
                self.treasure.extra.gems.push(gems.six[Utils.random.between(0, 3)] + ' (5000G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'g')

            else if 73 <= d100 <= 74
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'h')

            else if 75 <= d100 <= 76
              _(Utils.dice.d10()).times ->
                self.treasure.extra.art.push(arts.four[Utils.random.between(0, 9)] + ' (2500G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'h')

            else if 77 <= d100 <= 78
              _(Utils.dice.d4()).times ->
                self.treasure.extra.art.push(arts.five[Utils.random.between(0, 7)] + ' (7500G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'h')

            else if 79 <= d100 <= 80
              _(Utils.dice.d8()).times ->
                self.treasure.extra.gems.push(gems.six[Utils.random.between(0, 3)] + ' (5000G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'h')

            else if 81 <= d100 <= 85
              _(Utils.dice.d6(3)).times ->
                self.treasure.extra.gems.push(gems.five[Utils.random.between(0, 7)] + ' (1000G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'i')

            else if 86 <= d100 <= 90
              _(Utils.dice.d10()).times ->
                self.treasure.extra.art.push(arts.four[Utils.random.between(0, 9)] + ' (2500G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'i')

            else if 91 <= d100 <= 95
              _(Utils.dice.d4()).times ->
                self.treasure.extra.art.push(arts.five[Utils.random.between(0, 7)] + ' (7500G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'i')

            else if 96 <= d100 <= 100
              _(Utils.dice.d8()).times ->
                self.treasure.extra.gems.push(gems.six[Utils.random.between(0, 3)] + ' (5000G)')
              _(Utils.dice.d4()).times ->
                self.treasure.extra.magicItems.push(self.rollMagicItem 'i')


    self.treasure.cp = Math.floor(self.treasure.cp)
    self.treasure.sp = Math.floor(self.treasure.sp)
    self.treasure.ep = Math.floor(self.treasure.ep)
    self.treasure.gp = Math.floor(self.treasure.gp)
    self.treasure.pp = Math.floor(self.treasure.pp)

    return @.treasure

  rollMagicItem: (table) ->
    d100 = Utils.dice.d100()

    switch table
      when 'a'
        if 0 <= d100 <= 50
          return 'Potion of Healing'
        else if 51 <= d100 <= 60
          return 'Spell Scroll (cantrip)'
        else if 61 <= d100 <= 70
          return 'Potion of Climbing'
        else if 71 <= d100 <= 90
          return 'Spell Scroll (1st level)'
        else if 91 <= d100 <= 94
          return 'Spell Scroll (2nd level)'
        else if 95 <= d100 <= 98
          return 'Potion of Greater Healing'
        else if d100 == 99
          return 'Bag of Holding'
        else if d100 == 100
          return 'Driftglobe'

      when 'b'
        if 0 <= d100 <= 15
          return 'Potion of Greater Healing'
        else if 16 <= d100 <= 22
          return 'Potion of Fire Breath'
        else if 23 <= d100 <= 29
          return 'Potion of Resistance'
        else if 30 <= d100 <= 34
          return 'Ammunition, +1'
        else if 35 <= d100 <= 39
          return 'Potion of Animal Friendship'
        else if 40 <= d100 <= 44
          return 'Potion of Giant Strength'
        else if 45 <= d100 <= 49
          return 'Potion of Growth'
        else if 50 <= d100 <= 54
          return 'Potion of Water Breathing'
        else if 55 <= d100 <= 59
          return 'Spell Scroll (2nd level)'
        else if 60 <= d100 <= 64
          return 'Spell Scroll (3rd level)'
        else if 65 <= d100 <= 67
          return 'Bag of Holding'
        else if 68 <= d100 <= 70
          return 'Keoghtom\'s  ointment'
        else if 71 <= d100 <= 73
          return 'Oil of Slipperiness'
        else if 74 <= d100 <= 75
          return 'Dust of Disappearance'
        else if 76 <= d100 <= 77
          return 'Dust of Dryness'
        else if 78 <= d100 <= 79
          return 'Dust of Sneezing and Choking'
        else if 80 <= d100 <= 81
          return 'Elemental Gem'
        else if 82 <= d100 <= 83
          return 'Philter of Love'
        else if d100 == 84
          return 'Alchemy Jug'
        else if d100 == 85
          return 'Can of Water Breathing'
        else if d100 == 86
          return 'Cloak of Mantra Ray'
        else if d100 == 87
          return 'Driftglobe'
        else if d100 == 88
          return 'Goggles of Night'
        else if d100 == 89
          return 'Helm of Comprehending Languages'
        else if d100 == 90
          return 'Immovable Rod'
        else if d100 == 91
          return 'Lantern of Revealing'
        else if d100 == 92
          return 'Mariner\'s Armor'
        else if d100 == 93
          return 'Mithral Armor'
        else if d100 == 94
          return 'Potion of Poison'
        else if d100 == 95
          return 'Ring of Swimming'
        else if d100 == 96
          return 'Robe of Usefull Items'
        else if d100 == 97
          return 'Rope of Climbing'
        else if d100 == 98
          return 'Saddle of the Cavalier'
        else if d100 == 99
          return 'Wand of Magic Detection'
        else if d100 == 100
          return 'Wand of Secrets'

      when 'c'
        if 0 <= d100 <= 15
          return 'Potion of Superior Healing'
        else if 16 <= d100 <= 22
          return 'Spell Scroll (4th level)'
        else if 23 <= d100 <= 27
          return 'Ammunition, +2'
        else if 28 <= d100 <= 32
          return 'Potion  of  Clairvoyance'
        else if 33 <= d100 <= 37
          return 'Potion of Diminution'
        else if 38 <= d100 <= 42
          return 'Potion of Gaseous Form'
        else if 43 <= d100 <= 47
          return 'Potion of Frost Giant Strength'
        else if 48 <= d100 <= 52
          return 'Potion of Stone Giant Strength'
        else if 53 <= d100 <= 57
          return 'Potion of Heroism'
        else if 58 <= d100 <= 62
          return 'Potion of Invulnerability'
        else if 63 <= d100 <= 67
          return 'Potion of Mind Reading'
        else if 68 <= d100 <= 72
          return 'Spell Scroll (5th level)'
        else if 73 <= d100 <= 75
          return 'Elixir of Health'
        else if 76 <= d100 <= 78
          return 'Oil of Etherealness'
        else if 79 <= d100 <= 81
          return 'Potion of Fire Giant Strength'
        else if 82 <= d100 <= 84
          return 'Quaal\'s Feather Token'
        else if 85 <= d100 <= 87
          return 'Scroll of Protection'
        else if 88 <= d100 <= 89
          return 'Bag of Beans'
        else if 90 <= d100 <= 91
          return 'Bead of Force'
        else if d100 == 92
          return 'Chime of Opening'
        else if d100 == 93
          return 'Decanter of Endless Water'
        else if d100 == 94
          return 'Eyes of Minute Seeing'
        else if d100 == 95
          return 'Folding Boat'
        else if d100 == 96
          return 'Heward\'s Handy Haversack'
        else if d100 == 97
          return 'Horseshoes of Speed'
        else if d100 == 98
          return 'Necklace of Fireballs'
        else if d100 == 99
          return 'Periapt of Health'
        else if d100 == 100
          return 'Sending Stones'

      when 'd'
        if 0 <= d100 <= 20
          return 'Potion of Supreme Healing'
        else if 21 <= d100 <= 30
          return 'Potion of Invisiblity'
        else if 31 <= d100 <= 40
          return 'Potion of Speed'
        else if 41 <= d100 <= 50
          return 'Spell Scroll (6th level)'
        else if 51 <= d100 <= 57
          return 'Spell Scroll (7th level)'
        else if 58 <= d100 <= 62
          return 'Ammunition, +3'
        else if 63 <= d100 <= 67
          return 'Oil of Sharpness'
        else if 68 <= d100 <= 72
          return 'Potion of Flying'
        else if 73 <= d100 <= 77
          return 'Potion of Cloud Giant Strength'
        else if 78 <= d100 <= 82
          return 'Potion of Longevity'
        else if 83 <= d100 <= 87
          return 'Potion of Vitality'
        else if 88 <= d100 <= 92
          return 'Spell Scroll (8th level)'
        else if 93 <= d100 <= 95
          return 'Horseshoes of Zephyr'
        else if 96 <= d100 <= 98
          return 'Nolzur\'s Marvelous Pigments'
        else if d100 == 99
          return 'Bag of Devouring'
        else if d100 == 100
          return 'Portable Hole'

      when 'e'
        if 0 <= d100 <= 30
          return 'Spell Scroll (8th level)'
        else if 31 <= d100 <= 55
          return 'Potion of Storm Giant Strength'
        else if 56 <= d100 <= 70
          return 'Potion of Supreme Healing'
        else if 71 <= d100 <= 85
          return 'Spell Scroll (9th level)'
        else if 86 <= d100 <= 93
          return 'Universal Solvent'
        else if 94 <= d100 <= 98
          return 'Arrow of Slaying'
        else if 99 <= d100 <= 100
          return 'Sovereign Glue'

      when 'f'
        if 0 <= d100 <= 15
          return 'Weapon, +1'
        else if 16 <= d100 <= 18
          return 'Shield, +1'
        else if 19 <= d100 <= 21
          return 'Sentinel Shield'
        else if 22 <= d100 <= 23
          return 'Amulet of proof against detection and location'
        else if 24 <= d100 <= 25
          return 'Boots of elvenkind'
        else if 26 <= d100 <= 27
          return 'Boots of striding and springing'
        else if 28 <= d100 <= 29
          return 'Bracers of archery'
        else if 30 <= d100 <= 31
          return 'Brooch of shielding'
        else if 32 <= d100 <= 33
          return 'Broom of flying'
        else if 34 <= d100 <= 35
          return 'Cloak of elvenkind'
        else if 36 <= d100 <= 37
          return 'Claok of protection'
        else if 38 <= d100 <= 39
          return 'Gauntlets of ogre power'
        else if 40 <= d100 <= 41
          return 'Hat of disguise'
        else if 42 <= d100 <= 43
          return 'Javelin of lightning'
        else if 44 <= d100 <= 45
          return 'Pearl of power'
        else if 46 <= d100 <= 47
          return 'Rod of the pact keeper, +1'
        else if 48 <= d100 <= 49
          return 'Slippers of spiderclimbing'
        else if 50 <= d100 <= 51
          return 'Staff of the adder'
        else if 52 <= d100 <= 53
          return 'Staff of the python'
        else if 54 <= d100 <= 55
          return 'Sword of vengeance'
        else if 56 <= d100 <= 57
          return 'Trident of fish command'
        else if 58 <= d100 <= 59
          return 'Wand of magic missles'
        else if 60 <= d100 <= 61
          return 'wand of the war mage, +1'
        else if 62 <= d100 <= 63
          return 'Wand of web'
        else if 64 <= d100 <= 65
          return 'Weapon of warning'
        else if d100 == 66
          return 'Adamantine armor (Chain mail)'
        else if d100 == 67
          return 'Adamantine armor (Chain shirt)'
        else if d100 == 68
          return 'Adamantine armor (Scale mail)'
        else if d100 == 69
          return 'Bag of tricks (Gray)'
        else if d100 == 70
          return 'Bag of tricks (Rust)'
        else if d100 == 71
          return 'Bag of tricks (Tan)'
        else if d100 == 72
          return 'Boots of the winterlands'
        else if d100 == 73
          return 'Circlet of blasting'
        else if d100 == 74
          return 'Deck of illusions'
        else if d100 == 75
          return 'Eversmoking bottle'
        else if d100 == 76
          return 'Eyes of charming'
        else if d100 == 77
          return 'Eyes of the eagle'
        else if d100 == 78
          return 'Figurine of wonderous power (Silver raven)'
        else if d100 == 79
          return 'Gem of brightness'
        else if d100 == 80
          return 'Gloves of missle snaring'
        else if d100 == 81
          return 'Gloves of swimming and climbing'
        else if d100 == 82
          return 'Gloves of thievery'
        else if d100 == 83
          return 'Headband of intelect'
        else if d100 == 84
          return 'Helm of telepathy'
        else if d100 == 85
          return 'Intrument of the bards (Doss lute)'
        else if d100 == 86
          return 'Intrument of the bards (Fochlucan bandore)'
        else if d100 == 87
          return 'Intrument of the bards (Mac-Fuimidh cittern)'
        else if d100 == 88
          return 'Medallion of thoughts'
        else if d100 == 89
          return 'Necklace of adaptation'
        else if d100 == 90
          return 'Periapt of wound closure'
        else if d100 == 91
          return 'Pipes of haunting'
        else if d100 == 92
          return 'Pipes of the sewers'
        else if d100 == 93
          return 'Ring of jumping'
        else if d100 == 94
          return 'Ring of mind shielding'
        else if d100 == 95
          return 'Ring of warmth'
        else if d100 == 96
          return 'Ring of waterwalking'
        else if d100 == 97
          return 'Quiver of Ehlonna'
        else if d100 == 98
          return 'Stone of good luck'
        else if d100 == 99
          return 'Wind fan'
        else if d100 == 100
          return 'Winged boots'

      when 'g'
        if 0 <= d100 <= 11
          return 'Weapon, +2'
        else if 12 <= d100 <= 14
          figurines = ['Bronze Griffon', 'Ebony Fly', 'Golden Lions', 'Ivory Goats', 'Marble Elephant', 'Onyx Dog', 'Onyx Dog', 'Serpentine Owl']
          return 'Figurine of Wondrous Power: ' + figurines[Utils.dice.d8()-1]
        else if d100 == 15
          return 'Adamantine Armor (Breastplate)'
        else if d100 == 16
          return 'Adamantine Armor (Splint)'
        else if d100 == 17
          return 'Amulet of Health'
        else if d100 == 18
          return 'Armor of Vulnerability'
        else if d100 == 19
          return 'Arrow-Catching Shield)'
        else if d100 == 20
          return 'Belt of Dwarvenkind'
        else if d100 == 21
          return 'Belt of Hill Giant Strength'
        else if d100 == 22
          return 'Berserker Axe'
        else if d100 == 23
          return 'Boots of Levitation'
        else if d100 == 24
          return 'Boots of Speed'
        else if d100 == 25
          return 'Bowl of Commanding Water Elementals'
        else if d100 == 26
          return 'Bracers of Defense'
        else if d100 == 27
          return 'Brazier of Commanding Fire Elementals'
        else if d100 == 28
          return 'Cape of Mountebank'
        else if d100 == 29
          return 'Censer of Controlling Air Elementals'
        else if d100 == 30
          return 'Armor, +1 Chain Mail'
        else if d100 == 31
          return 'Armor of Resistance (Chain Mail)'
        else if d100 == 32
          return 'Armor, +1 Chain Shirt'
        else if d100 == 33
          return 'Armor of Resistance (Chain Shirt'
        else if d100 == 34
          return 'Cloak of Displacement'
        else if d100 == 35
          return 'Cloak of the Bat'
        else if d100 == 36
          return 'Cube of Force'
        else if d100 == 37
          return 'Daern\'s Instant Fortress'
        else if d100 == 38
          return 'Dagger of Venom'
        else if d100 == 39
          return 'Dimensional Shackles'
        else if d100 == 40
          return 'Dragon Slayer'
        else if d100 == 41
          return 'Elven Chain'
        else if d100 == 42
          return 'Flame Tongue'
        else if d100 == 43
          return 'Gem of Seeing'
        else if d100 == 44
          return 'Giant Slayer'
        else if d100 == 45
          return 'Glamoured Studded Leather'
        else if d100 == 46
          return 'Helm of Teleportation'
        else if d100 == 47
          return 'Horn of Blasting'
        else if d100 == 48
          return 'Horn of Valhalla (silver or brass'
        else if d100 == 49
          return 'Instrument of the Bards (Canaith Mandolin'
        else if d100 == 50
          return 'Instrument of the Bards (Cli Lyre)'
        else if d100 == 51
          return 'Loun Stone (Awareness)'
        else if d100 == 52
          return 'Loun Stone (Protection)'
        else if d100 == 53
          return 'Loun Stone (Reserve)'
        else if d100 == 54
          return 'Loun Stone (Sustenance'
        else if d100 == 55
          return 'Iron Bands of Bilarro'
        else if d100 == 56
          return 'Armor, +1 leather'
        else if d100 == 57
          return 'Armor of Resistance (leather)'
        else if d100 == 58
          return 'Mace of Disruption'
        else if d100 == 59
          return 'Mace of Smiting'
        else if d100 == 60
          return 'Mace of Terror'
        else if d100 == 61
          return 'Mantle of Spell Resistance'
        else if d100 == 62
          return 'NEcklace of Prayer Beads'
        else if d100 == 63
          return 'Periapt of Proof Against Poison'
        else if d100 == 64
          return 'Ring of Animal Influence'
        else if d100 == 65
          return 'Ring of Evasion'
        else if d100 == 66
          return 'Ring of Feather Falling'
        else if d100 == 67
          return 'Ring of Free Action'
        else if d100 == 68
          return 'Ring of Protection'
        else if d100 == 69
          return 'Ring of Resistance'
        else if d100 == 70
          return 'Ring of Spell Storing'
        else if d100 == 71
          return 'Ring of the Ram'
        else if d100 == 72
          return 'Ring of X-ray Vision'
        else if d100 == 73
          return 'Rope of Eyes'
        else if d100 == 74
          return 'Rod of Rulership'
        else if d100 == 75
          return 'Rod of the Pact Keeper, +2'
        else if d100 == 76
          return 'Rope of Entanglement'
        else if d100 == 77
          return 'Armor, +1 Scale Mail'
        else if d100 == 78
          return 'Armor of Resistance (Scale Mail)'
        else if d100 == 79
          return 'Shield, +2'
        else if d100 == 80
          return 'Shield of Missile Attraction'
        else if d100 == 81
          return 'Staff of Charming'
        else if d100 == 82
          return 'Staff of Healing'
        else if d100 == 83
          return 'Staff of Swarming Insects'
        else if d100 == 84
          return 'Staff of the Woodlands'
        else if d100 == 85
          return 'Staff of Withering'
        else if d100 == 86
          return 'Stone of Controlling Earth Elementals'
        else if d100 == 87
          return 'Sun Blade'
        else if d100 == 88
          return 'Sword of Life Stealing'
        else if d100 == 89
          return 'Sword of Wounding'
        else if d100 == 90
          return 'Tentacle Rod'
        else if d100 == 91
          return 'Vicious Weapon'
        else if d100 == 92
          return 'Wand of Binding'
        else if d100 == 93
          return 'Wand of Enemy Detection'
        else if d100 == 94
          return 'Wand of Fear'
        else if d100 == 95
          return 'Wand of Fireballs'
        else if d100 == 96
          return 'Wand of Lightning Bolts'
        else if d100 == 97
          return 'Wand of Paralysis'
        else if d100 == 98
          return 'Wand of the War Mage, +2)'
        else if d100 == 99
          return 'Wand of Wonder'
        else if d100 == 100
          return 'Wings of Flying'

      when 'h'
        if 0 <= d100 <= 10
          return 'Weapon, +3'
        else if 11 <= d100 <= 12
          return 'Amulet of the Planes'
        else if 13 <= d100 <= 14
          return 'Carpet of Flying'
        else if 15 <= d100 <= 16
          return 'Crystal Ball (very rare version)'
        else if 17 <= d100 <= 18
          return 'Ring of Regeneration'
        else if 19 <= d100 <= 20
          return 'Ring of Shooting Stars'
        else if 21 <= d100 <= 22
          return 'Ring of Telekinesis'
        else if 23 <= d100 <= 24
          return 'Robe of Scintillating Colors'
        else if 25 <= d100 <= 26
          return 'Robe of Stars'
        else if 27 <= d100 <= 28
          return 'Rod of Absorption'
        else if 29 <= d100 <= 30
          return 'Rod of Alertness'
        else if 31 <= d100 <= 32
          return 'Rod of Security'
        else if 33 <= d100 <= 34
          return 'Rod of the Pact Keeper, +3)'
        else if 35 <= d100 <= 36
          return 'Scimitar of Speed'
        else if 37 <= d100 <= 38
          return 'Shield, +3'
        else if 39 <= d100 <= 40
          return 'Staff of Fire'
        else if 41 <= d100 <= 42
          return 'Staff of Frost'
        else if 43 <= d100 <= 44
          return 'Staff of Power'
        else if 45 <= d100 <= 46
          return 'Staff of Striking'
        else if 47 <= d100 <= 48
          return 'Staff of Thunder and Lightning'
        else if 49 <= d100 <= 50
          return 'Sword of Sharpness'
        else if 51 <= d100 <= 52
          return 'Wand of Polymorph'
        else if 53 <= d100 <= 54
          return 'Wand of the War Mage, +3)'
        else if d100 == 55
          return 'Adamantine Armor (Half Plate)'
        else if d100 == 56
          return 'Adamantine Armor (Plate)'
        else if d100 == 57
          return 'Animated Shield'
        else if d100 == 58
          return 'Belt of Fire Giant Strength'
        else if d100 == 59
          return 'Belt of Frost (or Stone) Giant Strength'
        else if d100 == 60
          return 'Armor, +1 Breastplate'
        else if d100 == 61
          return 'Armor of Resistance (Breastplate)'
        else if d100 == 62
          return 'Candle of Invocation'
        else if d100 == 63
          return 'Armor, +2 Chain Mail'
        else if d100 == 64
          return 'Armor, +2 Chain Shirt'
        else if d100 == 65
          return 'Cloak of Arachnida'
        else if d100 == 66
          return 'Dancing Sword'
        else if d100 == 67
          return 'Demon Armor'
        else if d100 == 68
          return 'Dragon Scale Mail'
        else if d100 == 69
          return 'Dwarven Plate'
        else if d100 == 70
          return 'Dwarven Thrower'
        else if d100 == 71
          return 'Efreeti Bottle'
        else if d100 == 72
          return 'Figurine of Wondrous Power: Obsidian Steed'
        else if d100 == 73
          return 'Frost Brand'
        else if d100 == 74
          return 'Helm of Brilliance'
        else if d100 == 75
          return 'Horn of Valhalla (bronze)'
        else if d100 == 76
          return 'Instrument of the Bards (Anstruth Harp)'
        else if d100 == 77
          return 'Loun Stone (Absorption)'
        else if d100 == 78
          return 'Loun Stone (Agility)'
        else if d100 == 79
          return 'Loun Stone (Fortitude)'
        else if d100 == 80
          return 'Loun Stone (Insight)'
        else if d100 == 81
          return 'Loun Stone (Intellect)'
        else if d100 == 82
          return 'Loun Stone (Leadership)'
        else if d100 == 83
          return 'Loun Stone (Strength)'
        else if d100 == 84
          return 'Armor, +2 Leather'
        else if d100 == 85
          return 'Manual of Bodily Health'
        else if d100 == 86
          return 'Manual of Gainful Exercise'
        else if d100 == 87
          return 'Manual of Golems'
        else if d100 == 88
          return 'Manual of Quicness of Action'
        else if d100 == 89
          return 'Mirror of Life Trapping'
        else if d100 == 90
          return 'Nine Lives Stealer'
        else if d100 == 91
          return 'Oathbow'
        else if d100 == 92
          return 'Armor, +2 Scale Mail'
        else if d100 == 93
          return 'Spellguard Shield'
        else if d100 == 94
          return 'Armor, +1 Splint'
        else if d100 == 95
          return 'Armor of Resistance (Splint)'
        else if d100 == 96
          return 'Armor, +1 Studded Leather'
        else if d100 == 97
          return 'Armor of Resistance (Studded Leather)'
        else if d100 == 98
          return 'Tome of Clear Thought'
        else if d100 == 99
          return 'Tome of Leadership and Influence'
        else if d100 == 100
          return 'Tome of Understanding'

      when 'i'
        if 0 <= d100 <= 5
          return 'Defender'
        else if 6 <= d100 <= 10
          return 'Hammer of Thunderbolds'
        else if 11 <= d100 <= 15
          return 'Lucky Blade'
        else if 16 <= d100 <= 20
          return 'Sword of Asnwering'
        else if 21 <= d100 <= 23
          return 'Holy Avenger'
        else if 24 <= d100 <= 26
          return 'Ring of Djinni Summoning'
        else if 27 <= d100 <= 29
          return 'Ring of Invisiblity'
        else if 30 <= d100 <= 32
          return 'Ring of Spell Turning'
        else if 33 <= d100 <= 35
          return 'Rod of Lordly Might'
        else if 36 <= d100 <= 38
          return 'Staff of the Magi'
        else if 39 <= d100 <= 41
          return 'Vorpal Sword'
        else if 42 <= d100 <= 43
          return 'Belt of Cloud Giant Strength'
        else if 44 <= d100 <= 45
          return 'Armor, +2 Breasplate'
        else if 46 <= d100 <= 47
          return 'Armor, +3 Chain Mail'
        else if 48 <= d100 <= 49
          return 'Armor, +3 Chain Shirt'
        else if 50 <= d100 <= 51
          return 'Cloak of Invisibility'
        else if 52 <= d100 <= 53
          return 'Crystal Ball (Legendary Version)'
        else if 54 <= d100 <= 55
          return 'Armor, +1 Half Plate'
        else if 56 <= d100 <= 57
          return 'Iron Flask'
        else if 58 <= d100 <= 59
          return 'Armor, +3 Leather'
        else if 60 <= d100 <= 61
          return 'Armor, +1 Plate'
        else if 62 <= d100 <= 63
          return 'Robe of the Archmagi'
        else if 64 <= d100 <= 65
          return 'Rod of Resurrection'
        else if 66 <= d100 <= 67
          return 'Armor, +1 Scale Mail'
        else if 68 <= d100 <= 69
          return 'Scarab of Protection'
        else if 70 <= d100 <= 71
          return 'Armor, +1 Splint'
        else if 72 <= d100 <= 73
          return 'Armor, +2 Studded Leather'
        else if 74 <= d100 <= 75
          return 'Well of Many Worlds'
        else if d100 == 76
          switch Utils.dice.d12()
            when 1, 2
              return 'Armor, +2 Half Plate'
            when 3, 4
              return 'Armor, +2 Plate'
            when 5, 6
              return 'Armor, +3 Studded Leather'
            when 7, 8
              return 'Armor, +3 Breastplate'
            when 9, 10
              return 'Armor, +3 Splint'
            when 11
              return 'Armor, +3 Half Plate'
            when 12
              return 'Armor, +3 Plate'
        else if d100 == 77
          return 'Apparatus of Kwalish'
        else if d100 == 78
          return 'Armor of Invulnerability'
        else if d100 == 79
          return 'Belt of Storm Giant Strength'
        else if d100 == 80
          return 'Cubic Gate'
        else if d100 == 81
          return 'Deck of Many Things'
        else if d100 == 82
          return 'Efreeti Chain'
        else if d100 == 83
          return 'Armor of Resistance (Half Plate)'
        else if d100 == 84
          return 'Horn of Valhalla (iron)'
        else if d100 == 85
          return 'Instrument of the Bards (Ollamh Harp)'
        else if d100 == 86
          return 'Loun Stone (Greater Absorption)'
        else if d100 == 87
          return 'Loun Stone (Mastery)'
        else if d100 == 88
          return 'Loun Stone (Regeneration)'
        else if d100 == 89
          return 'Plate Armor of Etherealness'
        else if d100 == 90
          return 'Plate Armor of Resistance'
        else if d100 == 91
          return 'Ring of Air Elemental Command'
        else if d100 == 92
          return 'Ring of Earth Elemental Command'
        else if d100 == 93
          return 'Ring of Fire Elemental Command'
        else if d100 == 94
          return 'Ring of Three Wishes'
        else if d100 == 95
          return 'Ring of Water Elemental Command'
        else if d100 == 96
          return 'Sphere of Annihilation'
        else if d100 == 97
          return 'Talisman of Pure Good'
        else if d100 == 98
          return 'Talisman of the Sphere'
        else if d100 == 99
          return 'Talisman of Ultimate Evil'
        else if d100 == 100
          return 'Tome of the Stilled Tongue'


Treasure = new Treasure()

###Treasure.db.allow
  insert: (userId, doc) ->
    if (Roles.userIsInRole(Meteor.user()._id, 'admin') || Roles.userIsInRole(Meteor.user()._id, 'treasure-editor', 'global'))
      return true
    else if (userId == doc.userId)
      return true
    else
      return false
  update: (userId, doc) ->
    if (Roles.userIsInRole(Meteor.user()._id, 'admin') || Roles.userIsInRole(Meteor.user()._id, 'treasure-editor', 'global'))
      return true
    else if (userId == doc.userId)
      return true
    else
      return false###