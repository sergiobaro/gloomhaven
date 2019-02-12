
export const BOSS_STATS = {
    "Bandit Commander": [
        (numPlayers) => ({
            "maxHP": 8 * numPlayers,
            "move": 3,
            "attack": 3,
            "range": 0,
            "specialOne": ["Move to next door and reveal room"],
            "specialTwo": ["Summon Living Bones"],
            "immunities": [IMMOBILIZE, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 10 * numPlayers,
            "move": 3,
            "attack": 3,
            "range": 0,
            "specialOne": ["Move to next door and reveal room"],
            "specialTwo": ["Summon Living Bones"],
            "immunities": [IMMOBILIZE, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 12 * numPlayers,
            "move": 4,
            "attack": 3,
            "range": 0,
            "specialOne": ["Move to next door and reveal room"],
            "specialTwo": ["Summon Living Bones"],
            "immunities": [IMMOBILIZE, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 13 * numPlayers,
            "move": 4,
            "attack": 4,
            "range": 0,
            "specialOne": ["Move to next door and reveal room"],
            "specialTwo": ["Summon Living Bones"],
            "immunities": [IMMOBILIZE, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 15 * numPlayers,
            "move": 4,
            "attack": 4,
            "range": 0,
            "specialOne": ["Move to next door and reveal room"],
            "specialTwo": ["Summon Living Bones"],
            "immunities": [IMMOBILIZE, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 16 * numPlayers,
            "move": 5,
            "attack": 5,
            "range": 0,
            "specialOne": ["Move to next door and reveal room"],
            "specialTwo": ["Summon Living Bones"],
            "immunities": [IMMOBILIZE, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 19 * numPlayers,
            "move": 5,
            "attack": 5,
            "range": 0,
            "specialOne": ["Move to next door and reveal room"],
            "specialTwo": ["Summon Living Bones"],
            "immunities": [IMMOBILIZE, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 23 * numPlayers,
            "move": 5,
            "attack": 5,
            "range": 0,
            "specialOne": ["Move to next door and reveal room"],
            "specialTwo": ["Summon Living Bones"],
            "immunities": [IMMOBILIZE, STUN, CURSE]
        }),
    ],
    "The Betrayer": [
        (numPlayers) => ({
            "maxHP": 10 * numPlayers,
            "move": 3,
            "attack": 4,
            "range": 3,
            "specialOne": ["Summon Giant Viper and Fear"],
            "specialTwo": ["Mind Control"],
            "immunities": [POISON, WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 12 * numPlayers,
            "move": 3,
            "attack": 5,
            "range": 3,
            "specialOne": ["Summon Giant Viper and Fear"],
            "specialTwo": ["Mind Control"],
            "immunities": [POISON, WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 14 * numPlayers,
            "move": 3,
            "attack": 6,
            "range": 4,
            "specialOne": ["Summon Giant Viper and Fear"],
            "specialTwo": ["Mind Control"],
            "immunities": [POISON, WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 16 * numPlayers,
            "move": 4,
            "attack": 7,
            "range": 4,
            "specialOne": ["Summon Giant Viper and Fear"],
            "specialTwo": ["Mind Control"],
            "immunities": [POISON, WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 18 * numPlayers,
            "move": 4,
            "attack": 8,
            "range": 4,
            "specialOne": ["Summon Giant Viper and Fear"],
            "specialTwo": ["Mind Control"],
            "immunities": [POISON, WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 20 * numPlayers,
            "move": 5,
            "attack": 8,
            "range": 5,
            "specialOne": ["Summon Giant Viper and Fear"],
            "specialTwo": ["Mind Control"],
            "immunities": [POISON, WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 23 * numPlayers,
            "move": 5,
            "attack": 9,
            "range": 5,
            "specialOne": ["Summon Giant Viper and Fear"],
            "specialTwo": ["Mind Control"],
            "immunities": [POISON, WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 27 * numPlayers,
            "move": 5,
            "attack": 9,
            "range": 5,
            "specialOne": ["Summon Giant Viper and Fear"],
            "specialTwo": ["Mind Control"],
            "immunities": [POISON, WOUND, DISARM, STUN, CURSE]
        }),
    ],
    "Captain of the Guard": [
        (numPlayers) => ({
            "maxHP": 7 * numPlayers,
            "move": 2,
            "attack": 3,
            "range": 0,
            "specialOne": [action(HEAL, "2", ["Affect Self and all allies"])],
            "specialTwo": [action(COMPOUND_TEXT, ["All allies add +1 ", action(ATTACK), "to all attacks this round"])],
            "immunities": [WOUND, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 9 * numPlayers,
            "move": 2,
            "attack": 3,
            "range": 0,
            "specialOne": [action(HEAL, "2", ["Affect Self and all allies"])],
            "specialTwo": [action(COMPOUND_TEXT, ["All allies add +1 ", action(ATTACK), "to all attacks this round"])],
            "immunities": [WOUND, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 11 * numPlayers,
            "move": 2,
            "attack": 4,
            "range": 0,
            "specialOne": [action(HEAL, "2", ["Affect Self and all allies"])],
            "specialTwo": [action(COMPOUND_TEXT, ["All allies add +1 ", action(ATTACK), "to all attacks this round"])],
            "immunities": [WOUND, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 14 * numPlayers,
            "move": 3,
            "attack": 4,
            "range": 0,
            "specialOne": [action(HEAL, "2", ["Affect Self and all allies"])],
            "specialTwo": [action(COMPOUND_TEXT, ["All allies add +1 ", action(ATTACK), "to all attacks this round"])],
            "immunities": [WOUND, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 16 * numPlayers,
            "move": 3,
            "attack": 5,
            "range": 0,
            "specialOne": [action(HEAL, "2", ["Affect Self and all allies"])],
            "specialTwo": [action(COMPOUND_TEXT, ["All allies add +1 ", action(ATTACK), "to all attacks this round"])],
            "immunities": [WOUND, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 20 * numPlayers,
            "move": 3,
            "attack": 5,
            "range": 0,
            "specialOne": [action(HEAL, "2", ["Affect Self and all allies"])],
            "specialTwo": [action(COMPOUND_TEXT, ["All allies add +1 ", action(ATTACK), "to all attacks this round"])],
            "immunities": [WOUND, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 21 * numPlayers,
            "move": 4,
            "attack": 6,
            "range": 0,
            "specialOne": [action(HEAL, "2", ["Affect Self and all allies"])],
            "specialTwo": [action(COMPOUND_TEXT, ["All allies add +1 ", action(ATTACK), "to all attacks this round"])],
            "immunities": [WOUND, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 25 * numPlayers,
            "move": 4,
            "attack": 6,
            "range": 0,
            "specialOne": [action(HEAL, "2", ["Affect Self and all allies"])],
            "specialTwo": [action(COMPOUND_TEXT, ["All allies add +1 ", action(ATTACK), "to all attacks this round"])],
            "immunities": [WOUND, DISARM, STUN, MUDDLE]
        }),
    ],
    "The Colorless": [
        (numPlayers) => ({
            "maxHP": 9 * numPlayers,
            "move": 3,
            "attack": 2,
            "range": 0,
            "specialOne": [{ "type": "element", "use": elements.DARK, "action": "Summon Night Demon" }, action(INVISIBLE, null, ["Self"])],
            "specialTwo": [{ "type": "element", "use": elements.LIGHT, "action": "Summon Sun Demon" }, action(HEAL, "4", ["Self"]), "sheld 1"],
            "immunities": [WOUND, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 10 * numPlayers,
            "move": 3,
            "attack": 3,
            "range": 0,
            "specialOne": [{ "type": "element", "use": elements.DARK, "action": "Summon Night Demon" }, action(INVISIBLE, null, ["Self"])],
            "specialTwo": [{ "type": "element", "use": elements.LIGHT, "action": "Summon Sun Demon" }, action(HEAL, "4", ["Self"]), action(SHIELD, "1")],
            "immunities": [WOUND, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 11 * numPlayers,
            "move": 4,
            "attack": 3,
            "range": 0,
            "specialOne": [{ "type": "element", "use": elements.DARK, "action": "Summon Night Demon" }, action(INVISIBLE, null, ["Self"])],
            "specialTwo": [{ "type": "element", "use": elements.LIGHT, "action": "Summon Sun Demon" }, action(HEAL, "5", ["Self"]), action(SHIELD, "1")],
            "immunities": [WOUND, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 12 * numPlayers,
            "move": 4,
            "attack": 4,
            "range": 0,
            "specialOne": [{ "type": "element", "use": elements.DARK, "action": "Summon Night Demon" }, action(INVISIBLE, null, ["Self"])],
            "specialTwo": [{ "type": "element", "use": elements.LIGHT, "action": "Summon Sun Demon" }, action(HEAL, "5", ["Self"]), action(SHIELD, "1")],
            "immunities": [WOUND, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 14 * numPlayers,
            "move": 4,
            "attack": 4,
            "range": 0,
            "specialOne": [{ "type": "element", "use": elements.DARK, "action": "Summon Night Demon" }, action(INVISIBLE, null, ["Self"])],
            "specialTwo": [{ "type": "element", "use": elements.LIGHT, "action": "Summon Sun Demon" }, action(HEAL, "6", ["Self"]), action(SHIELD, "1")],
            "immunities": [WOUND, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 15 * numPlayers,
            "move": 4,
            "attack": 5,
            "range": 0,
            "specialOne": [{ "type": "element", "use": elements.DARK, "action": "Summon Night Demon" }, action(INVISIBLE, null, ["Self"])],
            "specialTwo": [{ "type": "element", "use": elements.LIGHT, "action": "Summon Sun Demon" }, action(HEAL, "6", ["Self"]), action(SHIELD, "1")],
            "immunities": [WOUND, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 17 * numPlayers,
            "move": 4,
            "attack": 6,
            "range": 0,
            "specialOne": [{ "type": "element", "use": elements.DARK, "action": "Summon Night Demon" }, action(INVISIBLE, null, ["Self"])],
            "specialTwo": [{ "type": "element", "use": elements.LIGHT, "action": "Summon Sun Demon" }, action(HEAL, "7", ["Self"]), action(SHIELD, "1")],
            "immunities": [WOUND, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 19 * numPlayers,
            "move": 5,
            "attack": 7,
            "range": 0,
            "specialOne": [{ "type": "element", "use": elements.DARK, "action": "Summon Night Demon" }, action(INVISIBLE, null, ["Self"])],
            "specialTwo": [{ "type": "element", "use": elements.LIGHT, "action": "Summon Sun Demon" }, action(HEAL, "7", ["Self"]), action(SHIELD, "1")],
            "immunities": [WOUND, DISARM, STUN, MUDDLE, CURSE]
        }),
    ],
    "Dark Rider": [
        (numPlayers) => ({
            "maxHP": 9 * numPlayers,
            "move": 2,
            "attack": "3+X",
            "range": 0,
            "specialOne": [action(MOVE, "+2"), action(ATTACK, "+0")],
            "specialTwo": [action(MOVE, "+0"), "Summon Imp", action(ATTACK, "-1")],
            "extra": ["X = Hexes moved"],
            "immunities": [POISON, IMMOBILIZE, DISARM, STUN]
        }),
        (numPlayers) => ({
            "maxHP": 10 * numPlayers,
            "move": 3,
            "attack": "3+X",
            "range": 0,
            "specialOne": [action(MOVE, "+2"), action(ATTACK, "+0")],
            "specialTwo": [action(MOVE, "+0"), "Summon Imp", action(ATTACK, "-1")],
            "extra": ["X = Hexes moved"],
            "immunities": [POISON, IMMOBILIZE, DISARM, STUN]
        }),
        (numPlayers) => ({
            "maxHP": 12 * numPlayers,
            "move": 3,
            "attack": "3+X",
            "range": 0,
            "specialOne": [action(MOVE, "+2"), action(ATTACK, "+0")],
            "specialTwo": [action(MOVE, "+0"), "Summon Imp", action(ATTACK, "-1")],
            "extra": ["X = Hexes moved"],
            "immunities": [POISON, IMMOBILIZE, DISARM, STUN]
        }),
        (numPlayers) => ({
            "maxHP": 13 * numPlayers,
            "move": 3,
            "attack": "4+X",
            "range": 0,
            "specialOne": [action(MOVE, "+2"), action(ATTACK, "+0")],
            "specialTwo": [action(MOVE, "+0"), "Summon Imp", action(ATTACK, "-1")],
            "extra": ["X = Hexes moved"],
            "immunities": [POISON, IMMOBILIZE, DISARM, STUN]
        }),
        (numPlayers) => ({
            "maxHP": 15 * numPlayers,
            "move": 3,
            "attack": "4+X",
            "range": 0,
            "specialOne": [action(MOVE, "+2"), action(ATTACK, "+0")],
            "specialTwo": [action(MOVE, "+0"), "Summon Imp", action(ATTACK, "-1")],
            "extra": ["X = Hexes moved"],
            "immunities": [POISON, IMMOBILIZE, DISARM, STUN]
        }),
        (numPlayers) => ({
            "maxHP": 16 * numPlayers,
            "move": 3,
            "attack": "5+X",
            "range": 0,
            "specialOne": [action(MOVE, "+2"), action(ATTACK, "+0")],
            "specialTwo": [action(MOVE, "+0"), "Summon Imp", action(ATTACK, "-1")],
            "extra": ["X = Hexes moved"],
            "immunities": [POISON, IMMOBILIZE, DISARM, STUN]
        }),
        (numPlayers) => ({
            "maxHP": 16 * numPlayers,
            "move": 4,
            "attack": "5+X",
            "range": 0,
            "specialOne": [action(MOVE, "+2"), action(ATTACK, "+0")],
            "specialTwo": [action(MOVE, "+0"), "Summon Imp", action(ATTACK, "-1")],
            "extra": ["X = Hexes moved"],
            "immunities": [POISON, IMMOBILIZE, DISARM, STUN]
        }),
        (numPlayers) => ({
            "maxHP": 18 * numPlayers,
            "move": 4,
            "attack": "6+X",
            "range": 0,
            "specialOne": [action(MOVE, "+2"), action(ATTACK, "+0")],
            "specialTwo": [action(MOVE, "+0"), "Summon Imp", action(ATTACK, "-1")],
            "extra": ["X = Hexes moved"],
            "immunities": [POISON, IMMOBILIZE, DISARM, STUN]
        }),
    ],
    "Elder Drake": [
        (numPlayers) => ({
            "maxHP": 11 * numPlayers,
            "move": 0,
            "attack": 3,
            "range": 0,
            "specialOne": [action(ATTACK, "+0", [] elderDrakeSpecial1Area)],
            "specialTwo": ["Move and summon 2 Zephyrs"],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 12 * numPlayers,
            "move": 0,
            "attack": 4,
            "range": 0,
            "specialOne": [action(ATTACK, "+0", [] elderDrakeSpecial1Area)],
            "specialTwo": ["Move and summon 2 Zephyrs"],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 15 * numPlayers,
            "move": 0,
            "attack": 4,
            "range": 0,
            "specialOne": [action(ATTACK, "+0", [] elderDrakeSpecial1Area)],
            "specialTwo": ["Move and summon 2 Zephyrs"],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 16 * numPlayers,
            "move": 0,
            "attack": 5,
            "range": 0,
            "specialOne": [action(ATTACK, "+0", [] elderDrakeSpecial1Area)],
            "specialTwo": ["Move and summon 2 Zephyrs"],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 20 * numPlayers,
            "move": 0,
            "attack": 5,
            "range": 0,
            "specialOne": [action(ATTACK, "+0", [] elderDrakeSpecial1Area)],
            "specialTwo": ["Move and summon 2 Zephyrs"],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 22 * numPlayers,
            "move": 0,
            "attack": 6,
            "range": 0,
            "specialOne": [action(ATTACK, "+0", [] elderDrakeSpecial1Area)],
            "specialTwo": ["Move and summon 2 Zephyrs"],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 27 * numPlayers,
            "move": 0,
            "attack": 6,
            "range": 0,
            "specialOne": [action(ATTACK, "+0", [] elderDrakeSpecial1Area)],
            "specialTwo": ["Move and summon 2 Zephyrs"],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 29 * numPlayers,
            "move": 0,
            "attack": 7,
            "range": 0,
            "specialOne": [action(ATTACK, "+0", [] elderDrakeSpecial1Area)],
            "specialTwo": ["Move and summon 2 Zephyrs"],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, PULL, PUSH]
        }),
    ],
    "The Gloom": [
        (numPlayers) => ({
            "maxHP": 20 * numPlayers,
            "move": 2,
            "attack": 5,
            "range": 0,
            "specialOne": [action(MOVE, "+9"), action(ATTACK, "+9")],
            "specialTwo": ["Teleport", action(ATTACK, "+1"), action(RANGE, "5"), action(POISON), action(WOUND), action(STUN)],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 25 * numPlayers,
            "move": 2,
            "attack": 5,
            "range": 0,
            "specialOne": [action(MOVE, "+9"), action(ATTACK, "+9")],
            "specialTwo": ["Teleport", action(ATTACK, "+1"), action(RANGE, "5"), action(POISON), action(WOUND), action(STUN)],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 29 * numPlayers,
            "move": 2,
            "attack": 6,
            "range": 0,
            "specialOne": [action(MOVE, "+9"), action(ATTACK, "+9")],
            "specialTwo": ["Teleport", action(ATTACK, "+1"), action(RANGE, "5"), action(POISON), action(WOUND), action(STUN)],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 35 * numPlayers,
            "move": 2,
            "attack": 6,
            "range": 0,
            "specialOne": [action(MOVE, "+9"), action(ATTACK, "+9")],
            "specialTwo": ["Teleport", action(ATTACK, "+1"), action(RANGE, "5"), action(POISON), action(WOUND), action(STUN)],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 39 * numPlayers,
            "move": 3,
            "attack": 7,
            "range": 0,
            "specialOne": [action(MOVE, "+9"), action(ATTACK, "+9")],
            "specialTwo": ["Teleport", action(ATTACK, "+1"), action(RANGE, "5"), action(POISON), action(WOUND), action(STUN)],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 46 * numPlayers,
            "move": 3,
            "attack": 7,
            "range": 0,
            "specialOne": [action(MOVE, "+9"), action(ATTACK, "+9")],
            "specialTwo": ["Teleport", action(ATTACK, "+1"), action(RANGE, "5"), action(POISON), action(WOUND), action(STUN)],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 50 * numPlayers,
            "move": 3,
            "attack": 8,
            "range": 0,
            "specialOne": [action(MOVE, "+9"), action(ATTACK, "+9")],
            "specialTwo": ["Teleport", action(ATTACK, "+1"), action(RANGE, "5"), action(POISON), action(WOUND), action(STUN)],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 56 * numPlayers,
            "move": 3,
            "attack": 9,
            "range": 0,
            "specialOne": [action(MOVE, "+9"), action(ATTACK, "+9")],
            "specialTwo": ["Teleport", action(ATTACK, "+1"), action(RANGE, "5"), action(POISON), action(WOUND), action(STUN)],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE, CURSE]
        }),
    ],
    "Inox Bodyguard": [
        (numPlayers) => ({
            "maxHP": 6 * numPlayers,
            "move": 2,
            "attack": numPlayers,
            "range": 0,
            "specialOne": [action(MOVE, "-1"), action(ATTACK, "-1", [] inoxBodyguardSpecial1Area)],
            "specialTwo": [action(MOVE, "+0"), action(ATTACK, "+0"), action(RETALIATE, "3")],
            "immunities": [POISON, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 7 * numPlayers,
            "move": 2,
            "attack": 1 + numPlayers,
            "range": 0,
            "specialOne": [action(MOVE, "-1"), action(ATTACK, "-1", [] inoxBodyguardSpecial1Area)],
            "specialTwo": [action(MOVE, "+0"), action(ATTACK, "+0"), action(RETALIATE, "3")],
            "immunities": [POISON, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 9 * numPlayers,
            "move": 2,
            "attack": 1 + numPlayers,
            "range": 0,
            "specialOne": [action(MOVE, "-1"), action(ATTACK, "-1", [] inoxBodyguardSpecial1Area)],
            "specialTwo": [action(MOVE, "+0"), action(ATTACK, "+0"), action(RETALIATE, "3")],
            "immunities": [POISON, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 10 * numPlayers,
            "move": 3,
            "attack": 2 + numPlayers,
            "range": 0,
            "specialOne": [action(MOVE, "-1"), action(ATTACK, "-1", [] inoxBodyguardSpecial1Area)],
            "specialTwo": [action(MOVE, "+0"), action(ATTACK, "+0"), action(RETALIATE, "4")],
            "immunities": [POISON, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 11 * numPlayers,
            "move": 3,
            "attack": 2 + numPlayers,
            "range": 0,
            "specialOne": [action(MOVE, "-1"), action(ATTACK, "-1", [] inoxBodyguardSpecial1Area)],
            "specialTwo": [action(MOVE, "+0"), action(ATTACK, "+0"), action(RETALIATE, "4")],
            "immunities": [POISON, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 13 * numPlayers,
            "move": 3,
            "attack": 3 + numPlayers,
            "range": 0,
            "specialOne": [action(MOVE, "-1"), action(ATTACK, "-1", [] inoxBodyguardSpecial1Area)],
            "specialTwo": [action(MOVE, "+0"), action(ATTACK, "+0"), action(RETALIATE, "5")],
            "immunities": [POISON, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 15 * numPlayers,
            "move": 4,
            "attack": 3 + numPlayers,
            "range": 0,
            "specialOne": [action(MOVE, "-1"), action(ATTACK, "-1", [] inoxBodyguardSpecial1Area)],
            "specialTwo": [action(MOVE, "+0"), action(ATTACK, "+0"), action(RETALIATE, "5")],
            "immunities": [POISON, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 17 * numPlayers,
            "move": 4,
            "attack": 4 + numPlayers,
            "range": 0,
            "specialOne": [action(MOVE, "-1"), action(ATTACK, "-1", [] inoxBodyguardSpecial1Area)],
            "specialTwo": [action(MOVE, "+0"), action(ATTACK, "+0"), action(RETALIATE, "5")],
            "immunities": [POISON, DISARM, STUN, MUDDLE]
        }),
    ],
    "Jekserah": [
        (numPlayers) => ({
            "maxHP": 6 * numPlayers,
            "move": 2,
            "attack": 2,
            "range": 0,
            "specialOne": ["Summon Living Bones", action(ATTACK, "-1", ["Target all adjacent enemies"])],
            "specialTwo": ["Summon Living Corpse", action(MOVE, "-1"), action(ATTACK, "+2")],
            "immunities": [WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 7 * numPlayers,
            "move": 2,
            "attack": 3,
            "range": 0,
            "specialOne": ["Summon Living Bones", action(ATTACK, "-1", ["Target all adjacent enemies"])],
            "specialTwo": ["Summon Living Corpse", action(MOVE, "-1"), action(ATTACK, "+2")],
            "immunities": [WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 9 * numPlayers,
            "move": 3,
            "attack": 3,
            "range": 0,
            "specialOne": ["Summon Living Bones", action(ATTACK, "-1", ["Target all adjacent enemies"])],
            "specialTwo": ["Summon Living Corpse", action(MOVE, "-1"), action(ATTACK, "+2")],
            "immunities": [WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 12 * numPlayers,
            "move": 4,
            "attack": 4,
            "range": 0,
            "specialOne": ["Summon Living Bones", action(ATTACK, "-1", ["Target all adjacent enemies"])],
            "specialTwo": ["Summon Living Corpse", action(MOVE, "-1"), action(ATTACK, "+2")],
            "immunities": [WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 13 * numPlayers,
            "move": 4,
            "attack": 5,
            "range": 0,
            "specialOne": ["Summon Living Bones", action(ATTACK, "-1", ["Target all adjacent enemies"])],
            "specialTwo": ["Summon Living Corpse", action(MOVE, "-1"), action(ATTACK, "+2")],
            "immunities": [WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 15 * numPlayers,
            "move": 5,
            "attack": 5,
            "range": 0,
            "specialOne": ["Summon Living Bones", action(ATTACK, "-1", ["Target all adjacent enemies"])],
            "specialTwo": ["Summon Living Corpse", action(MOVE, "-1"), action(ATTACK, "+2")],
            "immunities": [WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 18 * numPlayers,
            "move": 5,
            "attack": 5,
            "range": 0,
            "specialOne": ["Summon Living Bones", action(ATTACK, "-1", ["Target all adjacent enemies"])],
            "specialTwo": ["Summon Living Corpse", action(MOVE, "-1"), action(ATTACK, "+2")],
            "immunities": [WOUND, DISARM, STUN, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 22 * numPlayers,
            "move": 5,
            "attack": 5,
            "range": 0,
            "specialOne": ["Summon Living Bones", action(ATTACK, "-1", ["Target all adjacent enemies"])],
            "specialTwo": ["Summon Living Corpse", action(MOVE, "-1"), action(ATTACK, "+2")],
            "immunities": [WOUND, DISARM, STUN, CURSE]
        }),
    ],
    "Merciless Overseer": [
        (numPlayers) => ({
            "maxHP": 6 * numPlayers,
            "move": 2,
            "attack": "V",
            "range": 0,
            "specialOne": ["All Scouts act again"],
            "specialTwo": ["Summon Vermling Scout"],
            "immunities": [WOUND, STUN, CURSE],
            "extra": ["V = Number of Scouts present"]
        }),
        (numPlayers) => ({
            "maxHP": 8 * numPlayers,
            "move": 2,
            "attack": "V",
            "range": 0,
            "specialOne": ["All Scouts act again"],
            "specialTwo": ["Summon Vermling Scout"],
            "immunities": [WOUND, STUN, CURSE],
            "extra": ["V = Number of Scouts present"]
        }),
        (numPlayers) => ({
            "maxHP": 9 * numPlayers,
            "move": 3,
            "attack": "V",
            "range": 0,
            "specialOne": ["All Scouts act again"],
            "specialTwo": ["Summon Vermling Scout"],
            "immunities": [WOUND, STUN, CURSE],
            "extra": ["V = Number of Scouts present"]
        }),
        (numPlayers) => ({
            "maxHP": 11 * numPlayers,
            "move": 3,
            "attack": "V",
            "range": 0,
            "specialOne": ["All Scouts act again"],
            "specialTwo": ["Summon Vermling Scout"],
            "immunities": [WOUND, STUN, CURSE],
            "extra": ["V = Number of Scouts present"]
        }),
        (numPlayers) => ({
            "maxHP": 12 * numPlayers,
            "move": 4,
            "attack": "V",
            "range": 0,
            "specialOne": ["All Scouts act again"],
            "specialTwo": ["Summon Vermling Scout"],
            "immunities": [WOUND, STUN, CURSE],
            "extra": ["V = Number of Scouts present"]
        }),
        (numPlayers) => ({
            "maxHP": 14 * numPlayers,
            "move": 4,
            "attack": "V",
            "range": 0,
            "specialOne": ["All Scouts act again"],
            "specialTwo": ["Summon Vermling Scout"],
            "immunities": [WOUND, STUN, CURSE],
            "extra": ["V = Number of Scouts present"]
        }),
        (numPlayers) => ({
            "maxHP": 16 * numPlayers,
            "move": 4,
            "attack": "V",
            "range": 0,
            "specialOne": ["All Scouts act again"],
            "specialTwo": ["Summon Vermling Scout"],
            "immunities": [WOUND, STUN, CURSE],
            "extra": ["V = Number of Scouts present"]
        }),
        (numPlayers) => ({
            "maxHP": 19 * numPlayers,
            "move": 4,
            "attack": "V",
            "range": 0,
            "specialOne": ["All Scouts act again"],
            "specialTwo": ["Summon Vermling Scout"],
            "immunities": [WOUND, STUN, CURSE],
            "extra": ["V = Number of Scouts present"]
        }),
    ],
    "Prime Demon": [
        (numPlayers) => ({
            "maxHP": 8 * numPlayers,
            "move": 3,
            "attack": 4,
            "range": 0,
            "specialOne": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "specialTwo": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 9 * numPlayers,
            "move": 4,
            "attack": 4,
            "range": 0,
            "specialOne": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "specialTwo": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 10 * numPlayers,
            "move": 4,
            "attack": 5,
            "range": 0,
            "specialOne": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "specialTwo": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 12 * numPlayers,
            "move": 4,
            "attack": 6,
            "range": 0,
            "specialOne": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "specialTwo": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 14 * numPlayers,
            "move": 5,
            "attack": 6,
            "range": 0,
            "specialOne": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "specialTwo": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 16 * numPlayers,
            "move": 5,
            "attack": 7,
            "range": 0,
            "specialOne": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "specialTwo": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 20 * numPlayers,
            "move": 5,
            "attack": 7,
            "range": 0,
            "specialOne": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "specialTwo": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE]
        }),
        (numPlayers) => ({
            "maxHP": 22 * numPlayers,
            "move": 5,
            "attack": 8,
            "range": 0,
            "specialOne": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "specialTwo": ["Throne moves", "Summon Demon", action(MOVE, "+2"), action(ATTACK, "-1")],
            "immunities": [POISON, WOUND, IMMOBILIZE, DISARM, STUN, MUDDLE]
        }),
    ],
    "The Sightless Eye": [
        (numPlayers) => ({
            "maxHP": 7 * numPlayers,
            "attack": 5,
            "range": 3,
            "specialOne": ["Summon Deep Terror", action(ATTACK, "-3", [] sightlessEyeSpecial1Area)],
            "specialTwo": ["Summon Deep Terror", action(ATTACK, "-2", [] sightlessEyeSpecial2Area)],
            "immunities": [DISARM, STUN, MUDDLE, CURSE, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 8 * numPlayers,
            "attack": 6,
            "range": 3,
            "specialOne": ["Summon Deep Terror", action(ATTACK, "-3", [] sightlessEyeSpecial1Area)],
            "specialTwo": ["Summon Deep Terror", action(ATTACK, "-2", [] sightlessEyeSpecial2Area)],
            "immunities": [DISARM, STUN, MUDDLE, CURSE, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 10 * numPlayers,
            "attack": 6,
            "range": 3,
            "specialOne": ["Summon Deep Terror", action(ATTACK, "-3", [] sightlessEyeSpecial1Area)],
            "specialTwo": ["Summon Deep Terror", action(ATTACK, "-2", [] sightlessEyeSpecial2Area)],
            "immunities": [DISARM, STUN, MUDDLE, CURSE, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 11 * numPlayers,
            "attack": 7,
            "range": 3,
            "specialOne": ["Summon Deep Terror", action(ATTACK, "-3", [] sightlessEyeSpecial1Area)],
            "specialTwo": ["Summon Deep Terror", action(ATTACK, "-2", [] sightlessEyeSpecial2Area)],
            "immunities": [DISARM, STUN, MUDDLE, CURSE, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 14 * numPlayers,
            "attack": 7,
            "range": 3,
            "specialOne": ["Summon Deep Terror", action(ATTACK, "-3", [] sightlessEyeSpecial1Area)],
            "specialTwo": ["Summon Deep Terror", action(ATTACK, "-2", [] sightlessEyeSpecial2Area)],
            "immunities": [DISARM, STUN, MUDDLE, CURSE, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 15 * numPlayers,
            "attack": 8,
            "range": 3,
            "specialOne": ["Summon Deep Terror", action(ATTACK, "-3", [] sightlessEyeSpecial1Area)],
            "specialTwo": ["Summon Deep Terror", action(ATTACK, "-2", [] sightlessEyeSpecial2Area)],
            "immunities": [DISARM, STUN, MUDDLE, CURSE, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 18 * numPlayers,
            "attack": 8,
            "range": 3,
            "specialOne": ["Summon Deep Terror", action(ATTACK, "-3", [] sightlessEyeSpecial1Area)],
            "specialTwo": ["Summon Deep Terror", action(ATTACK, "-2", [] sightlessEyeSpecial2Area)],
            "immunities": [DISARM, STUN, MUDDLE, CURSE, PUSH, PULL]
        }),
        (numPlayers) => ({
            "maxHP": 20 * numPlayers,
            "attack": 9,
            "range": 3,
            "specialOne": ["Summon Deep Terror", action(ATTACK, "-3", [] sightlessEyeSpecial1Area)],
            "specialTwo": ["Summon Deep Terror", action(ATTACK, "-2", [] sightlessEyeSpecial2Area)],
            "immunities": [DISARM, STUN, MUDDLE, CURSE, PUSH, PULL]
        }),
    ],
    "Winged Horror": [
        (numPlayers) => ({
            "maxHP": 6 * numPlayers,
            "move": 3,
            "attack": 3,
            "range": 0,
            "specialOne": [action(ATTACK, "-1", ["Target all adjacent enemies"]), action(ATTACK, "+0", [action(RANGE, "3")]), "Hatch eggs"],
            "specialTwo": [`Summon ${numPlayers} eggs`, action(MOVE, "-1"), action(ATTACK, "+0")],
            "immunities": [POISON, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 7 * numPlayers,
            "move": 4,
            "attack": 3,
            "range": 0,
            "specialOne": [action(ATTACK, "-1", ["Target all adjacent enemies"]), action(ATTACK, "+0", [action(RANGE, "3")]), "Hatch eggs"],
            "specialTwo": [`Summon ${numPlayers} eggs`, action(MOVE, "-1"), action(ATTACK, "+0")],
            "immunities": [POISON, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 8 * numPlayers,
            "move": 4,
            "attack": 4,
            "range": 0,
            "specialOne": [action(ATTACK, "-1", ["Target all adjacent enemies"]), action(ATTACK, "+0", [action(RANGE, "3")]), "Hatch eggs"],
            "specialTwo": [`Summon ${numPlayers} eggs`, action(MOVE, "-1"), action(ATTACK, "+0")],
            "immunities": [POISON, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 10 * numPlayers,
            "move": 4,
            "attack": 4,
            "range": 0,
            "specialOne": [action(ATTACK, "-1", ["Target all adjacent enemies"]), action(ATTACK, "+0", [action(RANGE, "3")]), "Hatch eggs"],
            "specialTwo": [`Summon ${numPlayers} eggs`, action(MOVE, "-1"), action(ATTACK, "+0")],
            "immunities": [POISON, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 12 * numPlayers,
            "move": 5,
            "attack": 4,
            "range": 0,
            "specialOne": [action(ATTACK, "-1", ["Target all adjacent enemies"]), action(ATTACK, "+0", [action(RANGE, "3")]), "Hatch eggs"],
            "specialTwo": [`Summon ${numPlayers} eggs`, action(MOVE, "-1"), action(ATTACK, "+0")],
            "immunities": [POISON, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 14 * numPlayers,
            "move": 5,
            "attack": 5,
            "range": 0,
            "specialOne": [action(ATTACK, "-1", ["Target all adjacent enemies"]), action(ATTACK, "+0", [action(RANGE, "3")]), "Hatch eggs"],
            "specialTwo": [`Summon ${numPlayers} eggs`, action(MOVE, "-1"), action(ATTACK, "+0")],
            "immunities": [POISON, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 17 * numPlayers,
            "move": 5,
            "attack": 5,
            "range": 0,
            "specialOne": [action(ATTACK, "-1", ["Target all adjacent enemies"]), action(ATTACK, "+0", [action(RANGE, "3")]), "Hatch eggs"],
            "specialTwo": [`Summon ${numPlayers} eggs`, action(MOVE, "-1"), action(ATTACK, "+0")],
            "immunities": [POISON, DISARM, STUN, MUDDLE, CURSE]
        }),
        (numPlayers) => ({
            "maxHP": 20 * numPlayers,
            "move": 5,
            "attack": 5,
            "range": 0,
            "specialOne": [action(ATTACK, "-1", ["Target all adjacent enemies"]), action(ATTACK, "+0", [action(RANGE, "3")]), "Hatch eggs"],
            "specialTwo": [`Summon ${numPlayers} eggs`, action(MOVE, "-1"), action(ATTACK, "+0")],
            "immunities": [POISON, DISARM, STUN, MUDDLE, CURSE]
        }),
    ],
}