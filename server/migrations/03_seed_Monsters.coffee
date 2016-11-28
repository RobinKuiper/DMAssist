Migrations.add
  version: 3
  name: 'Seed Monsters'
  down: -> Monster.remove {}
  up: ->
    monsters = [
      
      {
        "_id" : "CajPDYTXJ7jfjZvGx",
        "name" : "Piercer",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "3d8",
        "hp" : 22,
        "speed" : {
          "normal" : 5,
          "climb" : 60
        },
        "skills" : [
          "Stealth +5"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 60 ft.",
          "passive Perception 8"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "ahyJz9rTigcDsoXXW",
        "name" : "Pteranodon",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "3d8",
        "hp" : 13,
        "speed" : {
          "normal" : 10,
          "fly" : 60
        },
        "skills" : [
          "Perception +1"
        ],
        "senses" : [
          "passive Perception 11"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "WJMRbkSBacaxn59jw",
        "name" : "Shoalar Quanderil",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "acid"
          ]
        },
        "ac" : 10,
        "hitDice" : "8d8",
        "hp" : 60,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Arcana +4",
          "Deception +5",
          "Insight +2",
          "Persuasion +5"
        ],
        "damageResistances" : [
          "acid"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "Aquan",
          "Common"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "ebS3heGAr4LEab5Nq",
        "name" : "Skyweaver",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "8d8",
        "hp" : 44,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +5",
          "Persuasion +5"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "Auran",
          "Common"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "GGLJ2AzjAFkQGvLaM",
        "name" : "Thurl Merosska",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "11d8",
        "hp" : 71,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Animal Handling +2",
          "Athletics +5",
          "Deception +4,"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "Auran",
          "Common"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "EhChzzPGEq3xvt6pi",
        "name" : "Troglodyte",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "2d8",
        "hp" : 13,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Stealth +2"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Troglodyte"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "mfipv77k8YkLKbyb9",
        "name" : "Umber Hulk",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "11d10",
        "hp" : 93,
        "speed" : {
          "normal" : 30,
          "burrow" : 20
        },
        "senses" : [
          "darkvision 120 ft.",
          "tremorsense 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Umber Hulk"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "TniweeaPZvGDm9dga",
        "name" : "Winged Kobold",
        "type" : "Humanoid",
        "size" : "Small",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "3d6",
        "hp" : 7,
        "speed" : {
          "normal" : 30,
          "fly" : 30
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 8"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "6xtc5B84QSiLzezWm",
        "name" : "Yeti",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "6d10",
        "hp" : 51,
        "speed" : {
          "normal" : 40,
          "climb" : 40
        },
        "skills" : [
          "Perception +3",
          "Stealth +3"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Yeti"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "E9C48GR8mxvZneWHk",
        "name" : "Yuan-ti Abomination",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "-",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "15d10",
        "hp" : 127,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +5",
          "Stealth +6"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 15"
        ],
        "languages" : [
          "Abyssal",
          "Common",
          "Draconic"
        ],
        "xp" : "2900",
        "cr" : 7
      }

      
      {
        "_id" : "vTXxvpmicsBuJwT4Z",
        "name" : "Yuan-ti Malison",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "-",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "12d8",
        "hp" : 66,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +5",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Abyssal",
          "Common",
          "Draconic"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "cT4nnACqmcSuQQ27n",
        "name" : "Yuan-ti Pureblood",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "9d8",
        "hp" : 40,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +6",
          "Perception +3",
          "Stealth +3"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Abyssal",
          "Common",
          "Draconic"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "vJB9Y9AztvDA9HQ4D",
        "name" : "Scout",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "3d8",
        "hp" : 16,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Nature +4",
          "Perception +5",
          "Stealth +6",
          "Survival +5"
        ],
        "senses" : [
          "passive Perception 15"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "h6EhNZNKEZB3rvDP3",
        "name" : "Spy",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "6d8",
        "hp" : 27,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +5",
          "Insight +4",
          "Investigation +5",
          "Perception +6",
          "Persuasion +5",
          "Sleight of Hand +4",
          "Stealth +4"
        ],
        "senses" : [
          "passive Perception 16"
        ],
        "languages" : [
          "any two languages"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "BjMNWJoiXAAThPcMe",
        "name" : "Thug",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "anyNonGood",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "5d8",
        "hp" : 32,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Intimidation +2"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "zZjthHKkd65TSqQJT",
        "name" : "Tribal Warrior",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "any one language"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "iZrvnNzQzQi974S2N",
        "name" : "Veteran",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "9d8",
        "hp" : 58,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Athletics +5",
          "Perception +2"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "3WE77eSSJypXuFQjA",
        "name" : "Aarakocra",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NG",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "3d8",
        "hp" : 13,
        "speed" : {
          "normal" : 20,
          "fly" : 50
        },
        "skills" : [
          "Perception +5"
        ],
        "senses" : [
          "passive Perception 15"
        ],
        "languages" : [
          "Auran"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "sHyTF3khv4wWAznrT",
        "name" : "Allosaurus",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "6d10",
        "hp" : 51,
        "speed" : {
          "normal" : 60
        },
        "skills" : [
          "Perception +5"
        ],
        "senses" : [
          "passive Perception 15"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "7Ptpk8wbafTb656Qa",
        "name" : "Ankylosaurus",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "8d12",
        "hp" : 68,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "passive Perception 11"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "cP5DPWAoALSMmEAnn",
        "name" : "Black Earth Priest",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "7d8",
        "hp" : 45,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Intimidation +5",
          "Religion +3",
          "Persuasion +5"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "Common",
          "Terran"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "CuwRyQFMvxJ4rquH7",
        "name" : "Bullywug",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 20,
          "swim" : 40
        },
        "skills" : [
          "Stealth +3"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "Bullywug"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "cG6v4peBAc3ZcXjop",
        "name" : "Crawling Claw",
        "type" : "Undead",
        "size" : "Tiny",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d4",
        "hp" : 2,
        "speed" : {
          "normal" : 20,
          "climb" : 20
        },
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "poisoned"
        ],
        "senses" : [
          "blindsight 30 ft. (blind beyond this radius),"
        ],
        "languages" : [
          "understands Common but can"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "w7Dg2hNJH6DNGq2n2",
        "name" : "Crushing Wave Priest",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "8d8",
        "hp" : 52,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +5",
          "Religion +2",
          "Stealth +2"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "Aquan",
          "Common"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "xrSfXJeHbvhbJSLbZ",
        "name" : "Crushing Wave Reaver",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "4d8",
        "hp" : 22,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Athletics +4",
          "Stealth +4"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "Common"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "x5z7TZZ5WE8qHadrb",
        "name" : "Cyclops",
        "type" : "Giant",
        "size" : "Huge",
        "alignment" : "CN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "12d12",
        "hp" : 138,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "passive Perception 8"
        ],
        "languages" : [
          "Giant"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "wFcSL8vgjCSyCJrFs",
        "name" : "Dao",
        "type" : "Elemental",
        "size" : "Large",
        "alignment" : "NE",
        "immunities" : {
          "conditions" : [
            "petrified"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "15d10",
        "hp" : 187,
        "speed" : {
          "normal" : 30,
          "burrow" : 30,
          "fly" : 30
        },
        "savingThrows" : [
          "Int +5",
          "Wis +5",
          "Cha +6"
        ],
        "conditionImmunities" : [
          "petrified"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Terran"
        ],
        "xp" : "7200",
        "cr" : 11
      }

      
      {
        "_id" : "Z46KQPSBPY82kCTzk",
        "name" : "Drow Mage",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "10d8",
        "hp" : 45,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Arcana +6",
          "Deception +5",
          "Perception +4",
          "Stealth +5"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Elvish",
          "Undercommon"
        ],
        "xp" : "2900",
        "cr" : 7
      }

      
      {
        "_id" : "zr2ttqr2bHiS99zGC",
        "name" : "Fathomer",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "8d8",
        "hp" : 52,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Arcana +2",
          "Perception +4",
          "Stealth +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "languages" : [
          "Aquan",
          "Common"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "2h6NnwSx7W25Xp9iY",
        "name" : "Feathergale Knight",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "6d8",
        "hp" : 33,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Animal Handling +2",
          "History +2"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "Auran",
          "Common"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "n5GoK34bwuNMiBZ8n",
        "name" : "Fire Snake",
        "type" : "Elemental",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical weapons"
          ]
        },
        "ac" : 14,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 30
        },
        "vulnerabilities" : [
          "cold"
        ],
        "damageVulnerabilities" : [
          "cold"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical weapons"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "understands Ignan but can"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "vfPBD5oR2qXxiXhNu",
        "name" : "Flameskull",
        "type" : "Undead",
        "size" : "Tiny",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "cold",
            "fire",
            "poison"
          ],
          "conditions" : [
            "charmed",
            "frightened",
            "paralyzed",
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "lightning",
            "necrotic",
            "piercing"
          ]
        },
        "ac" : 13,
        "hitDice" : "9d4",
        "hp" : 40,
        "speed" : {
          "normal" : 0,
          "fly" : 40
        },
        "skills" : [
          "Arcana +5",
          "Perception +2"
        ],
        "damageResistances" : [
          "lightning",
          "necrotic",
          "piercing"
        ],
        "damageImmunities" : [
          "cold",
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "paralyzed",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Common"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "eBpcL3GYtwRJZMKwj",
        "name" : "Galeb Duhr",
        "type" : "Elemental",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "paralyzed",
            "poisoned",
            "petrified"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical weapons"
          ]
        },
        "ac" : 16,
        "hitDice" : "9d8",
        "hp" : 85,
        "speed" : {
          "normal" : NaN
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical weapons"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "paralyzed",
          "poisoned",
          "petrified"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "tremorsense 60 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Terran"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "GuKg8K8qsSP5xdosG",
        "name" : "Gnoll Pack Lord",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "9d8",
        "hp" : 49,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Gnoll"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "zDeJdTreNrpJBKMHQ",
        "name" : "Grell",
        "type" : "Aberration",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "lightning"
          ],
          "conditions" : [
            "blinded",
            "prone"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "10d8",
        "hp" : 55,
        "speed" : {
          "normal" : 10,
          "fly" : 30
        },
        "skills" : [
          "Perception +4",
          "Stealth +6"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "conditionImmunities" : [
          "blinded",
          "prone"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 14"
        ],
        "languages" : [
          "Grell"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "tAY6z6P2hi37vPA45",
        "name" : "Half-Ogre",
        "type" : "Giant",
        "size" : "Large",
        "alignment" : "anyChaotic",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "4d10",
        "hp" : 30,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 9"
        ],
        "languages" : [
          "Common",
          "Giant"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "YpY5m7ar8yXJj6W6F",
        "name" : "Hobgoblin Captain",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "6d8",
        "hp" : 39,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Common",
          "Goblin"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "t5avED3rivwDhJun6",
        "name" : "Hook Horror",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "10d10",
        "hp" : 75,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 10 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Hook Horror"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "HAE6nohoNcRy5yovk",
        "name" : "Howling Hatred Initiate",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "2d8",
        "hp" : 9,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +2",
          "Religion +2",
          "Stealth +4"
        ],
        "senses" : [
          "passive Perception 9"
        ],
        "languages" : [
          "Common"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "7S8tL2vr7iC7e5Dfv",
        "name" : "Hurricane",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "6d8",
        "hp" : 33,
        "speed" : {
          "normal" : 45
        },
        "skills" : [
          "Acrobatics +5"
        ],
        "senses" : [
          "passive Perception 11"
        ],
        "languages" : [
          "Auran",
          "Common"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "9L8xadPrnLxkt8cum",
        "name" : "Jackalwere",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing damage from nonmagical weapons that aren"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "4d8",
        "hp" : 18,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Deception +4",
          "Perception +2",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "bludgeoning",
          "piercing",
          "and slashing damage from nonmagical weapons that aren"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "Common (can"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "AdjJytidqSSRT7REk",
        "name" : "Kenku",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "3d8",
        "hp" : 13,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +4",
          "Perception +2",
          "Stealth +5"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "understands Auran and Common but speaks only through the use of its Mimicry trait"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "6fWWmwzYBAuSnyyC5",
        "name" : "Kuo-toa",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "4d8",
        "hp" : 18,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Undercommon"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "5CWHQ8RTan22vmXQm",
        "name" : "Kuo-toa Archpriest",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "13d8",
        "hp" : 97,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +9",
          "Religion +6"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 19"
        ],
        "languages" : [
          "Undercommon"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "ZttqEJrrc7vPAugEh",
        "name" : "Kuo-toa Monitor",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "10d8",
        "hp" : 65,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +6",
          "Religion +4"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 16"
        ],
        "languages" : [
          "Undercommon"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "cSCKpdJfMfw6uarG2",
        "name" : "Kuo-toa Whip",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "10d8",
        "hp" : 65,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +6",
          "Religion +4"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 16"
        ],
        "languages" : [
          "Undercommon"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "Wserr8m4YtEt2soPE",
        "name" : "Lizard King/Queen",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "conditions" : [
            "frightened"
          ]
        },
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "12d8",
        "hp" : 78,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "savingThrows" : [
          "Con +4",
          "Wis +2"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +5",
          "Survival +4"
        ],
        "conditionImmunities" : [
          "frightened"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Abyssal",
          "Draconic"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "AjXRyhwLgFKAB3uEP",
        "name" : "Lizardfolk Shaman",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "5d8",
        "hp" : 27,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +4",
          "Stealth +4",
          "Survival +6"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "AbBubLMSqjJZsCd2c",
        "name" : "Mud Mephit",
        "type" : "Elemental",
        "size" : "Small",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "6d6",
        "hp" : 27,
        "speed" : {
          "normal" : 20,
          "fly" : 20,
          "swim" : 20
        },
        "skills" : [
          "Stealth +3"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Aquan",
          "Terran"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "vBTWeJ9SFiqfXieeg",
        "name" : "Mezzoloth",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "acid",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 18,
        "hitDice" : "10d8",
        "hp" : 75,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +3"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "acid",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Abyssal",
          "Infernal",
          "telepathy 60 ft."
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "dzCjtYxrdtnSxPTEe",
        "name" : "Nothic",
        "type" : "Aberration",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "6d8",
        "hp" : 45,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Arcana +3",
          "Insight +4",
          "Perception +2",
          "Stealth +5"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Undercommon"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "EZbW8hg8rLTBE37Zs",
        "name" : "Nycaloth",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "acid",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 18,
        "hitDice" : "13d10",
        "hp" : 123,
        "speed" : {
          "normal" : 40,
          "fly" : 60
        },
        "skills" : [
          "Intimidation +6",
          "Perception +4",
          "Stealth +4"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "acid",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Abyssal",
          "Infernal",
          "telepathy 60 ft."
        ],
        "xp" : "5000",
        "cr" : 9
      }

      
      {
        "_id" : "EAtpybHZnjXXR4rtZ",
        "name" : "Orc Eye of Gruumsh",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "6d8",
        "hp" : 45,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Intimidation +3",
          "Religion +1"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Common",
          "Orc"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "xoogczfokct9aFeap",
        "name" : "Oreioth",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "6d8",
        "hp" : 39,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Wis +1"
        ],
        "skills" : [
          "Arcana +5",
          "Investigation +5",
          "Medicine +1"
        ],
        "senses" : [
          "passive Perception 9"
        ],
        "languages" : [
          "Abyssal",
          "Common"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "2FNFv3aDDxPWCD6g3",
        "name" : "Orog",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "5d8",
        "hp" : 42,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Intimidation +5",
          "Survival +2"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Common",
          "Orc"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "a8JFSvHHnkWzPmh5K",
        "name" : "Peryton",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical weapons"
          ]
        },
        "ac" : 13,
        "hitDice" : "6d8",
        "hp" : 33,
        "speed" : {
          "normal" : 20,
          "fly" : 60
        },
        "skills" : [
          "Perception +5"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical weapons"
        ],
        "senses" : [
          "passive Perception 15"
        ],
        "languages" : [
          "understands Common and Elvish but can"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "frsBC5Cff55QJQ9Fh",
        "name" : "Revenant",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "paralyzed",
            "poisoned",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "necrotic",
            "psychic"
          ]
        },
        "ac" : 13,
        "hitDice" : "16d8",
        "hp" : 136,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Str +7",
          "Con +7",
          "Wis +6",
          "Cha +7"
        ],
        "damageResistances" : [
          "necrotic",
          "psychic"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "paralyzed",
          "poisoned",
          "stunned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "the languages it knew in life"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "fTRH2Cs38Af7nSo7J",
        "name" : "Smoke Mephit",
        "type" : "Elemental",
        "size" : "Small",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "5d6",
        "hp" : 22,
        "speed" : {
          "normal" : 30,
          "fly" : 30
        },
        "skills" : [
          "Perception +2",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Auran",
          "Ignan"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "BSNvg64DgjY5XfSnD",
        "name" : "Twig Blight",
        "type" : "Plant",
        "size" : "Small",
        "alignment" : "NE",
        "immunities" : {
          "conditions" : [
            "blinded",
            "deafened"
          ]
        },
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "1d6",
        "hp" : 4,
        "speed" : {
          "normal" : 20
        },
        "skills" : [
          "Stealth +3"
        ],
        "vulnerabilities" : [
          "fire"
        ],
        "damageVulnerabilities" : [
          "fire"
        ],
        "conditionImmunities" : [
          "blinded",
          "deafened"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius),"
        ],
        "languages" : [
          "understands Common but can"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "mhRx4RDTFpmYozxLr",
        "name" : "Water Weird",
        "type" : "Elemental",
        "size" : "Large",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "grappled",
            "paralyzed",
            "poisoned",
            "restrained",
            "prone",
            "unconscious"
          ]
        },
        "resistances" : {
          "damage" : [
            "fire"
          ]
        },
        "ac" : 13,
        "hitDice" : "9d10",
        "hp" : 58,
        "speed" : {
          "normal" : 0,
          "swim" : 60
        },
        "damageResistances" : [
          "fire"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "grappled",
          "paralyzed",
          "poisoned",
          "restrained",
          "prone",
          "unconscious"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "understands Aquan but doesn"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "9W2uJ3LNeQ2Nvrt7d",
        "name" : "Giant Spider",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "4d10",
        "hp" : 26,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "skills" : [
          "Stealth +7"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "Xt492rj4srq38r3fj",
        "name" : "Giant Toad",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "6d10",
        "hp" : 39,
        "speed" : {
          "normal" : 20,
          "swim" : 40
        },
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 10"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "ifWbDATvCGhgmdz4p",
        "name" : "Giant Vulture",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "3d10",
        "hp" : 22,
        "speed" : {
          "normal" : 10,
          "fly" : 60
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "languages" : [
          "understands Common but can"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "5Zrap53ESfwJEijSo",
        "name" : "Giant Wasp",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "3d8",
        "hp" : 13,
        "speed" : {
          "normal" : 10,
          "fly" : 50
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "kZQX6dFFN6brjA7nT",
        "name" : "Giant Weasel",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "2d8",
        "hp" : 9,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +3",
          "Stealth +5"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "mLiGrLSsdm7cbZxSn",
        "name" : "Giant Wolf Spider",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 40,
          "climb" : 40
        },
        "skills" : [
          "Perception +3",
          "Stealth +7"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "D8TLbTZbTLYMqKWPi",
        "name" : "Gibbering Mouther",
        "type" : "Aberration",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {
          "conditions" : [
            "prone"
          ]
        },
        "resistances" : {},
        "ac" : 9,
        "hitDice" : "9d8",
        "hp" : 67,
        "speed" : {
          "normal" : 10,
          "swim" : 10
        },
        "conditionImmunities" : [
          "prone"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "TqYcSwG4dDdXFYgPt",
        "name" : "Gnoll",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Gnoll"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "9sDyKTJCBrXTvqfjF",
        "name" : "Gnome, Deep (Svirfneblin)",
        "type" : "Humanoid",
        "size" : "Small",
        "alignment" : "NG",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "3d6",
        "hp" : 16,
        "speed" : {
          "normal" : 20
        },
        "skills" : [
          "Investigation +3",
          "Perception +2",
          "Stealth +4"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Gnomish",
          "Terran",
          "Undercommon"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "DkeYZhJKXeyCPNXHS",
        "name" : "Goat",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "1d8",
        "hp" : 4,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "neKQcsBxDADCw3iur",
        "name" : "Goblin",
        "type" : "Humanoid",
        "size" : "Small",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "2d6",
        "hp" : 7,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Stealth +6"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 9"
        ],
        "languages" : [
          "Common",
          "Goblin"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "Hd5cNmNyprYF5BFBd",
        "name" : "Gorgon",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "petrified"
          ]
        },
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "12d10",
        "hp" : 114,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +4"
        ],
        "conditionImmunities" : [
          "petrified"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "vTXH6Seq9RPdkZrNs",
        "name" : "Grick",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks"
          ]
        },
        "ac" : 14,
        "hitDice" : "6d8",
        "hp" : 27,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "m94nYNpZAkq9Lwxwx",
        "name" : "Green Hag",
        "type" : "Fey",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "11d8",
        "hp" : 82,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Arcana +3",
          "Deception +4",
          "Perception +4",
          "Stealth +3"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Common",
          "Draconic",
          "Sylvan"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "N7hDfsCqZdt9D3DRx",
        "name" : "Griffon",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "7d10",
        "hp" : 59,
        "speed" : {
          "normal" : 30,
          "fly" : 80
        },
        "skills" : [
          "Perception +5"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 15"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "YTdJCd3yDGcrNjojF",
        "name" : "Half-Red Dragon Veteran",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "10d8",
        "hp" : 65,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Athletics +5",
          "Perception +2"
        ],
        "Damage" : "Resistances fire ",
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "YnQgbrFG2xXTApaGf",
        "name" : "Harpy",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "7d8",
        "hp" : 38,
        "speed" : {
          "normal" : 20,
          "fly" : 40
        },
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "Common"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "iMmMKkFBydhW8sLbt",
        "name" : "Hawk",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 10,
          "fly" : 60
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "DeKKvqi3noBAC2Gth",
        "name" : "Hell Hound",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "7d8",
        "hp" : 45,
        "speed" : {
          "normal" : 50
        },
        "skills" : [
          "Perception +5"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 15"
        ],
        "languages" : [
          "understands Infernal but can"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "9kpfuALWfQsgyFfaK",
        "name" : "Hill Giant",
        "type" : "Giant",
        "size" : "Huge",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "10d12",
        "hp" : 105,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +2"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "Giant"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "7PHKyXucMg7PjkhYS",
        "name" : "Hippogriff",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "3d10",
        "hp" : 19,
        "speed" : {
          "normal" : 40,
          "fly" : 60
        },
        "skills" : [
          "Perception +5"
        ],
        "senses" : [
          "passive Perception 15"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "CRNEyRkhX93hoxxZc",
        "name" : "Hobgoblin",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Common",
          "Goblin"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "Ff9BqoLF5AAx8JFd6",
        "name" : "Hunter Shark",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "6d10",
        "hp" : 45,
        "speed" : {
          "normal" : 0,
          "swim" : 40
        },
        "skills" : [
          "Perception +2"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "passive Perception 12"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "7DwbXbzjS3J9AfwSt",
        "name" : "Hydra",
        "type" : "Monstrosity",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "15d12",
        "hp" : 172,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +6"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 16"
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "6KDAQLkky5rRcKoAL",
        "name" : "Hyena",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "1d8",
        "hp" : 5,
        "speed" : {
          "normal" : 50
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "5euKnxPJ5F9xRPF7m",
        "name" : "Iron Golem",
        "type" : "Construct",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "fire",
            "poison",
            "psychic"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "paralyzed",
            "petrified",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 20,
        "hitDice" : "20d10",
        "hp" : 210,
        "speed" : {
          "normal" : 30
        },
        "damageImmunities" : [
          "fire",
          "poison",
          "psychic"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "paralyzed",
          "petrified",
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 10319"
        ],
        "languages" : [
          "understands the languages of its creator but can"
        ],
        "xp" : "15000",
        "cr" : 16
      }

      
      {
        "_id" : "WNCfKopabjAdos7u9",
        "name" : "Jackal",
        "type" : "Beast",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d6",
        "hp" : 3,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "Q7jESfyvddxHrMYtb",
        "name" : "Killer Whale",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "12d12",
        "hp" : 90,
        "speed" : {
          "normal" : 0,
          "swim" : 60
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "blindsight 120 ft.",
          "passive Perception 13"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "3NYWQ2X4C3novkMDr",
        "name" : "Kobold",
        "type" : "Humanoid",
        "size" : "Small",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "2d6",
        "hp" : 5,
        "speed" : {
          "normal" : NaN
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 8"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "jhDtcosxBSKp3BErB",
        "name" : "Kraken",
        "type" : "Monstrosity",
        "size" : "Gargantuan",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "lightning"
          ],
          "conditions" : [
            "frightened",
            "paralyzed"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "27d20",
        "hp" : 472,
        "speed" : {
          "normal" : 20,
          "swim" : 60
        },
        "savingThrows" : [
          "Str +17",
          "Dex +7",
          "Con +14",
          "Int +13",
          "Wis +11"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "conditionImmunities" : [
          "frightened",
          "paralyzed"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "understands Abyssal",
          "Celestial",
          "Infernal",
          "and Primordial but can"
        ],
        "xp" : "50000",
        "cr" : 23
      }

      
      {
        "_id" : "xnyMAnimC2s2KwPrJ",
        "name" : "Lamia",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "13d10",
        "hp" : 97,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +7",
          "Insight +4",
          "Stealth +3"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Abyssal",
          "Common"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "w63vYyJ2Pn4f427j9",
        "name" : "Lemure",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "charmed",
            "frightened",
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 7,
        "hitDice" : "3d8",
        "hp" : 13,
        "speed" : {
          "normal" : 15
        },
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "understands Infernal but can"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "EcgqRu3fmSWHMzHcr",
        "name" : "Lich",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "anyEvil",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "paralyzed",
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "lightning",
            "necrotic"
          ]
        },
        "ac" : 17,
        "hitDice" : "18d8",
        "hp" : 135,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Con +10",
          "Int +12",
          "Wis +9"
        ],
        "skills" : [
          "Arcana +18",
          "History +12",
          "Insight +9",
          "Perception +9"
        ],
        "damageResistances" : [
          "cold",
          "lightning",
          "necrotic"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "paralyzed",
          "poisoned"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 19"
        ],
        "languages" : [
          "Common plus up to five other languages"
        ],
        "xp" : "33000",
        "cr" : 21
      }

      
      {
        "_id" : "zsuE5y8obCAmQqnog",
        "name" : "Lion",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "4d10",
        "hp" : 26,
        "speed" : {
          "normal" : 50
        },
        "skills" : [
          "Perception +3",
          "Stealth +6"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "t6g92qdxYifXpo8C2",
        "name" : "Lizard",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "1d4",
        "hp" : 2,
        "speed" : {
          "normal" : 20,
          "climb" : 20
        },
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 9"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "3vcYuL68XYYkkzxaK",
        "name" : "Lizardfolk",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "4d8",
        "hp" : 22,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +3",
          "Stealth +4",
          "Survival +5"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "uiY8JE6kAke7xafDL",
        "name" : "Magma Mephit",
        "type" : "Elemental",
        "size" : "Small",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "5d6",
        "hp" : 22,
        "speed" : {
          "normal" : 30,
          "fly" : 30
        },
        "skills" : [
          "Stealth +3"
        ],
        "vulnerabilities" : [
          "cold"
        ],
        "damageVulnerabilities" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Ignan",
          "Terran"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "n747AwMxgzHGAZFt2",
        "name" : "Magmin",
        "type" : "Elemental",
        "size" : "Small",
        "alignment" : "CN",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks"
          ]
        },
        "ac" : 14,
        "hitDice" : "2d6",
        "hp" : 9,
        "speed" : {
          "normal" : 30
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Ignan"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "Ndwh6z9B4wqekCgea",
        "name" : "Mammoth",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "11d12",
        "hp" : 126,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "18",
        "cr" : 6
      }

      
      {
        "_id" : "miEMDBZwXmsQPHSfm",
        "name" : "Marilith",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 18,
        "hitDice" : "18d10",
        "hp" : 189,
        "speed" : {
          "normal" : 40
        },
        "savingThrows" : [
          "Str +9",
          "Con +10",
          "Wis +8",
          "Cha +10"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Abyssal",
          "telepathy 120 ft."
        ],
        "xp" : "15000",
        "cr" : 16
      }

      
      {
        "_id" : "Toaak3MhJKEgCKzbR",
        "name" : "Manticore",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "8d10",
        "hp" : 68,
        "speed" : {
          "normal" : 30,
          "fly" : 50
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Common"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "iBdwP4jPoNPfZNYwX",
        "name" : "Mastiff",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d8",
        "hp" : 5,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "8zNJ8m6Z4M2saLo2t",
        "name" : "Medusa",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "17d8",
        "hp" : 127,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +5",
          "Insight +4",
          "Perception +4",
          "Stealth +5"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Common"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "JSwy4nAnWgFyHyimy",
        "name" : "Merfolk",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 10,
          "swim" : 40
        },
        "skills" : [
          "Perception +2"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "Aquan",
          "Common"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "G7rpTBMdMzcmPSd5Y",
        "name" : "Merrow",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "6d10",
        "hp" : 45,
        "speed" : {
          "normal" : 10,
          "swim" : 40
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Abyssal",
          "Aquan"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "Pue6jpNw8amamzrwP",
        "name" : "Mimic",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "acid"
          ],
          "conditions" : [
            "prone"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "9d8",
        "hp" : 58,
        "speed" : {
          "normal" : 15
        },
        "skills" : [
          "Stealth +5"
        ],
        "damageImmunities" : [
          "acid"
        ],
        "conditionImmunities" : [
          "prone"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "FKPf5w2s6b6TmFX6n",
        "name" : "Minotaur",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "9d10",
        "hp" : 76,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +7"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 17"
        ],
        "languages" : [
          "Abyssal"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "guuuyokWZJ4HGNefQ",
        "name" : "Minotaur Skeleton",
        "type" : "Undead",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "9d10",
        "hp" : 67,
        "speed" : {
          "normal" : 40
        },
        "vulnerabilities" : [
          "bludgeoning"
        ],
        "damageVulnerabilities" : [
          "bludgeoning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 9"
        ],
        "languages" : [
          "understands Abyssal but can"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "8uRqTcPFKgJNPCe2P",
        "name" : "Mule",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "uM3rvqujhvS3jHx4o",
        "name" : "Mummy",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "necrotic",
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "paralyzed",
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks"
          ]
        },
        "ac" : 11,
        "hitDice" : "9d8",
        "hp" : 58,
        "speed" : {
          "normal" : 20
        },
        "savingThrows" : [
          "Wis +2 Damage Vulnerabilities fire"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks"
        ],
        "damageImmunities" : [
          "necrotic",
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "paralyzed",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "the languages it knew in life"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "CnRNEncPeEfZ3bYrF",
        "name" : "Mummy Lord",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "necrotic",
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "paralyzed",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "13d8",
        "hp" : 97,
        "speed" : {
          "normal" : 20
        },
        "savingThrows" : [
          "Con +8",
          "Int +5",
          "Wis +9",
          "Cha +8"
        ],
        "skills" : [
          "History +5",
          "Religion +5 Damage Vulnerabilities fire"
        ],
        "damageImmunities" : [
          "necrotic",
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "paralyzed",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "the languages it knew in life"
        ],
        "xp" : "13000",
        "cr" : 15
      }

      
      {
        "_id" : "w3Qa2e8E9Tzbigb7t",
        "name" : "Nalfeshnee",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 18,
        "hitDice" : "16d10",
        "hp" : 184,
        "speed" : {
          "normal" : 20,
          "fly" : 30
        },
        "savingThrows" : [
          "Con +11",
          "Int +9",
          "Wis +6",
          "Cha +7"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Abyssal",
          "telepathy 120 ft."
        ],
        "xp" : "10000",
        "cr" : 13
      }

      
      {
        "_id" : "aJi2WYRFf3i3M4BHJ",
        "name" : "Night Hag",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {
          "conditions" : [
            "charmed"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire"
          ]
        },
        "ac" : 17,
        "hitDice" : "15d8",
        "hp" : 112,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +7",
          "Insight +6",
          "Perception +6",
          "Stealth +6"
        ],
        "damageResistances" : [
          "cold",
          "fire"
        ],
        "conditionImmunities" : [
          "charmed"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 16"
        ],
        "languages" : [
          "Abyssal",
          "Common",
          "Infernal",
          "Primordial"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "fPG32icweZ4D8qeSm",
        "name" : "Nightmare",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "8d10",
        "hp" : 68,
        "speed" : {
          "normal" : 60,
          "fly" : 90
        },
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "passive Perception 11"
        ],
        "languages" : [
          "understands Abyssal",
          "Common",
          "and Infernal but can"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "aSdM2pYHBYvcWXpbW",
        "name" : "Ochre Jelly",
        "type" : "Ooze",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "lightning",
            "slashing"
          ],
          "conditions" : [
            "blinded",
            "charmed",
            "deafened",
            "exhaustion",
            "frightened",
            "prone"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid"
          ]
        },
        "ac" : 8,
        "hitDice" : "6d10",
        "hp" : 45,
        "speed" : {
          "normal" : 10,
          "climb" : 10
        },
        "damageResistances" : [
          "acid"
        ],
        "damageImmunities" : [
          "lightning",
          "slashing"
        ],
        "conditionImmunities" : [
          "blinded",
          "charmed",
          "deafened",
          "exhaustion",
          "frightened",
          "prone"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 8"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "dQauEtE78NSXG5Kjg",
        "name" : "Octopus",
        "type" : "Beast",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d6",
        "hp" : 3,
        "speed" : {
          "normal" : 5,
          "swim" : 30
        },
        "skills" : [
          "Perception +2",
          "Stealth +4"
        ],
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 12"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "ypYaftnXgiLD9jmqF",
        "name" : "Ogre",
        "type" : "Giant",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "7d10",
        "hp" : 59,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 8"
        ],
        "languages" : [
          "Common",
          "Giant"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "9Fed7t8osqqQTYATc",
        "name" : "Ogre Zombie",
        "type" : "Undead",
        "size" : "Large",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 8,
        "hitDice" : "9d10",
        "hp" : 85,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Wis +0"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 8"
        ],
        "languages" : [
          "understands Common and Giant but can"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "Ypf35KThBCFc7ojtS",
        "name" : "Oni",
        "type" : "Giant",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "13d10",
        "hp" : 110,
        "speed" : {
          "normal" : 30,
          "fly" : 30
        },
        "savingThrows" : [
          "Dex +3",
          "Con +6",
          "Wis +4",
          "Cha +5"
        ],
        "skills" : [
          "Arcana +5",
          "Deception +8",
          "Perception +4"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Common",
          "Giant"
        ],
        "xp" : "2900",
        "cr" : 7
      }

      
      {
        "_id" : "paL3Fu59XTEnEyoHW",
        "name" : "Orc",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "2d8",
        "hp" : 15,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Intimidation +2"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Common",
          "Orc"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "gXLDv3y9dmJohC5L2",
        "name" : "Otyugh",
        "type" : "Aberration",
        "size" : "Large",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "12d10",
        "hp" : 114,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Con +7"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Otyugh"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "oh9YoG465bfXfvPFT",
        "name" : "Owl",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 5,
          "fly" : 60
        },
        "skills" : [
          "Perception +3",
          "Stealth +3"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 13"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "Sgi2CD2bWHR2uyru4",
        "name" : "Owlbear",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "7d10",
        "hp" : 59,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "ittwNdz4EtR8xNWyL",
        "name" : "Panther",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "3d8",
        "hp" : 13,
        "speed" : {
          "normal" : 50,
          "climb" : 40
        },
        "skills" : [
          "Perception +4",
          "Stealth +6"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "xp" : "12",
        "cr" : 1
      }

      
      {
        "_id" : "rssKgWwc2KZBJyoNB",
        "name" : "Pegasus",
        "type" : "Celestial",
        "size" : "Large",
        "alignment" : "CG",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "7d10",
        "hp" : 59,
        "speed" : {
          "normal" : 60,
          "fly" : 90
        },
        "savingThrows" : [
          "Dex +4",
          "Wis +4",
          "Cha +3"
        ],
        "skills" : [
          "Perception +6"
        ],
        "senses" : [
          "passive Perception 16"
        ],
        "languages" : [
          "understands Celestial",
          "Common",
          "Elvish",
          "and Sylvan but can"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "jnwcpnwhTC9FhnCrP",
        "name" : "Phase Spider",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "5d10",
        "hp" : 32,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "skills" : [
          "Stealth +6"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "MZRbchYHYXTLMGW75",
        "name" : "Pit Fiend",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 19,
        "hitDice" : "24d10",
        "hp" : 300,
        "speed" : {
          "normal" : 30,
          "fly" : 60
        },
        "savingThrows" : [
          "Dex +8",
          "Con +13",
          "Wis +10"
        ],
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Infernal",
          "telepathy 120 ft."
        ],
        "xp" : "25000",
        "cr" : 20
      }

      
      {
        "_id" : "BgvHAbCimEBwpzsvX",
        "name" : "Planetar",
        "type" : "Celestial",
        "size" : "Large",
        "alignment" : "LG",
        "immunities" : {
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened"
          ]
        },
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "16d10",
        "hp" : 200,
        "speed" : {
          "normal" : 40,
          "fly" : 12
        },
        "savingThrows" : [
          "Con +12",
          "Wis +11",
          "Cha +12"
        ],
        "skills" : [
          "Perception +11 Damage Resistances radiant"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 21"
        ],
        "languages" : [
          "all",
          "telepathy 120 ft."
        ],
        "xp" : "15000",
        "cr" : 16
      }

      
      {
        "_id" : "mMNiahcmuMvEgkAZi",
        "name" : "Plesiosaurus",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "8d10",
        "hp" : 68,
        "speed" : {
          "normal" : 20,
          "swim" : 40
        },
        "skills" : [
          "Perception +3",
          "Stealth +4"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "GueQNWEH7e9MbyuHj",
        "name" : "Poisonous Snake",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "1d4",
        "hp" : 2,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 10"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "Y2HzmHFeu7hcofAQd",
        "name" : "Polar Bear",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "5d10",
        "hp" : 42,
        "speed" : {
          "normal" : 40,
          "swim" : 30
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "fbbkkm7fDknxaMz89",
        "name" : "Pony",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "wPs2SgEJ6xDwLeWDx",
        "name" : "Pseudodragon",
        "type" : "Dragon",
        "size" : "Tiny",
        "alignment" : "NG",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "2d4",
        "hp" : 7,
        "speed" : {
          "normal" : 15,
          "fly" : 60
        },
        "skills" : [
          "Perception +3",
          "Stealth +4"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "understands Common and Draconic but can"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "XQPqvbqC5KSCpFzvz",
        "name" : "Purple Worm",
        "type" : "Monstrosity",
        "size" : "Gargantuan",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "15d20",
        "hp" : 247,
        "speed" : {
          "normal" : 50,
          "burrow" : 30
        },
        "savingThrows" : [
          "Con +11",
          "Wis +4"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "tremorsense 60 ft.",
          "passive Perception 9"
        ],
        "xp" : "13000",
        "cr" : 15
      }

      
      {
        "_id" : "tASuQqbKHhmyZZryK",
        "name" : "Quasit",
        "type" : "Fiend",
        "size" : "Tiny",
        "alignment" : "-",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 13,
        "hitDice" : "3d4",
        "hp" : 7,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Stealth +5"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Abyssal",
          "Common"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "KMB2WHcEB6aHmAvnK",
        "name" : "Quipper",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 0,
          "swim" : 40
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 8"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "6HHet3JTew2DzYCq3",
        "name" : "Rakshasa",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks"
          ]
        },
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "13d8",
        "hp" : 110,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Deception +10",
          "Insight +8"
        ],
        "vulnerabilities" : [
          "piercing from magic weapons wielded by good creatures"
        ],
        "damageVulnerabilities" : [
          "piercing from magic weapons wielded by good creatures"
        ],
        "damageImmunities" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Common",
          "Infernal"
        ],
        "xp" : "10000",
        "cr" : 13
      }

      
      {
        "_id" : "qr9pfkKnsT3vLdwwv",
        "name" : "Rat",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 20
        },
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 10"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "KP7QBjThn2owvETEY",
        "name" : "Raven",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 10,
          "fly" : 50
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "r2XyuSFdgEhGYfuai",
        "name" : "Red Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "10d8",
        "hp" : 75,
        "speed" : {
          "normal" : 30,
          "climb" : 30,
          "fly" : 60
        },
        "savingThrows" : [
          "Dex +2",
          "Con +5",
          "Wis +2",
          "Cha +4"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +2"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "NjcMdFcMgYGXSX4Aa",
        "name" : "Reef Shark",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "4d8",
        "hp" : 22,
        "speed" : {
          "normal" : 0,
          "swim" : 40
        },
        "skills" : [
          "Perception +2"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "passive Perception 12"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "gCJkvduGwgHoxuZwJ",
        "name" : "Remorhaz",
        "type" : "Monstrosity",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "cold",
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "17d12",
        "hp" : 195,
        "speed" : {
          "normal" : 30,
          "burrow" : 20
        },
        "damageImmunities" : [
          "cold",
          "fire"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "tremorsense 60 ft.",
          "passive Perception 10"
        ],
        "xp" : "7200",
        "cr" : 11
      }

      
      {
        "_id" : "AenBtr64qBxeM2h2X",
        "name" : "Rhinoceros",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "6d10",
        "hp" : 45,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 11"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "AKf7uh8R68RrZYHsG",
        "name" : "Riding Horse",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "2d10",
        "hp" : 13,
        "speed" : {
          "normal" : 60
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "s2qwqZS9HhZvTiQjq",
        "name" : "Roc",
        "type" : "Monstrosity",
        "size" : "Gargantuan",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "16d20",
        "hp" : 248,
        "speed" : {
          "normal" : 20,
          "fly" : 12
        },
        "savingThrows" : [
          "Dex +4",
          "Con +9",
          "Wis +4",
          "Cha +3"
        ],
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "xp" : "7200",
        "cr" : 11
      }

      
      {
        "_id" : "r3FRewP7jBgaZc85n",
        "name" : "Roper",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 20,
        "hitDice" : "11d10",
        "hp" : 93,
        "speed" : {
          "normal" : 10,
          "climb" : 10
        },
        "skills" : [
          "Perception +6",
          "Stealth +5"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 16"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "PeQMf7JXhQvt7Ge87",
        "name" : "Rug of Smothering",
        "type" : "Construct",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "poison",
            "psychic"
          ],
          "conditions" : [
            "blinded",
            "charmed",
            "deafened",
            "frightened",
            "paralyzed",
            "petrified",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "6d10",
        "hp" : 33,
        "speed" : {
          "normal" : 10
        },
        "damageImmunities" : [
          "poison",
          "psychic"
        ],
        "conditionImmunities" : [
          "blinded",
          "charmed",
          "deafened",
          "frightened",
          "paralyzed",
          "petrified",
          "poisoned"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 6"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "ce2WMZihW8H2Z87ig",
        "name" : "Rust Monster",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "5d8",
        "hp" : 27,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "EfYrzjbmTmnTfLZbu",
        "name" : "Saber-Toothed Tiger",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "7d10",
        "hp" : 52,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +3",
          "Stealth +6"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "8gLd3cpTztuHg8Kwv",
        "name" : "Sahuagin",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "4d8",
        "hp" : 22,
        "speed" : {
          "normal" : 30,
          "swim" : 40
        },
        "skills" : [
          "Perception +5"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 15"
        ],
        "languages" : [
          "Sahuagin"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "DD2KKkfn5J8FzYvxB",
        "name" : "Salamander",
        "type" : "Elemental",
        "size" : "Large",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks"
          ]
        },
        "ac" : 15,
        "hitDice" : "12d10",
        "hp" : 90,
        "speed" : {
          "normal" : NaN
        },
        "vulnerabilities" : [
          "cold"
        ],
        "damageVulnerabilities" : [
          "cold"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Ignan"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "HL6FZCwdEmMGeMnuj",
        "name" : "Satyr",
        "type" : "Fey",
        "size" : "Medium",
        "alignment" : "CN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "7d8",
        "hp" : 31,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +2",
          "Performance +6",
          "Stealth +5"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "Common",
          "Elvish",
          "Sylvan"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "uScBfMuyS8DAqQERn",
        "name" : "Scorpion",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 10
        },
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 9"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "DYcEhtQQvabxhMsTL",
        "name" : "Sea Hag",
        "type" : "Fey",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "7d8",
        "hp" : 52,
        "speed" : {
          "normal" : 30,
          "swim" : 40
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Aquan",
          "Common",
          "Giant"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "2YKCf2HxpDYQ2yfAm",
        "name" : "Sea Horse",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 0,
          "swim" : 20
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "0",
        "cr" : 0
      }

      
      {
        "_id" : "rnhK9NH5bw4fwfajF",
        "name" : "Shadow",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "necrotic",
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid",
            "cold",
            "fire",
            "lightning",
            "thunder"
          ]
        },
        "ac" : 12,
        "hitDice" : "3d8",
        "hp" : 16,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Stealth +4 (+6 in dim light or darkness)"
        ],
        "vulnerabilities" : [
          "radiant"
        ],
        "damageVulnerabilities" : [
          "radiant"
        ],
        "damageResistances" : [
          "acid",
          "cold",
          "fire",
          "lightning",
          "thunder"
        ],
        "damageImmunities" : [
          "necrotic",
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "zM5NqXX5GkrBPihh2",
        "name" : "Shambling Mound",
        "type" : "Plant",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "lightning"
          ],
          "conditions" : [
            "blinded",
            "deafened",
            "exhaustion"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire"
          ]
        },
        "ac" : 15,
        "hitDice" : "16d10",
        "hp" : 136,
        "speed" : {
          "normal" : 20,
          "swim" : 20
        },
        "skills" : [
          "Stealth +2"
        ],
        "damageResistances" : [
          "cold",
          "fire"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "conditionImmunities" : [
          "blinded",
          "deafened",
          "exhaustion"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 10"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "kkBCZ4bLY826oe5Bn",
        "name" : "Shield Guardian",
        "type" : "Construct",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "paralyzed",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "15d10",
        "hp" : 142,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "paralyzed",
          "poisoned"
        ],
        "languages" : [
          "understands commands given in any language but can"
        ],
        "xp" : "2900",
        "cr" : 7
      }

      
      {
        "_id" : "NCTFaBXETsykP8tHh",
        "name" : "Shrieker",
        "type" : "Plant",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "blinded",
            "deafened",
            "frightened"
          ]
        },
        "resistances" : {},
        "ac" : 5,
        "hitDice" : "3d8",
        "hp" : 13,
        "speed" : {
          "normal" : NaN
        },
        "conditionImmunities" : [
          "blinded",
          "deafened",
          "frightened"
        ],
        "senses" : [
          "blindsight 30 ft. (blind beyond this radius)",
          "passive Perception 6"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "yZiDbnJZ5RtCJwaQZ",
        "name" : "Silver Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "6d8",
        "hp" : 45,
        "speed" : {
          "normal" : 30,
          "fly" : 60
        },
        "savingThrows" : [
          "Dex +2",
          "Con +5",
          "Wis +2",
          "Cha +4"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +2"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "4ygFgAhufNLBNaGdk",
        "name" : "Skeleton",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "2d8",
        "hp" : 13,
        "speed" : {
          "normal" : 30
        },
        "vulnerabilities" : [
          "bludgeoning"
        ],
        "damageVulnerabilities" : [
          "bludgeoning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 9"
        ],
        "languages" : [
          "understands all languages it knew in life but can"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "epob6W5Sk8GMMgjCC",
        "name" : "Solar",
        "type" : "Celestial",
        "size" : "Large",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "necrotic",
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "radiant"
          ]
        },
        "ac" : 21,
        "hitDice" : "18d10",
        "hp" : 243,
        "speed" : {
          "normal" : 50,
          "fly" : 15
        },
        "savingThrows" : [
          "Int +14",
          "Wis +14",
          "Cha +17"
        ],
        "skills" : [
          "Perception +14"
        ],
        "damageResistances" : [
          "radiant"
        ],
        "damageImmunities" : [
          "necrotic",
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "poisoned"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 24"
        ],
        "languages" : [
          "all",
          "telepathy 120 ft."
        ],
        "xp" : "33000",
        "cr" : 21
      }

      
      {
        "_id" : "A25smEw6DcY9MMzj2",
        "name" : "Specter",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "necrotic",
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained",
            "unconscious"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid",
            "cold",
            "fire",
            "lightning",
            "thunder"
          ]
        },
        "ac" : 12,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 0,
          "fly" : 50
        },
        "damageResistances" : [
          "acid",
          "cold",
          "fire",
          "lightning",
          "thunder"
        ],
        "damageImmunities" : [
          "necrotic",
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained",
          "unconscious"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "understands all languages it knew in life but can"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "n58PCZ6xrrvyNqeqD",
        "name" : "Spider",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 20,
          "climb" : 20
        },
        "skills" : [
          "Stealth +4"
        ],
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 10"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "zxWokhpC7sbAgm9Dr",
        "name" : "Spirit Naga",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "10d10",
        "hp" : 75,
        "speed" : {
          "normal" : 40
        },
        "savingThrows" : [
          "Dex +6",
          "Con +5",
          "Wis +5",
          "Cha +6"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Abyssal",
          "Common"
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "L22pdYLLNo6B32t9j",
        "name" : "Sprite",
        "type" : "Fey",
        "size" : "Tiny",
        "alignment" : "NG",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "1d4",
        "hp" : 2,
        "speed" : {
          "normal" : 10,
          "fly" : 40
        },
        "skills" : [
          "Perception +3",
          "Stealth +8"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "languages" : [
          "Common",
          "Elvish",
          "Sylvan"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "Td9mEHk42StGk8NKP",
        "name" : "Steam Mephit",
        "type" : "Elemental",
        "size" : "Small",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "6d6",
        "hp" : 21,
        "speed" : {
          "normal" : 30,
          "fly" : 30
        },
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10334"
        ],
        "languages" : [
          "Aquan",
          "Ignan"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "EW9rnXjDyTsT8yiTH",
        "name" : "Stirge",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "1d4",
        "hp" : 2,
        "speed" : {
          "normal" : 10,
          "fly" : 40
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 9"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "oMPpEKES5CCQGWP66",
        "name" : "Stone Giant",
        "type" : "Giant",
        "size" : "Huge",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "11d12",
        "hp" : 126,
        "speed" : {
          "normal" : 40
        },
        "savingThrows" : [
          "Dex +5",
          "Con +8",
          "Wis +4"
        ],
        "skills" : [
          "Athletics +12",
          "Perception +4"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Giant"
        ],
        "xp" : "2900",
        "cr" : 7
      }

      
      {
        "_id" : "d3H5mQunvExQMpD6S",
        "name" : "Stone Golem",
        "type" : "Construct",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "poison",
            "psychic"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "paralyzed",
            "petrified",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "17d10",
        "hp" : 178,
        "speed" : {
          "normal" : 30
        },
        "damageImmunities" : [
          "poison",
          "psychic"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "paralyzed",
          "petrified",
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "understands the languages of its creator but can"
        ],
        "xp" : "5900",
        "cr" : 10
      }

      
      {
        "_id" : "a27TSqphKxaMNHAa2",
        "name" : "Storm Giant",
        "type" : "Giant",
        "size" : "Huge",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "lightning",
            "thunder"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 16,
        "hitDice" : "20d12",
        "hp" : 230,
        "speed" : {
          "normal" : 50,
          "swim" : 50
        },
        "savingThrows" : [
          "Str +14",
          "Con +10",
          "Wis +9",
          "Cha +9"
        ],
        "skills" : [
          "Arcana +8",
          "Athletics +14",
          "History +8",
          "Perception +9"
        ],
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "lightning",
          "thunder"
        ],
        "senses" : [
          "passive Perception 19"
        ],
        "languages" : [
          "Common",
          "Giant"
        ],
        "xp" : "10000",
        "cr" : 13
      }

      
      {
        "_id" : "32HCjAW46iv9C5gcJ",
        "name" : "Succubus/Incubus",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning",
            "poison"
          ]
        },
        "ac" : 15,
        "hitDice" : "12d8",
        "hp" : 66,
        "speed" : {
          "normal" : 30,
          "fly" : 60
        },
        "skills" : [
          "Deception +9",
          "Insight +5",
          "Perception +5",
          "Persuasion +9",
          "Stealth +7"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning",
          "poison"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 15"
        ],
        "languages" : [
          "Abyssal",
          "Common",
          "Infernal",
          "telepathy 60 ft."
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "LB8M8tD7b5H2QJA5R",
        "name" : "Swarm of Bats",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 12,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 0,
          "fly" : 30
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "passive Perception 11"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "JDEKbD6uPybmGsPcL",
        "name" : "Swarm of Beetles",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 12,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 20,
          "climb" : 20,
          "burrow" : 20
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 8"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "eATF5Zv4MuzJTB8sy",
        "name" : "Swarm of Centipedes",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 12,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 20,
          "climb" : 20
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 8"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "MBr97AKnYeaNCv9Nr",
        "name" : "Swarm of Insects",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 12,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 20,
          "climb" : 20
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 8"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "T2TXTwzH7ajRBP94b",
        "name" : "Swarm of Poisonous Snakes",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 14,
        "hitDice" : "8d8",
        "hp" : 36,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 10"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "xyCeePYrFhnsdYBCi",
        "name" : "Swarm of Quippers",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 13,
        "hitDice" : "8d8",
        "hp" : 28,
        "speed" : {
          "normal" : 0,
          "swim" : 40
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 8"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "kajFhYcDpYi4tS94o",
        "name" : "Swarm of Rats",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 10,
        "hitDice" : "7d8",
        "hp" : 24,
        "speed" : {
          "normal" : 30
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 10"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "hehXuDrxYAZZigg8e",
        "name" : "Swarm of Ravens",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 12,
        "hitDice" : "7d8",
        "hp" : 24,
        "speed" : {
          "normal" : 10,
          "fly" : 50
        },
        "skills" : [
          "Perception +5"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "passive Perception 15"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "Fzjg9nhRqf3b4EFAK",
        "name" : "Swarm of Spiders",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 12,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 20,
          "climb" : 20
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 8"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "NXxLv7KBNJzai8kEj",
        "name" : "Swarm of Wasps",
        "type" : "Swarm",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "charmed",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "prone",
            "restrained",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "slashing"
          ]
        },
        "ac" : 12,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 5,
          "fly" : 30
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "slashing"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "prone",
          "restrained",
          "stunned"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 8"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "jPEQL8gjxgb2HMJ7k",
        "name" : "Tarrasque",
        "type" : "Monstrosity",
        "size" : "Gargantuan",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ]
        },
        "resistances" : {},
        "ac" : 25,
        "hitDice" : "33d20",
        "hp" : 676,
        "speed" : {
          "normal" : 40
        },
        "savingThrows" : [
          "Int +5",
          "Wis +9",
          "Cha +9"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "senses" : [
          "blindsight 120 ft.",
          "passive Perception 10"
        ],
        "xp" : "155000",
        "cr" : 30
      }

      
      {
        "_id" : "M6azDMeR56K9haiDs",
        "name" : "Tiger",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "5d10",
        "hp" : 37,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +3",
          "Stealth +6"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "HtKkDpwXzTtgWZ7ei",
        "name" : "Treant",
        "type" : "Plant",
        "size" : "Huge",
        "alignment" : "CG",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing"
          ]
        },
        "ac" : 16,
        "hitDice" : "12d12",
        "hp" : 138,
        "speed" : {
          "normal" : 30
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing"
        ],
        "vulnerabilities" : [
          "fire"
        ],
        "damageVulnerabilities" : [
          "fire"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "languages" : [
          "Common",
          "Druidic",
          "Elvish",
          "Sylvan"
        ],
        "xp" : "5000",
        "cr" : 9
      }

      
      {
        "_id" : "CuqDyq25jkdrcBGTx",
        "name" : "Triceratops",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "10d12",
        "hp" : 95,
        "speed" : {
          "normal" : 50
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "EktjHoFhSRbeXdkhg",
        "name" : "Troll",
        "type" : "Giant",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "8d10",
        "hp" : 84,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Perception +2"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Giant"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "NGLiQv49FyC7cpQgj",
        "name" : "Tyrannosaurus Rex",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "13d12",
        "hp" : 136,
        "speed" : {
          "normal" : 50
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "v9shf9Knguf8bYMGo",
        "name" : "Unicorn",
        "type" : "Celestial",
        "size" : "Large",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "paralyzed",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "9d10",
        "hp" : 67,
        "speed" : {
          "normal" : 50
        },
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "paralyzed",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13354"
        ],
        "languages" : [
          "Celestial",
          "Elvish",
          "Sylvan",
          "telepathy 60 ft."
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "YfBimnG9mfauv9kfW",
        "name" : "Vampire",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "necrotic"
          ]
        },
        "ac" : 16,
        "hitDice" : "17d8",
        "hp" : 144,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Dex +9",
          "Wis +7",
          "Cha +9"
        ],
        "skills" : [
          "Perception +7",
          "Stealth +9"
        ],
        "damageResistances" : [
          "necrotic"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 17"
        ],
        "languages" : [
          "the languages it knew in life"
        ],
        "xp" : "10000",
        "cr" : 13
      }

      
      {
        "_id" : "GvnJBxg4hDGigz8zQ",
        "name" : "Vampire Spawn",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "necrotic"
          ]
        },
        "ac" : 15,
        "hitDice" : "11d8",
        "hp" : 82,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Dex +6",
          "Wis +3"
        ],
        "skills" : [
          "Perception +3",
          "Stealth +6"
        ],
        "damageResistances" : [
          "necrotic"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "the languages it knew in life"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "RotX8RY3SXDPGF6SS",
        "name" : "Violet Fungus",
        "type" : "Plant",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "blinded",
            "deafened",
            "frightened"
          ]
        },
        "resistances" : {},
        "ac" : 5,
        "hitDice" : "4d8",
        "hp" : 18,
        "speed" : {
          "normal" : 5
        },
        "conditionImmunities" : [
          "blinded",
          "deafened",
          "frightened"
        ],
        "senses" : [
          "blindsight 30 ft. (blind beyond this radius)",
          "passive Perception 6"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "bE2nM9L2JrojDQqt3",
        "name" : "Vrock",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 15,
        "hitDice" : "11d10",
        "hp" : 104,
        "speed" : {
          "normal" : 40,
          "fly" : 60
        },
        "savingThrows" : [
          "Dex +5",
          "Wis +4",
          "Cha +2"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Abyssal",
          "telepathy 120 ft."
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "c6y7dFiA5DyJC5XSe",
        "name" : "Vulture",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "1d8",
        "hp" : 5,
        "speed" : {
          "normal" : 10,
          "fly" : 50
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "xtxQ7m32uoZS9qd6z",
        "name" : "Warhorse",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "3d10",
        "hp" : 19,
        "speed" : {
          "normal" : 60
        },
        "senses" : [
          "passive Perception 11"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "tvXQwZxJ9Fo2jD58j",
        "name" : "Warhorse Skeleton",
        "type" : "Undead",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "3d10",
        "hp" : 22,
        "speed" : {
          "normal" : 60
        },
        "vulnerabilities" : [
          "bludgeoning"
        ],
        "damageVulnerabilities" : [
          "bludgeoning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 9"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "gsez7XBg469A7756Q",
        "name" : "Water Elemental",
        "type" : "Elemental",
        "size" : "Large",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained",
            "unconscious"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid"
          ]
        },
        "ac" : 14,
        "hitDice" : "12d10",
        "hp" : 114,
        "speed" : {
          "normal" : 30,
          "swim" : 90
        },
        "damageResistances" : [
          "acid"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained",
          "unconscious"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Aquan"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "j52TrRzgQcg2vvgWN",
        "name" : "Weasel",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Perception +3",
          "Stealth +5"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "SnrHzZvd3tJEyB4SG",
        "name" : "Werebear",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "-",
        "immunities" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks not made with silvered weapons"
          ]
        },
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "18d8",
        "hp" : 135,
        "speed" : {
          "normal" : NaN,
          "climb" : 30
        },
        "skills" : [
          "Perception +7"
        ],
        "damageImmunities" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks not made with silvered weapons"
        ],
        "senses" : [
          "passive Perception 17"
        ],
        "languages" : [
          "Common (can"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "SEFzkDsCLfTDAmRXw",
        "name" : "Wereboar",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "-",
        "immunities" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks not made with silvered weapons"
          ]
        },
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "12d8",
        "hp" : 78,
        "speed" : {
          "normal" : NaN
        },
        "skills" : [
          "Perception +2"
        ],
        "damageImmunities" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks not made with silvered weapons"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "Common (can"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "Jjupu2of9jqkCcqKy",
        "name" : "Wererat",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "-",
        "immunities" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks not made with silvered weapons"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "6d8",
        "hp" : 33,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Perception +2",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks not made with silvered weapons"
        ],
        "senses" : [
          "darkvision 60 ft. (rat form only)",
          "passive Perception 12"
        ],
        "languages" : [
          "Common (can"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "RDJFSkpSpoKenoPgT",
        "name" : "Weretiger",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "-",
        "immunities" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks not made with silvered weapons"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "16d8",
        "hp" : 120,
        "speed" : {
          "normal" : NaN
        },
        "skills" : [
          "Perception +5",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks not made with silvered weapons"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 15"
        ],
        "languages" : [
          "Common (can"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "6XTsuWP5rm6vbae7g",
        "name" : "Werewolf",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "-",
        "immunities" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks not made with silvered weapons"
          ]
        },
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "9d8",
        "hp" : 58,
        "speed" : {
          "normal" : NaN
        },
        "skills" : [
          "Perception +4",
          "Stealth +3"
        ],
        "damageImmunities" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks not made with silvered weapons"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "languages" : [
          "Common (can"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "d2y9WafGMaYEdLvAs",
        "name" : "White Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "5d8",
        "hp" : 32,
        "speed" : {
          "normal" : 30,
          "burrow" : 15,
          "fly" : 60,
          "swim" : 30
        },
        "savingThrows" : [
          "Dex +2",
          "Con +4",
          "Wis +2",
          "Cha +2"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +2"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "MpJ4FrDH5Birx5inN",
        "name" : "Wight",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "necrotic"
          ]
        },
        "ac" : 14,
        "hitDice" : "6d8",
        "hp" : 45,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Perception +3",
          "Stealth +4"
        ],
        "damageResistances" : [
          "necrotic"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "the languages it knew in life"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "DrL3FYy4Ga2TAsYAz",
        "name" : "Will-o'-Wisp",
        "type" : "Undead",
        "size" : "Tiny",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "lightning",
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "grappled",
            "paralyzed",
            "poisoned",
            "prone",
            "restrained",
            "unconscious"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid",
            "cold",
            "fire",
            "necrotic",
            "thunder"
          ]
        },
        "ac" : 19,
        "hitDice" : "9d4",
        "hp" : 22,
        "speed" : {
          "normal" : 0,
          "fly" : 50
        },
        "damageImmunities" : [
          "lightning",
          "poison"
        ],
        "damageResistances" : [
          "acid",
          "cold",
          "fire",
          "necrotic",
          "thunder"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "grappled",
          "paralyzed",
          "poisoned",
          "prone",
          "restrained",
          "unconscious"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "the languages it knew in life"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "fKXqJjknbMB35cur2",
        "name" : "Winter Wolf",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "cold387"
          ]
        },
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "10d10",
        "hp" : 75,
        "speed" : {
          "normal" : 50
        },
        "skills" : [
          "Perception +5",
          "Stealth +3"
        ],
        "damageImmunities" : [
          "cold387"
        ],
        "senses" : [
          "passive Perception 15"
        ],
        "languages" : [
          "Common",
          "Giant",
          "Winter Wolf"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "pKn92MKzzgykmZ5CQ",
        "name" : "Wolf",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +3",
          "Stealth +4"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "h8DMbCbujDzBAmtig",
        "name" : "Worg",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "4d10",
        "hp" : 26,
        "speed" : {
          "normal" : 50
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Goblin",
          "Worg"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "KwmTm6k4pfRjgNvD5",
        "name" : "Wraith",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "necrotic",
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid",
            "cold",
            "fire",
            "lightning",
            "thunder"
          ]
        },
        "ac" : 13,
        "hitDice" : "9d8",
        "hp" : 67,
        "speed" : {
          "normal" : 0,
          "fly" : 60
        },
        "damageResistances" : [
          "acid",
          "cold",
          "fire",
          "lightning",
          "thunder"
        ],
        "damageImmunities" : [
          "necrotic",
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "the languages it knew in life"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "jXsfBF35uCDSm4xzx",
        "name" : "Wyvern",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "13d10",
        "hp" : 110,
        "speed" : {
          "normal" : 20,
          "fly" : 80
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "dgXFi8soE4iZMBn3b",
        "name" : "Xorn",
        "type" : "Elemental",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "piercing and slashing from nonmagical attacks that aren"
          ]
        },
        "ac" : 19,
        "hitDice" : "7d8",
        "hp" : 73,
        "speed" : {
          "normal" : 20,
          "burrow" : 20
        },
        "skills" : [
          "Perception +6",
          "Stealth +3"
        ],
        "damageResistances" : [
          "piercing and slashing from nonmagical attacks that aren"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "tremorsense 60 ft.",
          "passive Perception 16"
        ],
        "languages" : [
          "Terran"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "CBeT2tWs4nBfJu4gX",
        "name" : "Young Black Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "acid"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "15d10",
        "hp" : 127,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +5",
          "Con +6",
          "Wis +3",
          "Cha +5"
        ],
        "skills" : [
          "Perception +6",
          "Stealth +5"
        ],
        "damageImmunities" : [
          "acid"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 16"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "2900",
        "cr" : 7
      }

      
      {
        "_id" : "XLvam3GRuagidxqkq",
        "name" : "Young Blue Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "lightning"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "16d10",
        "hp" : 152,
        "speed" : {
          "normal" : 40,
          "burrow" : 20,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +4",
          "Con +8",
          "Wis +5",
          "Cha +7"
        ],
        "skills" : [
          "Perception +9",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 19286"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "5000",
        "cr" : 9
      }

      
      {
        "_id" : "Nmrf8Z5qybEuvJ2JP",
        "name" : "Young Brass Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "13d10",
        "hp" : 110,
        "speed" : {
          "normal" : 40,
          "burrow" : 20,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +3",
          "Con +6",
          "Wis +3",
          "Cha +5"
        ],
        "skills" : [
          "Perception +6",
          "Persuasion +5",
          "Stealth +3"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 16"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "LnQQEpAHR6sbKGSyY",
        "name" : "Young Bronze Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "lightning"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "15d10",
        "hp" : 142,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +3",
          "Con +7",
          "Wis +4",
          "Cha +6"
        ],
        "skills" : [
          "Insight +4",
          "Perception +7",
          "Stealth +3"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 17"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "oMZc8bq72wS2ZtzjN",
        "name" : "Young Copper Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "acid"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "14d10",
        "hp" : 119,
        "speed" : {
          "normal" : 40,
          "climb" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +4",
          "Con +6",
          "Wis +4",
          "Cha +5"
        ],
        "skills" : [
          "Deception +5",
          "Perception +7",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "acid"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 17"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "2900",
        "cr" : 7
      }

      
      {
        "_id" : "Faf8sNAT6Cdrins9G",
        "name" : "Young Gold Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "17d10",
        "hp" : 178,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +6",
          "Con +9",
          "Wis +5",
          "Cha +9"
        ],
        "skills" : [
          "Insight +5",
          "Perception +9",
          "Persuasion +9",
          "Stealth +6"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 19"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "5900",
        "cr" : 10
      }

      
      {
        "_id" : "4KfGFmxY9x4g5zkWZ",
        "name" : "Young Green Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "16d10",
        "hp" : 136,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +4",
          "Con +6",
          "Wis +4",
          "Cha +5"
        ],
        "skills" : [
          "Deception +5",
          "Perception +7",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 17"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "SF3LGqCA45vfccWKc",
        "name" : "Young Red Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "17d10",
        "hp" : 178,
        "speed" : {
          "normal" : 40,
          "climb" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +4",
          "Con +9",
          "Wis +4",
          "Cha +8"
        ],
        "skills" : [
          "Perception +8",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 18"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "5900",
        "cr" : 10
      }

      
      {
        "_id" : "pMziitvXwoB8wB8GM",
        "name" : "Young Silver Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "16d10",
        "hp" : 168,
        "speed" : {
          "normal" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +4",
          "Con +9",
          "Wis +4",
          "Cha +8"
        ],
        "skills" : [
          "Arcana +6",
          "History +6",
          "Perception +8",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 18"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "5000",
        "cr" : 9
      }

      
      {
        "_id" : "PeknWbmMgBeCfHs6D",
        "name" : "Young White Dragon",
        "type" : "Dragon",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "14d10",
        "hp" : 133,
        "speed" : {
          "normal" : 40,
          "burrow" : 20,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +3",
          "Con +7",
          "Wis +3",
          "Cha +4"
        ],
        "skills" : [
          "Perception +6",
          "Stealth +3"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 16"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "gX7LC28SDabbkMu6w",
        "name" : "Zombie",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 8,
        "hitDice" : "3d8",
        "hp" : 22,
        "speed" : {
          "normal" : 20
        },
        "savingThrows" : [
          "Wis +0"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 8359"
        ],
        "languages" : [
          "understands the languages it knew in life but can"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "fRkxJ3LAPyRrSAgLh",
        "name" : "Acolyte",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "2d8",
        "hp" : 9,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Medicine +4",
          "Religion +2"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "RjNcsxXyeP9wxtLNC",
        "name" : "Archmage",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "18d8",
        "hp" : 99,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Int +9",
          "Wis +6"
        ],
        "skills" : [
          "Arcana +13",
          "History +13 Damage Resistance damage from spells"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "any six languages"
        ],
        "xp" : "8400",
        "cr" : 12
      }

      
      {
        "_id" : "paCKRugkgKnn9uAzY",
        "name" : "Assassin",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "anyNonGood",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "poison"
          ]
        },
        "ac" : 15,
        "hitDice" : "12d8",
        "hp" : 78,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Dex +6",
          "Int +4"
        ],
        "skills" : [
          "Acrobatics +6",
          "Deception +3",
          "Perception +3",
          "Stealth +9"
        ],
        "damageResistances" : [
          "poison"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "languages" : [
          "Thieves"
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "XRYNw35GsHwnjEjwj",
        "name" : "Bandit",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "anyNonLawful",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "McgprjXAdx56D5YuL",
        "name" : "Bandit Captain",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "anyNonLawful",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "10d8",
        "hp" : 65,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Str +4",
          "Dex +5",
          "Wis +2"
        ],
        "skills" : [
          "Athletics +4",
          "Deception +4"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "any two languages"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "EcdjXDgwvvaAKMMFA",
        "name" : "Berserker",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "anyChaotic",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "9d8",
        "hp" : 67,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "bPPRsSWwWF7m86Aau",
        "name" : "Commoner",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "1d8",
        "hp" : 4,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "CKLxMpBCbceX2xShY",
        "name" : "Cult Fanatic",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "anyNonGood",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "6d8",
        "hp" : 33,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +4",
          "Persuasion +4",
          "Religion +2"
        ],
        "senses" : [
          "passive Perception 11"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "wWyDoB5jhuRRDyBJ8",
        "name" : "Cultist",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "anyNonGood",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "2d8",
        "hp" : 9,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +2",
          "Religion +2"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "mZnbRDGHCK2axfpvJ",
        "name" : "Druid",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "5d8",
        "hp" : 27,
        "speed" : {
          "normal" : NaN
        },
        "skills" : [
          "Medicine +4",
          "Nature +3",
          "Perception +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "languages" : [
          "Druidic plus any two languages"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "JgZWeHYM6gbLNjX6v",
        "name" : "Gladiator",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "15d8",
        "hp" : 112,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Str +7",
          "Dex +5",
          "Con +6"
        ],
        "skills" : [
          "Athletics +10",
          "Intimidation +5"
        ],
        "senses" : [
          "passive Perception 11"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "kfyyNcfnN9prh235F",
        "name" : "Guard",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Perception +2"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "eFL9dHkzFtyM8h6xd",
        "name" : "Knight",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "8d8",
        "hp" : 52,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Con +4",
          "Wis +2"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "any one language (usually Common)"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "CJNuStcYZnrguzAoJ",
        "name" : "Mage",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "9d8",
        "hp" : 40,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Int +6",
          "Wis +4"
        ],
        "skills" : [
          "Arcana +6",
          "History +6"
        ],
        "senses" : [
          "passive Perception 11"
        ],
        "languages" : [
          "any four languages"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "7fhFHMZ6KWKKmiK2e",
        "name" : "Noble",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "2d8",
        "hp" : 9,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +5",
          "Insight +4",
          "Persuasion +5"
        ],
        "senses" : [
          "passive Perception 12"
        ],
        "languages" : [
          "any two languages"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "kagY4489jYDgE89Mc",
        "name" : "Priest",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "5d8",
        "hp" : 27,
        "speed" : {
          "normal" : 25
        },
        "skills" : [
          "Medicine +7",
          "Persuasion +3",
          "Religion +4"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "languages" : [
          "any two languages"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "cj9Xjzwn9NKCYNGy6",
        "name" : "Banshee",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "cold",
            "necrotic",
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid",
            "fire",
            "lightning",
            "thunder"
          ]
        },
        "ac" : 12,
        "hitDice" : "13d8",
        "hp" : 58,
        "speed" : {
          "normal" : 0,
          "fly" : 40
        },
        "savingThrows" : [
          "Wis +2",
          "Cha +4"
        ],
        "damageResistances" : [
          "acid",
          "fire",
          "lightning",
          "thunder"
        ],
        "damageImmunities" : [
          "cold",
          "necrotic",
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Common",
          "Elvish"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "CqSEEemDNQzR7rkpf",
        "name" : "Barlgura",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 15,
        "hitDice" : "8d10",
        "hp" : 68,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "savingThrows" : [
          "Dex +5",
          "Con +6"
        ],
        "skills" : [
          "Perception +5",
          "Stealth +5"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "darkvision 120 ft.",
          "passive Perception 15"
        ],
        "languages" : [
          "Abyssal",
          "telepathy 120 ft."
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "NrsNeMZeRmugQpigH",
        "name" : "Aboleth",
        "type" : "Aberration",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "18d10",
        "hp" : 135,
        "speed" : {
          "normal" : 10,
          "swim" : 40
        },
        "savingThrows" : [
          "Con +6",
          "Int +8",
          "Wis +6"
        ],
        "skills" : [
          "History +12",
          "Perception +10"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 20"
        ],
        "languages" : [
          "Deep Speech",
          "telepathy 120 ft."
        ],
        "xp" : "5900",
        "cr" : 10
      }

      
      {
        "_id" : "QFr3WXzALom29bi8y",
        "name" : "Adult Black Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "acid"
          ]
        },
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "17d12",
        "hp" : 195,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +7",
          "Con +10",
          "Wis +6",
          "Cha +8"
        ],
        "skills" : [
          "Perception +11",
          "Stealth +7"
        ],
        "damageImmunities" : [
          "acid"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 21"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "11500",
        "cr" : 14
      }

      
      {
        "_id" : "ZfpxnwmrFZ3pkQYhQ",
        "name" : "Adult Blue Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "lightning"
          ]
        },
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "18d12",
        "hp" : 225,
        "speed" : {
          "normal" : 40,
          "burrow" : 30,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +5",
          "Con +11",
          "Wis +7",
          "Cha +9"
        ],
        "skills" : [
          "Perception +12",
          "Stealth +5"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 22"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "15000",
        "cr" : 16
      }

      
      {
        "_id" : "w5vNjvc5M7LAyhn3W",
        "name" : "Adult Brass Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "15d12",
        "hp" : 172,
        "speed" : {
          "normal" : 40,
          "burrow" : 30,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +5",
          "Con +10",
          "Wis +6",
          "Cha +8"
        ],
        "skills" : [
          "History +7",
          "Perception +11",
          "Persuasion +8",
          "Stealth +5"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 21"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "10000",
        "cr" : 13
      }

      
      {
        "_id" : "chjtW8vuWTDaEriJi",
        "name" : "Adult Bronze Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "lightning"
          ]
        },
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "17d12",
        "hp" : 212,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +5",
          "Con +11",
          "Wis +7",
          "Cha +9"
        ],
        "skills" : [
          "Insight +7",
          "Perception +12",
          "Stealth +5"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 22"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "13000",
        "cr" : 15
      }

      
      {
        "_id" : "TxmmzZGYQLsgwSdkX",
        "name" : "Adult Copper Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "acid"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "16d12",
        "hp" : 184,
        "speed" : {
          "normal" : 40,
          "climb" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +6",
          "Con +10",
          "Wis +7",
          "Cha +8"
        ],
        "skills" : [
          "Deception +8",
          "Perception +12",
          "Stealth +6"
        ],
        "damageImmunities" : [
          "acid"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 22"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "11500",
        "cr" : 14
      }

      
      {
        "_id" : "EBzBF5QEkpRpunYcG",
        "name" : "Adult Gold Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "19d12",
        "hp" : 256,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +8",
          "Con +13",
          "Wis +8",
          "Cha +13"
        ],
        "skills" : [
          "Insight +8",
          "Perception +14",
          "Persuasion +13",
          "Stealth +8"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 24"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "18000",
        "cr" : 17
      }

      
      {
        "_id" : "7zoPqDnFeDMfujjj3",
        "name" : "Adult Green Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "18d12",
        "hp" : 207,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +6",
          "Con +10",
          "Wis +7",
          "Cha +8"
        ],
        "skills" : [
          "Deception +8",
          "Insight +7",
          "Perception +12",
          "Persuasion +8",
          "Stealth +6"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 22"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "13000",
        "cr" : 15
      }

      
      {
        "_id" : "9kxKGApgb4XuXD7yT",
        "name" : "Adult Red Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "19d12",
        "hp" : 256,
        "speed" : {
          "normal" : 40,
          "climb" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +6",
          "Con +13",
          "Wis +7",
          "Cha +11"
        ],
        "skills" : [
          "Perception +13",
          "Stealth +6"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 23"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "18000",
        "cr" : 17
      }

      
      {
        "_id" : "chLeeznL9QCMnBcQm",
        "name" : "Adult Silver Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "18d12",
        "hp" : 243,
        "speed" : {
          "normal" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +5",
          "Con +12",
          "Wis +6",
          "Cha +10"
        ],
        "skills" : [
          "Arcana +8",
          "History +8",
          "Perception +11",
          "Stealth +5"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 21"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "15000",
        "cr" : 16
      }

      
      {
        "_id" : "CJuupfENpFx2jubqA",
        "name" : "Adult White Dragon",
        "type" : "Dragon",
        "size" : "Huge",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "16d12",
        "hp" : 200,
        "speed" : {
          "normal" : 40,
          "burrow" : 30,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +5",
          "Con +11",
          "Wis +6",
          "Cha +6"
        ],
        "skills" : [
          "Perception +11",
          "Stealth +5"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 21"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "10000",
        "cr" : 13
      }

      
      {
        "_id" : "aEoMHYFn7vvNbeijR",
        "name" : "Air Elemental",
        "type" : "Elemental",
        "size" : "Large",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained",
            "unconscious"
          ]
        },
        "resistances" : {
          "damage" : [
            "lightning",
            "thunder"
          ]
        },
        "ac" : 15,
        "hitDice" : "12d10",
        "hp" : 90,
        "speed" : {
          "normal" : 0,
          "fly" : 90
        },
        "damageResistances" : [
          "lightning",
          "thunder"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained",
          "unconscious"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Auran"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "gZ5w5BEoBRi8mbWFJ",
        "name" : "Ancient Black Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "acid"
          ]
        },
        "resistances" : {},
        "ac" : 22,
        "hitDice" : "21d20",
        "hp" : 367,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +9",
          "Con +14",
          "Wis +9",
          "Cha +11"
        ],
        "skills" : [
          "Perception +16",
          "Stealth +9"
        ],
        "damageImmunities" : [
          "acid"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 26"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "33000",
        "cr" : 21
      }

      
      {
        "_id" : "F6DvHayGyLNWsj2Jk",
        "name" : "Ancient Blue Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "lightning"
          ]
        },
        "resistances" : {},
        "ac" : 22,
        "hitDice" : "26d20",
        "hp" : 481,
        "speed" : {
          "normal" : 40,
          "burrow" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +7",
          "Con +15",
          "Wis +10",
          "Cha +12"
        ],
        "skills" : [
          "Perception +17",
          "Stealth +7"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 27"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "50000",
        "cr" : 23
      }

      
      {
        "_id" : "NZysXWxsHfHnMt4J5",
        "name" : "Ancient Brass Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 20,
        "hitDice" : "17d20",
        "hp" : 297,
        "speed" : {
          "normal" : 40,
          "burrow" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +6",
          "Con +13",
          "Wis +8",
          "Cha +10"
        ],
        "skills" : [
          "History +9",
          "Perception +14",
          "Persuasion +10",
          "Stealth +6"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 24"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "25000",
        "cr" : 20
      }

      
      {
        "_id" : "yQ9HL8G9k58Tpuv9s",
        "name" : "Ancient Bronze Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "lightning"
          ]
        },
        "resistances" : {},
        "ac" : 22,
        "hitDice" : "24d20",
        "hp" : 444,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +7",
          "Con +15",
          "Wis +10",
          "Cha +12"
        ],
        "skills" : [
          "Insight +10",
          "Perception +17",
          "Stealth +7"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 27"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "41000",
        "cr" : 22
      }

      
      {
        "_id" : "H4TYWXdZTehH9hBaW",
        "name" : "Ancient Copper Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "acid"
          ]
        },
        "resistances" : {},
        "ac" : 21,
        "hitDice" : "20d20",
        "hp" : 350,
        "speed" : {
          "normal" : 40,
          "climb" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +8",
          "Con +14",
          "Wis +10",
          "Cha +11"
        ],
        "skills" : [
          "Deception +11",
          "Perception +17",
          "Stealth +8"
        ],
        "damageImmunities" : [
          "acid"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 27298"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "33000",
        "cr" : 21
      }

      
      {
        "_id" : "7mizv9TASxSpnShsp",
        "name" : "Ancient Gold Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 22,
        "hitDice" : "28d20",
        "hp" : 546,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +9",
          "Con +16",
          "Wis +10",
          "Cha +16"
        ],
        "skills" : [
          "Insight +10",
          "Perception +17",
          "Persuasion +16",
          "Stealth +9"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 27"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "62000",
        "cr" : 24
      }

      
      {
        "_id" : "ZSX2av8nqAfp3rFhs",
        "name" : "Ancient Green Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 21,
        "hitDice" : "22d20",
        "hp" : 385,
        "speed" : {
          "normal" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +8",
          "Con +14",
          "Wis +10",
          "Cha +11"
        ],
        "skills" : [
          "Deception +11",
          "Insight +10",
          "Perception +17",
          "Persuasion +11",
          "Stealth +8"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 27"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "41000",
        "cr" : 22
      }

      
      {
        "_id" : "fGqd36GGYCQPbJuvu",
        "name" : "Ancient Red Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 22,
        "hitDice" : "28d20",
        "hp" : 546,
        "speed" : {
          "normal" : 40,
          "climb" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +7",
          "Con +16",
          "Wis +9",
          "Cha +13"
        ],
        "skills" : [
          "Perception +16",
          "Stealth +7"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 26"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "62000",
        "cr" : 24
      }

      
      {
        "_id" : "4ikaLnLA6NGbtNhWY",
        "name" : "Ancient Silver Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 22,
        "hitDice" : "25d20",
        "hp" : 487,
        "speed" : {
          "normal" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Dex +7",
          "Con +16",
          "Wis +9",
          "Cha +13"
        ],
        "skills" : [
          "Arcana +11",
          "History +11",
          "Perception +16",
          "Stealth +7"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 26"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "50000",
        "cr" : 23
      }

      
      {
        "_id" : "ffpjsdesarsCs4d37",
        "name" : "Ancient White Dragon",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 20,
        "hitDice" : "18d20",
        "hp" : 333,
        "speed" : {
          "normal" : 40,
          "burrow" : 40,
          "fly" : 80,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +6",
          "Con +14",
          "Wis +7",
          "Cha +8"
        ],
        "skills" : [
          "Perception +13",
          "Stealth +6"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 23"
        ],
        "languages" : [
          "Common",
          "Draconic"
        ],
        "xp" : "25000",
        "cr" : 20
      }

      
      {
        "_id" : "v6MnpKD4c3dfMTz6X",
        "name" : "Sphinxes Androsphinx",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "LN",
        "immunities" : {
          "damage" : [
            "psychic"
          ],
          "conditions" : [
            "charmed",
            "frightened"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "19d10",
        "hp" : 199,
        "speed" : {
          "normal" : 40,
          "fly" : 60
        },
        "savingThrows" : [
          "Dex +6",
          "Con +11",
          "Int +9",
          "Wis +10"
        ],
        "skills" : [
          "Arcana +9",
          "Perception +10",
          "Religion +15"
        ],
        "damageImmunities" : [
          "psychic"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 20"
        ],
        "languages" : [
          "Common",
          "Sphinx"
        ],
        "xp" : "18000",
        "cr" : 17
      }

      
      {
        "_id" : "KGyAaQDtRYkg5Wqze",
        "name" : "Animated Armor",
        "type" : "Construct",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "poison",
            "psychic"
          ],
          "conditions" : [
            "blinded",
            "charmed",
            "deafened",
            "exhaustion",
            "frightened",
            "paralyzed",
            "petrified",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "6d8",
        "hp" : 33,
        "speed" : {
          "normal" : 25
        },
        "damageImmunities" : [
          "poison",
          "psychic"
        ],
        "conditionImmunities" : [
          "blinded",
          "charmed",
          "deafened",
          "exhaustion",
          "frightened",
          "paralyzed",
          "petrified",
          "poisoned"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 6"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "RcDDNuXNj5tyzbqfc",
        "name" : "Ankheg",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "6d10",
        "hp" : 39,
        "speed" : {
          "normal" : 30,
          "burrow" : 10
        },
        "senses" : [
          "darkvision 60 ft.",
          "tremorsense 60 ft.",
          "passive Perception 11"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "dXYarzZFw9SSv6H5E",
        "name" : "Ape",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "3d8",
        "hp" : 19,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "skills" : [
          "Athletics +5",
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "rdLHPXXFN7DmGKCck",
        "name" : "Awakened Shrub",
        "type" : "Plant",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "piercing"
          ]
        },
        "ac" : 9,
        "hitDice" : "3d6",
        "hp" : 10,
        "speed" : {
          "normal" : 20
        },
        "vulnerabilities" : [
          "fire"
        ],
        "damageVulnerabilities" : [
          "fire"
        ],
        "damageResistances" : [
          "piercing"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "one language known by its creator"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "6haenccB3FKhuLvW7",
        "name" : "Awakened Tree",
        "type" : "Plant",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing"
          ]
        },
        "ac" : 13,
        "hitDice" : "7d12",
        "hp" : 59,
        "speed" : {
          "normal" : 20
        },
        "vulnerabilities" : [
          "fire"
        ],
        "damageVulnerabilities" : [
          "fire"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "languages" : [
          "one language known by its creator"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "NMp3X4PBpPyJm5rPP",
        "name" : "Axe Beak",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "3d10",
        "hp" : 19,
        "speed" : {
          "normal" : NaN
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "vNgCkpJy6snDmALXN",
        "name" : "Azer",
        "type" : "Elemental",
        "size" : "Medium",
        "alignment" : "LN",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "6d8",
        "hp" : 39,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Con +4"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "passive Perception 11"
        ],
        "languages" : [
          "Ignan"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "iD7jMJEPRihvn27KM",
        "name" : "Baboon",
        "type" : "Beast",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d6",
        "hp" : 3,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "senses" : [
          "passive Perception 11"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "ECXMLjYSqixRDtir2",
        "name" : "Badger",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "1d4",
        "hp" : 3,
        "speed" : {
          "normal" : 20,
          "burrow" : 30
        },
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 11"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "QtvoFvY5sFKPnPjns",
        "name" : "Balor",
        "type" : "Fiend",
        "size" : "Huge",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "lightning"
          ]
        },
        "ac" : 19,
        "hitDice" : "21d12",
        "hp" : 262,
        "speed" : {
          "normal" : 40,
          "fly" : 80
        },
        "savingThrows" : [
          "Str +14",
          "Con +12",
          "Wis +9",
          "Cha +12"
        ],
        "damageResistances" : [
          "cold",
          "lightning"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Abyssal",
          "telepathy 120 ft."
        ],
        "xp" : "22000",
        "cr" : 19
      }

      
      {
        "_id" : "ADr5TqPTLRYgfGexc",
        "name" : "Barbed Devil",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 15,
        "hitDice" : "13d8",
        "hp" : 110,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Str +6",
          "Con +7",
          "Wis +5",
          "Cha +5"
        ],
        "skills" : [
          "Deception +5",
          "Insight +5",
          "Perception +8"
        ],
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 18"
        ],
        "languages" : [
          "Infernal",
          "telepathy 120 ft."
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "ozcnxB6yjoufPD6Ha",
        "name" : "Basilisk",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "8d8",
        "hp" : 52,
        "speed" : {
          "normal" : 20
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 9"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "LZMJMg3mKmwGeC9Pg",
        "name" : "Bat",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 5,
          "fly" : 30
        },
        "senses" : [
          "blindsight 60 ft.",
          "passive Perception 11"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "F9ozKnHGd2SmqNKfx",
        "name" : "Bearded Devil",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 13,
        "hitDice" : "8d8",
        "hp" : 52,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Str +5",
          "Con +4",
          "Wis +2"
        ],
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Infernal",
          "telepathy 120 ft."
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "GdcmSztQfMnHySn3c",
        "name" : "Behir",
        "type" : "Monstrosity",
        "size" : "Huge",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "lightning"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "16d12",
        "hp" : 168,
        "speed" : {
          "normal" : 50,
          "climb" : 40
        },
        "skills" : [
          "Perception +6",
          "Stealth +7"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "senses" : [
          "darkvision 90 ft.",
          "passive Perception 16"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "7200",
        "cr" : 11
      }

      
      {
        "_id" : "T58phhBEQA88yv3YN",
        "name" : "Black Bear",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "3d8",
        "hp" : 19,
        "speed" : {
          "normal" : 40,
          "climb" : 30
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "4dzNqgvYPwtjeGpHG",
        "name" : "Black Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "acid"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "6d8",
        "hp" : 33,
        "speed" : {
          "normal" : 30,
          "fly" : 60,
          "swim" : 30
        },
        "savingThrows" : [
          "Dex +4",
          "Con +3",
          "Wis +2",
          "Cha +3"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "acid"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "MYrRSyRLyCRgbQnub",
        "name" : "Black Pudding",
        "type" : "Ooze",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "acid",
            "cold",
            "lightning",
            "slashing"
          ],
          "conditions" : [
            "blinded",
            "charmed",
            "deafened",
            "exhaustion",
            "frightened",
            "prone"
          ]
        },
        "resistances" : {},
        "ac" : 7,
        "hitDice" : "10d10",
        "hp" : 85,
        "speed" : {
          "normal" : 20,
          "climb" : 20
        },
        "damageImmunities" : [
          "acid",
          "cold",
          "lightning",
          "slashing"
        ],
        "conditionImmunities" : [
          "blinded",
          "charmed",
          "deafened",
          "exhaustion",
          "frightened",
          "prone"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 8"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "zpmMbexpQT9yM2m7Z",
        "name" : "Blink Dog",
        "type" : "Fey",
        "size" : "Medium",
        "alignment" : "LG",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "4d8",
        "hp" : 22,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +3",
          "Stealth +5"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "languages" : [
          "Blink Dog",
          "understands Sylvan but can"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "r5X72ftThTgS989gB",
        "name" : "Blood Hawk",
        "type" : "Beast",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "2d6",
        "hp" : 7,
        "speed" : {
          "normal" : 10,
          "fly" : 60
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "xM9BJnjM3P2qG6jEm",
        "name" : "Blue Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "lightning"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "8d8",
        "hp" : 52,
        "speed" : {
          "normal" : 30,
          "burrow" : 15,
          "fly" : 60
        },
        "savingThrows" : [
          "Dex +2",
          "Con +4",
          "Wis +2",
          "Cha +4"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +2"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "LvpFfgy7SYtqgtMza",
        "name" : "Boar",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 9"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "LWAE4GFMnFp8GekBi",
        "name" : "Bone Devil",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 19,
        "hitDice" : "15d10",
        "hp" : 142,
        "speed" : {
          "normal" : 40,
          "fly" : 40
        },
        "savingThrows" : [
          "Int +5",
          "Wis +6",
          "Cha +7"
        ],
        "skills" : [
          "Deception +7",
          "Insight +6"
        ],
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Infernal",
          "telepathy 120 ft."
        ],
        "xp" : "5000",
        "cr" : 9
      }

      
      {
        "_id" : "74LmxZk2gfhEgAksF",
        "name" : "Brass Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "3d8",
        "hp" : 16,
        "speed" : {
          "normal" : 30,
          "burrow" : 15,
          "fly" : 60
        },
        "savingThrows" : [
          "Dex +2",
          "Con +3",
          "Wis +2",
          "Cha +3"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +2"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14295"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "v6zRrGwsJbZS2urNq",
        "name" : "Bronze Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "lightning"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "5d8",
        "hp" : 32,
        "speed" : {
          "normal" : 30,
          "fly" : 60,
          "swim" : 30
        },
        "savingThrows" : [
          "Dex +2",
          "Con +4",
          "Wis +2",
          "Cha +4"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +2"
        ],
        "damageImmunities" : [
          "lightning"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "eTvFdEaEALzmH7iZH",
        "name" : "Brown Bear",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "4d10",
        "hp" : 34,
        "speed" : {
          "normal" : 40,
          "climb" : 30
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "i7SmS4t97SDR6Tmqd",
        "name" : "Bugbear",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "5d8",
        "hp" : 27,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Stealth +6",
          "Survival +2"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Common",
          "Goblin"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "kMwmXk2HoS2mQ2rxY",
        "name" : "Bulette",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "9d10",
        "hp" : 94,
        "speed" : {
          "normal" : 40,
          "burrow" : 40
        },
        "skills" : [
          "Perception +6"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "tremorsense 60 ft.",
          "passive Perception 16"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "SayR7iaybDENRaxjP",
        "name" : "Camel",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 9,
        "hitDice" : "2d10",
        "hp" : 15,
        "speed" : {
          "normal" : 50
        },
        "senses" : [
          "passive Perception 9"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "jhHLFTyWhw2rf4sN8",
        "name" : "Cat",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d4",
        "hp" : 2,
        "speed" : {
          "normal" : 40,
          "climb" : 30
        },
        "skills" : [
          "Perception +3",
          "Stealth +4"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "pyPWrtEdrNbCJhnTq",
        "name" : "Centaur",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "NG",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "6d10",
        "hp" : 45,
        "speed" : {
          "normal" : 50
        },
        "skills" : [
          "Athletics +6",
          "Perception +3",
          "Survival +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "languages" : [
          "Elvish",
          "Sylvan"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "5qCiJ9bznBg9EC3iz",
        "name" : "Chain Devil",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 16,
        "hitDice" : "10d8",
        "hp" : 85,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Con +7",
          "Wis +4",
          "Cha +5"
        ],
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Infernal",
          "telepathy 120 ft."
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "5SMmkLTMmi6xdvqG7",
        "name" : "Chimera",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "12d10",
        "hp" : 114,
        "speed" : {
          "normal" : 30,
          "fly" : 60
        },
        "skills" : [
          "Perception +8"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 18"
        ],
        "languages" : [
          "understands Draconic but can"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "2n3BnCCNoDd5TdE5L",
        "name" : "Chuul",
        "type" : "Aberration",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "11d10",
        "hp" : 93,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +4"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "understands Deep Speech but can"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "eYDAuTuN9GFZHsxde",
        "name" : "Clay Golem",
        "type" : "Construct",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "acid",
            "poison",
            "psychic"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "paralyzed",
            "petrified",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "14d10",
        "hp" : 133,
        "speed" : {
          "normal" : 20
        },
        "damageImmunities" : [
          "acid",
          "poison",
          "psychic"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "paralyzed",
          "petrified",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 9"
        ],
        "languages" : [
          "understands the languages of its creator but can"
        ],
        "xp" : "5000",
        "cr" : 9
      }

      
      {
        "_id" : "2rLXAmQWMMWdNZxZa",
        "name" : "Cloaker",
        "type" : "Aberration",
        "size" : "Large",
        "alignment" : "CN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "12d10",
        "hp" : 78,
        "speed" : {
          "normal" : 10,
          "fly" : 40
        },
        "skills" : [
          "Stealth +5"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Deep Speech",
          "Undercommon"
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "br3euEbxESPbbJCxD",
        "name" : "Cloud Giant",
        "type" : "Giant",
        "size" : "Huge",
        "alignment" : "NG",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "16d12",
        "hp" : 200,
        "speed" : {
          "normal" : 40
        },
        "savingThrows" : [
          "Con +10",
          "Wis +7",
          "Cha +7"
        ],
        "skills" : [
          "Insight +7",
          "Perception +7"
        ],
        "senses" : [
          "passive Perception 17"
        ],
        "languages" : [
          "Common",
          "Giant"
        ],
        "xp" : "5000",
        "cr" : 9
      }

      
      {
        "_id" : "cu3EanzpfaLfBEigG",
        "name" : "Cockatrice",
        "type" : "Monstrosity",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "6d6",
        "hp" : 27,
        "speed" : {
          "normal" : 20,
          "fly" : 40
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "tbgBT6bStnk5bhLth",
        "name" : "Constrictor Snake",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "2d10",
        "hp" : 13,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 10"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "AFJ24fiZaq2oydQmF",
        "name" : "Copper Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "acid"
          ]
        },
        "resistances" : {},
        "ac" : 16,
        "hitDice" : "4d8",
        "hp" : 22,
        "speed" : {
          "normal" : 30,
          "climb" : 30,
          "fly" : 60
        },
        "savingThrows" : [
          "Dex +3",
          "Con +3",
          "Wis +2",
          "Cha +3"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +3"
        ],
        "damageImmunities" : [
          "acid"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "jq6xNxnWWoFTNBfiP",
        "name" : "Couatl",
        "type" : "Celestial",
        "size" : "Medium",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "psychic"
          ]
        },
        "resistances" : {
          "damage" : [
            "radiant"
          ]
        },
        "ac" : 19,
        "hitDice" : "13d8",
        "hp" : 97,
        "speed" : {
          "normal" : 30,
          "fly" : 90
        },
        "savingThrows" : [
          "Con +5",
          "Wis +7",
          "Cha +6"
        ],
        "damageResistances" : [
          "radiant"
        ],
        "damageImmunities" : [
          "psychic"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 15"
        ],
        "languages" : [
          "all",
          "telepathy 120 ft."
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "3FEnEPKWN2YDPmEto",
        "name" : "Crab",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "1d4",
        "hp" : 2,
        "speed" : {
          "normal" : 20,
          "swim" : 20
        },
        "skills" : [
          "Stealth +2"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "passive Perception 9"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "STARQ4oM2F8GGMNig",
        "name" : "Crocodile",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "3d10",
        "hp" : 19,
        "speed" : {
          "normal" : 20,
          "swim" : 30
        },
        "skills" : [
          "Stealth +2"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "pZpfWxZMNqdon46s9",
        "name" : "Darkmantle",
        "type" : "Monstrosity",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "5d6",
        "hp" : 22,
        "speed" : {
          "normal" : 10,
          "fly" : 30
        },
        "skills" : [
          "Stealth +3"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "passive Perception 10"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "DkTHErPLMNc4bzbiP",
        "name" : "Death Dog",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "6d8",
        "hp" : 39,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +5",
          "Stealth +4"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 15"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "4dQwdRgmoTg3XgCEc",
        "name" : "Deer",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "1d8",
        "hp" : 4,
        "speed" : {
          "normal" : 50
        },
        "senses" : [
          "passive Perception 12"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "9hso7hWxKkceHqPTe",
        "name" : "Deva",
        "type" : "Celestial",
        "size" : "Medium",
        "alignment" : "LG",
        "immunities" : {
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened"
          ]
        },
        "resistances" : {
          "damage" : [
            "radiant"
          ]
        },
        "ac" : 17,
        "hitDice" : "16d8",
        "hp" : 136,
        "speed" : {
          "normal" : 30,
          "fly" : 90
        },
        "savingThrows" : [
          "Wis +9",
          "Cha +9"
        ],
        "skills" : [
          "Insight +9",
          "Perception +9"
        ],
        "damageResistances" : [
          "radiant"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 19264"
        ],
        "languages" : [
          "all",
          "telepathy 120 ft."
        ],
        "xp" : "5900",
        "cr" : 10
      }

      
      {
        "_id" : "QWNSLkZnjxT7y9Yre",
        "name" : "Diseased Giant Rat",
        "type" : "Beast",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "2d6",
        "hp" : 7,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "xqkSrbc67tqtGwoa7",
        "name" : "Doppelganger",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {
          "conditions" : [
            "charmed"
          ]
        },
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "8d8",
        "hp" : 52,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Deception +6",
          "Insight +3"
        ],
        "conditionImmunities" : [
          "charmed"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Common"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "GtqwnLEj9dc57vseF",
        "name" : "Dragon Turtle",
        "type" : "Dragon",
        "size" : "Gargantuan",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "fire"
          ]
        },
        "ac" : 20,
        "hitDice" : "22d20",
        "hp" : 341,
        "speed" : {
          "normal" : 20,
          "swim" : 40
        },
        "savingThrows" : [
          "Dex +6",
          "Con +11",
          "Wis +7"
        ],
        "damageResistances" : [
          "fire"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 11306"
        ],
        "languages" : [
          "Aquan",
          "Draconic"
        ],
        "xp" : "18000",
        "cr" : 17
      }

      
      {
        "_id" : "A8HKouganijNWRkqG",
        "name" : "Draft Horse",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "3d10",
        "hp" : 19,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "BWLRGb6mRtWHqKpPC",
        "name" : "Dretch",
        "type" : "Fiend",
        "size" : "Small",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 11,
        "hitDice" : "4d6",
        "hp" : 18,
        "speed" : {
          "normal" : NaN
        },
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 9"
        ],
        "languages" : [
          "Abyssal",
          "telepathy 60 ft. (works only with creatures that understand Abyssal)"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "tWYxQqFMjnQzgQY5e",
        "name" : "Dire Wolf",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "5d10",
        "hp" : 37,
        "speed" : {
          "normal" : 50
        },
        "skills" : [
          "Perception +3",
          "Stealth +4"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "7op66zDHHNhaEK7Qo",
        "name" : "Djinni",
        "type" : "Elemental",
        "size" : "Large",
        "alignment" : "CG",
        "immunities" : {
          "damage" : [
            "lightning",
            "thunder312"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "14d10",
        "hp" : 161,
        "speed" : {
          "normal" : 30,
          "fly" : 90
        },
        "savingThrows" : [
          "Dex +6",
          "Wis +7",
          "Cha +9"
        ],
        "damageImmunities" : [
          "lightning",
          "thunder312"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Auran"
        ],
        "xp" : "7200",
        "cr" : 11
      }

      
      {
        "_id" : "CDbrHLdm95n23SXKq",
        "name" : "Drider",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 19,
        "hitDice" : "13d10",
        "hp" : 123,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "skills" : [
          "Perception +5",
          "Stealth +9"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 15"
        ],
        "languages" : [
          "Elvish",
          "Undercommon"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "7qstXwARSBMXA7LCY",
        "name" : "Dryad",
        "type" : "Fey",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Perception +4",
          "Stealth +5"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Elvish",
          "Sylvan"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "q9e7EqTRudsvYz88b",
        "name" : "Duergar",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {},
        "resistances" : {
          "damage" : [
            "poison"
          ]
        },
        "ac" : 16,
        "hitDice" : "4d8",
        "hp" : 26,
        "speed" : {
          "normal" : 25
        },
        "damageResistances" : [
          "poison"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Dwarvish",
          "Undercommon"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "GXNERXLmhwpbJEwGJ",
        "name" : "Dust Mephit",
        "type" : "Elemental",
        "size" : "Small",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "5d6",
        "hp" : 17,
        "speed" : {
          "normal" : 30,
          "fly" : 30
        },
        "skills" : [
          "Perception +2",
          "Stealth +4"
        ],
        "vulnerabilities" : [
          "fire"
        ],
        "damageVulnerabilities" : [
          "fire"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Auran",
          "Terran"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "NhoWhukQW3iymmqFd",
        "name" : "Eagle",
        "type" : "Beast",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "1d6",
        "hp" : 3,
        "speed" : {
          "normal" : 10,
          "fly" : 60
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "K4KMYcKtHfgHhCJky",
        "name" : "Earth Elemental",
        "type" : "Elemental",
        "size" : "Large",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "paralyzed",
            "petrified",
            "poisoned",
            "unconscious"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks"
          ]
        },
        "ac" : 17,
        "hitDice" : "12d10",
        "hp" : 126,
        "speed" : {
          "normal" : 30,
          "burrow" : 30
        },
        "vulnerabilities" : [
          "thunder"
        ],
        "damageVulnerabilities" : [
          "thunder"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "paralyzed",
          "petrified",
          "poisoned",
          "unconscious"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "tremorsense 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Terran"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "cKcdNQXWoFzJJJKbh",
        "name" : "Efreeti",
        "type" : "Elemental",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "16d10",
        "hp" : 200,
        "speed" : {
          "normal" : 40,
          "fly" : 60
        },
        "savingThrows" : [
          "Int +7",
          "Wis +6",
          "Cha +7"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Ignan"
        ],
        "xp" : "7200",
        "cr" : 11
      }

      
      {
        "_id" : "w2ymhoYEz7LnbCTov",
        "name" : "Elephant",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "8d12",
        "hp" : 76,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "xNLipisWZqQQF25Rt",
        "name" : "Elf, Drow",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "3d8",
        "hp" : 13,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Perception +2",
          "Stealth +4"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Elvish",
          "Undercommon"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "re2bLohiFFgPkBvki",
        "name" : "Elk",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "2d10",
        "hp" : 13,
        "speed" : {
          "normal" : 50
        },
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "rG8xQ7WxEcpyJA8mM",
        "name" : "Erinyes",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 18,
        "hitDice" : "18d8",
        "hp" : 153,
        "speed" : {
          "normal" : 30,
          "fly" : 60
        },
        "savingThrows" : [
          "Dex +7",
          "Con +8",
          "Wis +6",
          "Cha +8"
        ],
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Infernal",
          "telepathy 120 ft."
        ],
        "xp" : "8400",
        "cr" : 12
      }

      
      {
        "_id" : "QNLxYPGLNMP8KyXy4",
        "name" : "Ettercap",
        "type" : "Monstrosity",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "8d8",
        "hp" : 44,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "skills" : [
          "Perception +3",
          "Stealth +4",
          "Survival +3"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 13"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "8c4xqSeE6LBKsBGkD",
        "name" : "Ettin",
        "type" : "Giant",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "10d10",
        "hp" : 85,
        "speed" : {
          "normal" : 40
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Giant",
          "Orc"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "pnEFZLzdjnEQhPobE",
        "name" : "Fire Elemental",
        "type" : "Elemental",
        "size" : "Large",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained",
            "unconscious"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks"
          ]
        },
        "ac" : 13,
        "hitDice" : "12d10",
        "hp" : 102,
        "speed" : {
          "normal" : 50
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained",
          "unconscious"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Ignan"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "YZnviHmj5BbTQsGxx",
        "name" : "Fire Giant",
        "type" : "Giant",
        "size" : "Huge",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "13d12",
        "hp" : 162,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Dex +3",
          "Con +10",
          "Cha +5"
        ],
        "skills" : [
          "Athletics +11",
          "Perception +6"
        ],
        "damageImmunities" : [
          "fire"
        ],
        "senses" : [
          "passive Perception 16"
        ],
        "languages" : [
          "Giant"
        ],
        "xp" : "5000",
        "cr" : 9
      }

      
      {
        "_id" : "fzNWABbNDSPRZhxzE",
        "name" : "Flesh Golem",
        "type" : "Construct",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "lightning",
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "paralyzed",
            "petrified",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 9,
        "hitDice" : "11d8",
        "hp" : 93,
        "speed" : {
          "normal" : 30
        },
        "damageImmunities" : [
          "lightning",
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "paralyzed",
          "petrified",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "understands the languages of its creator but can"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "puBTWmNBvaodv9NJE",
        "name" : "Flying Snake",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "2d4",
        "hp" : 5,
        "speed" : {
          "normal" : 30,
          "fly" : 60,
          "swim" : 30
        },
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 11"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "kquv942HJXvG6vkyq",
        "name" : "Flying Sword",
        "type" : "Construct",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {
          "damage" : [
            "poison",
            "psychic"
          ],
          "conditions" : [
            "blinded",
            "charmed",
            "deafened",
            "frightened",
            "paralyzed",
            "petrified",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "5d6",
        "hp" : 17,
        "speed" : {
          "normal" : 0,
          "fly" : 50
        },
        "savingThrows" : [
          "Dex +4"
        ],
        "damageImmunities" : [
          "poison",
          "psychic"
        ],
        "conditionImmunities" : [
          "blinded",
          "charmed",
          "deafened",
          "frightened",
          "paralyzed",
          "petrified",
          "poisoned"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 7"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "FD6wpAwgzdiLg9ahq",
        "name" : "Frog",
        "type" : "Beast",
        "size" : "Tiny",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "1d4",
        "hp" : 1,
        "speed" : {
          "normal" : 20,
          "swim" : 20
        },
        "skills" : [
          "Perception +1",
          "Stealth +3"
        ],
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 11"
        ],
        "xp" : "0",
        "cr" : 0
      }

      
      {
        "_id" : "NicXa4rvd6Wxpq8K5",
        "name" : "Frost Giant",
        "type" : "Giant",
        "size" : "Huge",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "cold"
          ]
        },
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "12d12",
        "hp" : 138,
        "speed" : {
          "normal" : 40
        },
        "savingThrows" : [
          "Con +8",
          "Wis +3",
          "Cha +4"
        ],
        "skills" : [
          "Athletics +9",
          "Perception +3"
        ],
        "damageImmunities" : [
          "cold"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "languages" : [
          "Giant"
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "JewbqzGuEzAmmrhHE",
        "name" : "Gargoyle",
        "type" : "Elemental",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "petrified",
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks that aren"
          ]
        },
        "ac" : 15,
        "hitDice" : "7d8",
        "hp" : 52,
        "speed" : {
          "normal" : 30,
          "fly" : 60
        },
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks that aren"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "petrified",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Terran"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "42JA6pePcrrcd6x69",
        "name" : "Gelatinous Cube",
        "type" : "Ooze",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "blinded",
            "charmed",
            "deafened",
            "exhaustion",
            "frightened",
            "prone"
          ]
        },
        "resistances" : {},
        "ac" : 6,
        "hitDice" : "8d10",
        "hp" : 84,
        "speed" : {
          "normal" : 15
        },
        "conditionImmunities" : [
          "blinded",
          "charmed",
          "deafened",
          "exhaustion",
          "frightened",
          "prone"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 8"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "WtfmzWpqH32Tm45ZR",
        "name" : "Ghast",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "necrotic"
          ]
        },
        "ac" : 13,
        "hitDice" : "8d8",
        "hp" : 36,
        "speed" : {
          "normal" : 30
        },
        "damageResistances" : [
          "necrotic"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Common"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "LnTG74aqBpAppYaWY",
        "name" : "Ghost",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "any",
        "immunities" : {
          "damage" : [
            "cold",
            "necrotic",
            "poison313"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "frightened",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid",
            "fire",
            "lightning",
            "thunder"
          ]
        },
        "ac" : 11,
        "hitDice" : "10d8",
        "hp" : 45,
        "speed" : {
          "normal" : 0,
          "fly" : 40
        },
        "damageResistances" : [
          "acid",
          "fire",
          "lightning",
          "thunder"
        ],
        "damageImmunities" : [
          "cold",
          "necrotic",
          "poison313"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "frightened",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "any languages it knew in life"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "LSi2jjfekrHbthyFR",
        "name" : "Ghoul",
        "type" : "Undead",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "exhaustion",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "5d8",
        "hp" : 22,
        "speed" : {
          "normal" : 30
        },
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "exhaustion",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "Common"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "hFno5NYcxKBuQsy8R",
        "name" : "Giant Ape",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "15d12",
        "hp" : 157,
        "speed" : {
          "normal" : 40,
          "climb" : 40
        },
        "skills" : [
          "Athletics +9",
          "Perception +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "xp" : "2900",
        "cr" : 7
      }

      
      {
        "_id" : "cSqHuabPYQhzTz4y9",
        "name" : "Giant Badger",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 10,
        "hitDice" : "2d8",
        "hp" : 13,
        "speed" : {
          "normal" : 30,
          "burrow" : 10
        },
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 11"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "u8c8o6LgSMAvW6koZ",
        "name" : "Giant Bat",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "4d10",
        "hp" : 22,
        "speed" : {
          "normal" : 10,
          "fly" : 60
        },
        "senses" : [
          "blindsight 60 ft.",
          "passive Perception 11"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "oMJJzAcw7dE3DpnFE",
        "name" : "Giant Boar",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "5d10",
        "hp" : 42,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 8"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "QpwTrHu9tXqZQhxsD",
        "name" : "Giant Centipede",
        "type" : "Beast",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "1d6",
        "hp" : 4,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "senses" : [
          "blindsight 30 ft.",
          "passive Perception 8"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "GegDDKspw7LdLHwot",
        "name" : "Giant Constrictor Snake",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "8d12",
        "hp" : 60,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +2"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 12"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "3XH7K7R5Aq5qKE9yi",
        "name" : "Giant Crab",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "3d8",
        "hp" : 13,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Stealth +4"
        ],
        "senses" : [
          "blindsight 30 ft.",
          "passive Perception 9"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "kBcdwKwkE7B3pdd6H",
        "name" : "Giant Crocodile",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "9d12",
        "hp" : 85,
        "speed" : {
          "normal" : 30,
          "swim" : 50
        },
        "skills" : [
          "Stealth +5"
        ],
        "senses" : [
          "passive Perception 10"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "QKNA7YB6pxnCa6yPE",
        "name" : "Giant Eagle",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "NG",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "4d10",
        "hp" : 26,
        "speed" : {
          "normal" : 10,
          "fly" : 80
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "languages" : [
          "Giant Eagle",
          "understands Common and Auran but can"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "mXio3cQjSRKJKcNGf",
        "name" : "Giant Elk",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "5d12",
        "hp" : 42,
        "speed" : {
          "normal" : 60
        },
        "skills" : [
          "Perception +4"
        ],
        "senses" : [
          "passive Perception 14"
        ],
        "languages" : [
          "Giant Elk",
          "understands Common",
          "Elvish",
          "and Sylvan but can"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "NwhYakBxnSMfBvoQC",
        "name" : "Giant Fire Beetle",
        "type" : "Beast",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "1d6",
        "hp" : 4,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "blindsight 30 ft.",
          "passive Perception 8"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "pr4rQFjcnfpHr3XGP",
        "name" : "Giant Frog",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "4d8",
        "hp" : 18,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +2",
          "Stealth +3"
        ],
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 12"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "Ssa47GSEMFqC6wcdg",
        "name" : "Giant Goat",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "3d10",
        "hp" : 19,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "passive Perception 11"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "bHXbiCjPs6yfnpKCs",
        "name" : "Giant Hyena",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "6d10",
        "hp" : 45,
        "speed" : {
          "normal" : 50
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "passive Perception 13"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "yRFN6vieajtKobJSy",
        "name" : "Giant Lizard",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "3d10",
        "hp" : 19,
        "speed" : {
          "normal" : 30,
          "climb" : 30
        },
        "senses" : [
          "darkvision 30 ft.",
          "passive Perception 10"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "Mr3NDtKTEmXXLQ5Dc",
        "name" : "Giant Octopus",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "8d10",
        "hp" : 52,
        "speed" : {
          "normal" : 10,
          "swim" : 60
        },
        "skills" : [
          "Perception +4",
          "Stealth +5"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "7gXjBW7axTG7mkJBF",
        "name" : "Giant Owl",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "TN",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "3d10",
        "hp" : 19,
        "speed" : {
          "normal" : 5,
          "fly" : 60
        },
        "skills" : [
          "Perception +5",
          "Stealth +4"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 15"
        ],
        "languages" : [
          "Giant Owl",
          "understands Common",
          "Elvish",
          "and Sylvan but can"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "hTNcSL4ZYGcCaaMWE",
        "name" : "Giant Poisonous Snake",
        "type" : "Beast",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 14,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 30,
          "swim" : 30
        },
        "skills" : [
          "Perception +2"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "passive Perception 12"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "dxKdkfujPS44tqoPf",
        "name" : "Giant Rat",
        "type" : "Beast",
        "size" : "Small",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 12,
        "hitDice" : "2d6",
        "hp" : 7,
        "speed" : {
          "normal" : 30
        },
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "xp" : "25",
        "cr" : 1
      }

      
      {
        "_id" : "DxoPtAvqSWeHL4XY2",
        "name" : "Giant Scorpion",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 15,
        "hitDice" : "7d10",
        "hp" : 52,
        "speed" : {
          "normal" : 40
        },
        "senses" : [
          "blindsight 60 ft.",
          "passive Perception 9"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "yoBq5AsTGjKmafw69",
        "name" : "Giant Sea Horse",
        "type" : "Beast",
        "size" : "Large",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "3d10",
        "hp" : 16,
        "speed" : {
          "normal" : 0,
          "swim" : 40
        },
        "senses" : [
          "passive Perception 11"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "qKRvS24Sa9MwnYoWS",
        "name" : "Giant Shark",
        "type" : "Beast",
        "size" : "Huge",
        "alignment" : "unaligned",
        "immunities" : {},
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "11d12",
        "hp" : 126,
        "speed" : {
          "normal" : 0,
          "swim" : 50
        },
        "skills" : [
          "Perception +3"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "passive Perception 13"
        ],
        "xp" : "1800",
        "cr" : 5
      }

      
      {
        "_id" : "K9hbbCwDkcPnmwcZH",
        "name" : "Glabrezu",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 17,
        "hitDice" : "15d10",
        "hp" : 157,
        "speed" : {
          "normal" : 40
        },
        "savingThrows" : [
          "Str +9",
          "Con +9",
          "Wis +7",
          "Cha +7"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Abyssal",
          "telepathy 120 ft."
        ],
        "xp" : "5000",
        "cr" : 9
      }

      
      {
        "_id" : "n6GuYtYJWFGkMfq9m",
        "name" : "Gold Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "fire303"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "8d8",
        "hp" : 60,
        "speed" : {
          "normal" : 30,
          "fly" : 60,
          "swim" : 30
        },
        "savingThrows" : [
          "Dex +4",
          "Con +5",
          "Wis +2",
          "Cha +5"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +4"
        ],
        "damageImmunities" : [
          "fire303"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "700",
        "cr" : 3
      }

      
      {
        "_id" : "P6w6M2MKNoNX2YqMW",
        "name" : "Gray Ooze",
        "type" : "Ooze",
        "size" : "Medium",
        "alignment" : "unaligned",
        "immunities" : {
          "conditions" : [
            "blinded",
            "charmed",
            "deafened",
            "exhaustion",
            "frightened",
            "prone"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid",
            "cold",
            "fire"
          ]
        },
        "ac" : 8,
        "hitDice" : "3d8",
        "hp" : 22,
        "speed" : {
          "normal" : 10,
          "climb" : 10
        },
        "skills" : [
          "Stealth +2"
        ],
        "damageResistances" : [
          "acid",
          "cold",
          "fire"
        ],
        "conditionImmunities" : [
          "blinded",
          "charmed",
          "deafened",
          "exhaustion",
          "frightened",
          "prone"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 8"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "Z8xWxzGZBTFpShHQQ",
        "name" : "Green Dragon Wyrmling",
        "type" : "Dragon",
        "size" : "Medium",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 17,
        "hitDice" : "7d8",
        "hp" : 38,
        "speed" : {
          "normal" : 30,
          "fly" : 60,
          "swim" : 30
        },
        "savingThrows" : [
          "Dex +3",
          "Con +3",
          "Wis +2",
          "Cha +3"
        ],
        "skills" : [
          "Perception +4",
          "Stealth +3"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "blindsight 10 ft.",
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Draconic"
        ],
        "xp" : "450",
        "cr" : 2
      }

      
      {
        "_id" : "WFMn3o6Zqt46E9TwN",
        "name" : "Grimlock",
        "type" : "Humanoid",
        "size" : "Medium",
        "alignment" : "NE",
        "immunities" : {
          "conditions" : [
            "blinded"
          ]
        },
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "2d8",
        "hp" : 11,
        "speed" : {
          "normal" : 30
        },
        "skills" : [
          "Athletics +5",
          "Perception +3",
          "Stealth +3"
        ],
        "conditionImmunities" : [
          "blinded"
        ],
        "senses" : [
          "blindsight 30 ft. or 10 ft. while deafened (blind beyond this radius)",
          "passive Perception 13"
        ],
        "languages" : [
          "Undercommon"
        ],
        "xp" : "50",
        "cr" : 1
      }

      
      {
        "_id" : "K9LYxrjpTxzMB6HZd",
        "name" : "Guardian Naga",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "LG",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 18,
        "hitDice" : "15d10",
        "hp" : 127,
        "speed" : {
          "normal" : 40
        },
        "savingThrows" : [
          "Dex +8",
          "Con +7",
          "Int +7",
          "Wis +8",
          "Cha +8"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 14"
        ],
        "languages" : [
          "Celestial",
          "Common"
        ],
        "xp" : "5900",
        "cr" : 10
      }

      
      {
        "_id" : "a3EYJMZC7mzBeLsJb",
        "name" : "Gynosphinx",
        "type" : "Monstrosity",
        "size" : "Large",
        "alignment" : "LN",
        "immunities" : {
          "damage" : [
            "psychic"
          ],
          "conditions" : [
            "charmed",
            "frightened"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks"
          ]
        },
        "ac" : 17,
        "hitDice" : "16d10",
        "hp" : 136,
        "speed" : {
          "normal" : 40,
          "fly" : 60
        },
        "skills" : [
          "Arcana +12",
          "History +12",
          "Perception +8",
          "Religion +8"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks"
        ],
        "damageImmunities" : [
          "psychic"
        ],
        "conditionImmunities" : [
          "charmed",
          "frightened"
        ],
        "senses" : [
          "truesight 120 ft.",
          "passive Perception 18"
        ],
        "languages" : [
          "Common",
          "Sphinx"
        ],
        "xp" : "7200",
        "cr" : 11
      }

      
      {
        "_id" : "eWjNk4scRyBXefiNK",
        "name" : "Hezrou",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold",
            "fire",
            "lightning"
          ]
        },
        "ac" : 16,
        "hitDice" : "13d10",
        "hp" : 136,
        "speed" : {
          "normal" : 30
        },
        "savingThrows" : [
          "Str +7",
          "Con +8",
          "Wis +4"
        ],
        "damageResistances" : [
          "cold",
          "fire",
          "lightning"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Abyssal",
          "telepathy 120 ft."
        ],
        "xp" : "3900",
        "cr" : 8
      }

      
      {
        "_id" : "EZjYwXkSsrdbFs2zc",
        "name" : "Homunculus",
        "type" : "Construct",
        "size" : "Tiny",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "charmed",
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 13,
        "hitDice" : "2d4",
        "hp" : 5,
        "speed" : {
          "normal" : 20,
          "fly" : 40
        },
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "charmed",
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 10"
        ],
        "languages" : [
          "understands the languages of its creator but can"
        ],
        "xp" : "10",
        "cr" : 0
      }

      
      {
        "_id" : "5AeSAn8ZLFehZMCYW",
        "name" : "Horned Devil",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 18,
        "hitDice" : "17d10",
        "hp" : 148,
        "speed" : {
          "normal" : 20,
          "fly" : 60
        },
        "savingThrows" : [
          "Str +10",
          "Dex +7",
          "Wis +7",
          "Cha +7"
        ],
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 13"
        ],
        "languages" : [
          "Infernal",
          "telepathy 120 ft."
        ],
        "xp" : "7200",
        "cr" : 11
      }

      
      {
        "_id" : "r4nNLmXzkCSLLimPy",
        "name" : "Ice Devil",
        "type" : "Fiend",
        "size" : "Large",
        "alignment" : "LE",
        "immunities" : {
          "damage" : [
            "cold",
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks that aren"
          ]
        },
        "ac" : 18,
        "hitDice" : "19d10",
        "hp" : 180,
        "speed" : {
          "normal" : 40
        },
        "savingThrows" : [
          "Dex +7",
          "Con +9",
          "Wis +7",
          "Cha +9"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks that aren"
        ],
        "damageImmunities" : [
          "cold",
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "blindsight 60 ft.",
          "darkvision 120 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Infernal",
          "telepathy 120 ft."
        ],
        "xp" : "11500",
        "cr" : 14
      }

      
      {
        "_id" : "e2vhBAoxN62WsYJ3y",
        "name" : "Ice Mephit",
        "type" : "Elemental",
        "size" : "Small",
        "alignment" : "NE",
        "immunities" : {
          "damage" : [
            "cold",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {},
        "ac" : 11,
        "hitDice" : "6d6",
        "hp" : 21,
        "speed" : {
          "normal" : 30,
          "fly" : 30
        },
        "skills" : [
          "Perception +2",
          "Stealth +3"
        ],
        "vulnerabilities" : [
          "bludgeoning",
          "fire"
        ],
        "damageVulnerabilities" : [
          "bludgeoning",
          "fire"
        ],
        "damageImmunities" : [
          "cold",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 12"
        ],
        "languages" : [
          "Aquan",
          "Auran"
        ],
        "xp" : "100",
        "cr" : 1
      }

      
      {
        "_id" : "vpGfS7MLGuTGn6PMH",
        "name" : "Imp",
        "type" : "Fiend",
        "size" : "Tiny",
        "alignment" : "-",
        "immunities" : {
          "damage" : [
            "fire",
            "poison"
          ],
          "conditions" : [
            "poisoned"
          ]
        },
        "resistances" : {
          "damage" : [
            "cold"
          ]
        },
        "ac" : 13,
        "hitDice" : "3d4",
        "hp" : 10,
        "speed" : {
          "normal" : 20,
          "fly" : 40
        },
        "skills" : [
          "Deception +4",
          "Insight +3",
          "Persuasion +4",
          "Stealth +5"
        ],
        "damageResistances" : [
          "cold"
        ],
        "damageImmunities" : [
          "fire",
          "poison"
        ],
        "conditionImmunities" : [
          "poisoned"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Infernal",
          "Common"
        ],
        "xp" : "200",
        "cr" : 1
      }

      
      {
        "_id" : "PeS2JWdG49bpfzApR",
        "name" : "Invisible Stalker",
        "type" : "Elemental",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained",
            "unconscious"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical attacks"
          ]
        },
        "ac" : 14,
        "hitDice" : "16d8",
        "hp" : 104,
        "speed" : {
          "normal" : 50,
          "fly" : 50
        },
        "skills" : [
          "Perception +8",
          "Stealth +10"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical attacks"
        ],
        "damageImmunities" : [
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained",
          "unconscious"
        ],
        "senses" : [
          "darkvision 60 ft.",
          "passive Perception 18"
        ],
        "languages" : [
          "Auran",
          "understands Common but doesn"
        ],
        "xp" : "2300",
        "cr" : 6
      }

      
      {
        "_id" : "LJChu4WvgBnK6Mtu8",
        "name" : "Helmed Horror",
        "type" : "Construct",
        "size" : "Medium",
        "alignment" : "TN",
        "immunities" : {
          "damage" : [
            "force",
            "necrotic",
            "poison"
          ],
          "conditions" : [
            "blinded",
            "charmed",
            "deafened",
            "frightened",
            "paralyzed",
            "petrified",
            "poisoned",
            "stunned"
          ]
        },
        "resistances" : {
          "damage" : [
            "bludgeoning",
            "piercing",
            "and slashing from nonmagical weapons that aren"
          ]
        },
        "ac" : 20,
        "hitDice" : "8d8",
        "hp" : 60,
        "speed" : {
          "normal" : 30,
          "fly" : 30
        },
        "skills" : [
          "Perception +4"
        ],
        "damageResistances" : [
          "bludgeoning",
          "piercing",
          "and slashing from nonmagical weapons that aren"
        ],
        "damageImmunities" : [
          "force",
          "necrotic",
          "poison"
        ],
        "conditionImmunities" : [
          "blinded",
          "charmed",
          "deafened",
          "frightened",
          "paralyzed",
          "petrified",
          "poisoned",
          "stunned"
        ],
        "senses" : [
          "blindsight 60 ft. (blind beyond this radius)",
          "passive Perception 14"
        ],
        "languages" : [
          "understands the languages of its creator but can"
        ],
        "xp" : "1100",
        "cr" : 4
      }

      
      {
        "_id" : "mqp2pYoAdKiietLvc",
        "name" : "Shadow Demon",
        "type" : "Fiend",
        "size" : "Medium",
        "alignment" : "CE",
        "immunities" : {
          "damage" : [
            "cold",
            "lightning",
            "poison"
          ],
          "conditions" : [
            "exhaustion",
            "grappled",
            "paralyzed",
            "petrified",
            "poisoned",
            "prone",
            "restrained"
          ]
        },
        "resistances" : {
          "damage" : [
            "acid",
            "fire",
            "necrotic",
            "thunder"
          ]
        },
        "ac" : 13,
        "hitDice" : "12d8",
        "hp" : 66,
        "speed" : {
          "normal" : 30,
          "fly" : 30
        },
        "savingThrows" : [
          "Dex +5",
          "Cha +4"
        ],
        "skills" : [
          "Stealth +7"
        ],
        "vulnerabilities" : [
          "radiant"
        ],
        "damageVulnerabilities" : [
          "radiant"
        ],
        "damageResistances" : [
          "acid",
          "fire",
          "necrotic",
          "thunder"
        ],
        "damageImmunities" : [
          "cold",
          "lightning",
          "poison"
        ],
        "conditionImmunities" : [
          "exhaustion",
          "grappled",
          "paralyzed",
          "petrified",
          "poisoned",
          "prone",
          "restrained"
        ],
        "senses" : [
          "darkvision 120 ft.",
          "passive Perception 11"
        ],
        "languages" : [
          "Abyssal",
          "telepathy 120 ft."
        ],
        "xp" : "1100",
        "cr" : 4
      }
    ]

    for i in [0...monsters.length]
      Monster.insert monsters[i], { validate: false }