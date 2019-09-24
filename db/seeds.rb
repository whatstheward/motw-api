# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Playbook.destroy_all
HunterMove.destroy_all

Playbook.create([
    {
        name: "The Chosen",
        description: "Your birth was prophesied. You are the Chosen
        One, and with your abilities you can save the
        world. If you fail, all will be destroyed. It all rests
        on you. Only you.",
        fascimile: "a once-ordinary person who discovered they have a
        special destiny, and who has been given the power to accomplish it. The Chosen is good in a fight, with some weird powers. E.g. Buffy from Buffy the Vampire Slayer."
    },
    {
        name: "The Crooked",
        description: "Yeah, I’ve been around the block. A bit of this, a
        bit of that. When I came across the secret underworld of monsters and magic… well… it wasn’t
        so different from the underworld I already knew.
        It was easy to find an angle, just like before.",
        fascimile: "a criminal turned monster hunter, haunted by their past and enemies. The Crooked is good in social situations and has a lot of contacts. E.g. Anna Valmont from The Dresden Files, Peter Bishop from Fringe."
    },
    {
        name: "The Divine",
        description: "I am the Light, the Sword.\nI am sent to defend the meek from Darkness.\nAll Evil fears me, for I am its end.",
        fascimile: "an agent of a higher power, with a mission to fulfill. The Divine is very tough and has been granted holy powers. E.g. Castiel from Supernatural; Michael Carpenter from The Dresden Files."
    },
    {
        name: "The Expert",
        description: "I have dedicated my life to the study of the unnatural. I know their habits, their weaknesses. I may
        not be youngest or strongest, but my knowledge
        makes me the biggest threat.",
        fascimile: "the hunter who knows all about monsters and magic. The Expert knows a lot of hidden secrets and how to find out more, and also has a well-supplied base to work from. E.g. Bobby Singer from Supernatural; Rupert Giles from Buffy the Vampire
        Slayer."
    },
    {
        name: "The Flake",
        description: "Everything’s connected. But not everyone can
        see the patterns, and most people don’t even
        look that hard. But me, I can never stop looking
        deeper. I can never stop seeing the truth. I spot
        the patterns. That’s how I found the monsters,
        and that’s how I help kill them.",
        fascimile: "a conspiracy theorist. The Flake is great at finding
        things out and seeing how the events of separate mysteries are connected. E.g. Agent Mulder or the Lone Gunmen from The X-Files."
    },
    {
        name: "The Initiate",
        description: "Since the dawn of history, we have been the
        bulwark against Darkness. We know the Evils
        of the world, and we stand against them so that
        the mass of humanity need not fear. We are the
        Flame that cleanses the Shadows",
        fascimile: "a member of an ancient monster-slaying Sect, trained to fight and use magic. The Initiate is good with magic, and their Sect provides help (and sometimes problems). E.g.
        The Wardens from The Dresden Files; Annelise from the Twenty
        Palaces series."
    },
    {
        name: "The Monstrous",
        description: "I feel the hunger, the lust to destroy. But I fight
        it: I never give in. I’m not human any more, not
        really, but I have to protect those who still are.
        That way I can tell myself I’m different to the
        other monsters. Sometimes I can even believe it.",
        fascimile: "a monster fighting for the good guys. The
        Monstrous is very weird, and can have a variety of different powers based on what monster breed they are. E.g. Angel from Buffy the Vampire Slayer and Angel; Bill Compton from True Blood"
    },
    {
        name: "The Mundane",
        description: "You heard about how monsters only pick on
        people with crazy powers who can fight back on
        even terms? Yeah, me neither. But, hell, I ended
        up in this monster-hunting team so I gotta do
        what I can, right?",
        fascimile: "just a normal regular person, especially good at dealing with regular people you meet and have to save, and at getting captured by monsters (which can be more useful than you might expect). E.g. Xander or Cordelia from Buffy the Vampire Slayer. "
    },
    {
        name: "The Professional",
        description: 'It’s kind of strange when your regular 9-to-5 job is
        to hunt down monsters. Still, that’s the job I took
        on when I joined this outfit. It pays well, and the
        benefits are good. Like they say “You don’t have
        to be crazy to work here, but it sure helps!”',
        fascimile: "you work for an agency that hunts monsters. The Professional is good in a fight, and a good team player. E.g. Riley and the Initiative from Buffy the Vampire Slayer; Olivia Dunham from Fringe."
    },
    {
        name: "The Spell-Slinger",
        description: "Fight fire with fire magic.",
        fascimile: "a trained wizard, wielding powerful magic in their crusade against evil. The Spell-slinger’s arcane training gives them an advantage when dealing with eldritch secrets. E.g. Harry Dresden from The Dresden Files; Willow from Buffy the Vampire Slayer, in the later seasons."
    },
    {
        name: "The Spooky",
        description:" I can do things, things that normal people can’t.
            But there’s a price—I haven’t paid it in full, yet,
            but the bill’s gonna come due soon. It’s best I don’t
            tell you any more. You get too close, you’ll get hurt.",
            fascimile: "has psychic or magical powers. These powers are
            strange and sinister ... and
            not completely under
            the Spooky’s control. E.g. Sam Winchester from Supernatural; Willow from earlier seasons of Buffy
            the Vampire Slayer."
    },
    {
        name: "The Wronged",
        description: "They took my loved ones. Back then I wasn’t
        strong enough to fight, but I studied, trained, and
        now I’m ready to cleanse the world of their taint.
        I’ll kill them all. That’s all I have left.",
        fascimile: "revenge-driven, and
        really tough. The
        Wronged is all about
        killing a specific breed of monster and protecting others as you do it. E.g. Dean and John Winchester from Supernatural."
    }]
)
HunterMove.create([
    {
        name: "Kick Some Ass",
        rating: "Tough",
        description: "When you get into a fight and kick some ass, roll +Tough.",
        partial_success: "<strong>On a 7+</strong>: you and whatever you’re
        fighting inflict harm on each other. The
        amount of harm is based on the established dangers in the game. That usually
        means you inflict the harm rating of
        your weapon and your enemy inflicts
        their attack’s harm rating on you.",
        total_success: "<strong>On a 10+</strong>: choose one extra effect:
        <ul>
        <li>You gain the advantage: take +1
        forward, or give +1 forward to
        another hunter.</li>
        <li>You inflict terrible harm (+1
        harm)</li>
        <li>You suffer less harm (-1 harm).</li>
        <li>You force them where you want
        them.</li>",
        advanced_success: "<strong>On a 12+</strong>: instead pick
        an enhanced effect:
        <ul>
        <li>You completely hold the advantage. All hunters involved in the
        fight get +1 forward.</li>
        <li>You suffer no harm at all. </li>
        <li>Your attack inflicts double the
        normal harm.</li>
        <li>Your attack drives the enemy away
        in a rout</li>
        </ul>"
    },
    {
        name: "Act Under Pressure",
        rating: "Cool",
        description: "When you act under pressure, roll
        +Cool.",
        partial_success: "<strong>On a 7-9</strong>: the Keeper is going to give
        you a worse outcome, hard choice, or
        price to pay.
        advanced",
        total_success: "<strong>On a 10+</strong>: you do what you set out to.",
        advanced_success: "<strong>On a 12+</strong> you may
        choose to either do what you wanted
        and something extra, or to do what you
        wanted to absolute perfection."
    },
    {
        name: "Help Out",
        rating: "Cool",
        description: "When you help another hunter, roll
        +Cool.",
        partial_success: "<strong>On a 7-9</strong>: your help grants them +1 to
        their roll, but you also expose yourself
        to trouble or danger.",
        total_success: "<strong>On a 10+</strong> your help grants them +1
        to their roll.",
        advanced_success: "<strong>On a 12+</strong>: your help
        lets them act as if they just rolled a 12,
        regardless of what they actually got."
    },
    {
        name: "Investigate A Mystery",
        rating: "Sharp",
        description: "When you investigate a mystery, roll
        +Sharp. One hold can be spent to ask the
        Keeper one of the following questions:
        <ul>
        <li> What happened here?</li>
        <li>What sort of creature is it?</li>
        <li>What can it do?</li>
        <li>What can hurt it?</li>
        <li>Where did it go?</li>
        <li>What was it going to do?</li>
        <li>What is being concealed here?</li>
        </ul>",
        partial_success: "On a 7-9
        hold 1.",
        total_success: "On a 10+ hold 2.",
        advanced_success: "Advanced: On a 12+, you may ask the
        Keeper any question you want about the
        mystery, not just the listed ones."
    },
    {
        name: "Manipulate Someone",
        rating: "Charm",
        description: "Once you have given them a reason, tell
        them what you want them to do and roll
        +Charm. </br><em>If used on a Hunter: On a miss, it’s up to that hunter
        to decide how badly you offend or
        annoy them. They mark experience if they decide not to do what
        you asked. Monsters and minions
        cannot normally be manipulated.</em>",
        partial_success: "<em>For a normal person-</em> <strong>On a 7-9</strong>: they’ll do it, but only if
        you do something for them right
        now to show that you mean it. If
        you asked too much, they’ll tell
        you what, if anything, it would
        take for them to do it.
        For another hunter:
        On a 7-9, they mark experience if
        they do what you ask.",
        total_success: "<em>For a normal person-</em>
        <strong>On a 10+</strong>: they’ll do it for
        the reason you gave them. If you
        asked too much, they’ll tell you the
        minimum it would take for them
        to do it (or if there’s no way they’d
        do it). <br/> <em>For another hunter</em>-
        <strong>On a 10+</strong>: if they do what you ask
        they mark experience and get +1
        forward",
        advanced_success: "<em>For a normal person</em> - <strong> On a 12+</strong> not only do
        they do what you want right now,
        they also become your ally for the
        rest of the mystery (or, if you do
        enough for them, permanently). 
        <em>For another hunter</em>
        <strong> On a 12+ </strong>they must
        act under pressure to resist your
        request. If they do what you ask,
        they mark one experience and
        take +1 ongoing while doing what
        you asked. "
    },
    {
        name: "Protect Someone",
        rating: "Tough",
        description: "When you prevent harm to another
        character, roll +Tough.",
        partial_success: "<strong>On a 7+</strong>: you protect them okay, but
        you’ll suffer some or all of the harm they
        were going to get.",
        total_success: "<strong>On a 10+ choose an extra</strong>:
        <ul>
        <li>You suffer little harm (-1 harm).</li>
        <li>All impending danger is now
        focused on you.</li>
        <li>You inflict harm on the enemy.</li>
        <li>You hold the enemy back.</li>
        </ul>",
        advanced_success: "<strong>on a 12+</strong>: both you and
        the character you are protecting are
        unharmed and out of danger. If you
        were protecting a bystander, they also
        become your ally."
    },
    {
        name: "Read A Bad Situation",
        rating: "Sharp",
        description: "When you look around and read a bad
        situation, roll +Sharp. One hold can be spent to ask the
        Keeper one of the following questions:
        <ul>
        <li>What’s my best way in?</li>
        <li>What’s my best way out?</li>
        <li>Are there any dangers we haven’t
        noticed?</li>
        <li>What’s the biggest threat?</li>
        <li>What’s most vulnerable to me?</li>
        <li>What’s the best way to protect the
        victims?</li>
        </ul>
        If you act on the answers, you get +1
        ongoing while the information is relevant.",
        partial_success: "<strong>On a 7-9</strong>
        hold 1.",
        total_success: "<strong>On a 10+</strong> hold 3.",
        advanced_success: "<strong>On a 12+</strong> you may ask
        the Keeper any question you want about
        the situation, not just the listed ones."
    },
    {
        name: "Use Magic",
        rating: "Weird",
        description: "When you use magic, say what you’re
        trying to achieve and how you do the
        spell, then roll +Weird. </br> <strong>Effects</strong>
        <ul>
        <li>Inflict harm (1-harm ignorearmour magic obvious).</li>
        <li>Enchant a weapon. It gets +1 harm
        and +magic</li>
        <li>Do one thing that is beyond
        human limitations</li>
        <li>Bar a place or portal to a specific
        person or a type of creature</li>
        <li>Trap a specific person, minion, or
        monster.</li>
        <li>Banish a spirit or curse from the
        person, object, or place it inhabits.</li>
        <li>Summon a monster into the world.</li>
        <li>Communicate with something
        that you do not share a language
        with</li>
        <li>Observe another place or time.</li>
        <li>Heal 1-harm from an injury, or
        cure a disease, or neutralize a
        poison.</li>
        </ul>
        <strong>Glitches</strong>
        <ul>
        <li>The effect is weakened.</li>
        <li>The effect is of short duration.</li>
        <li>You take 1-harm ignore-armour.</li>
        <li>The magic draws immediate,
        unwelcome attention.</li>
        <li>It has a problematic side effect.
        The Keeper may say that...<ul>
        <li>The spell requires weird materials.</li>
        <li>The spell will take 10 seconds, 30
        seconds, or 1 minute to cast.</li>
        <li>The spell requires ritual chanting
        and gestures.</li>
        <li>The spell requires you to draw
        arcane symbols.</li>
        <li>You need one or two people to
        help cast the spell.</li>
        <li>You need to refer to a tome of
        magic for the details.</li>
        </ul>
        </li>
        </ul>",
        partial_success: "<strong>On a 7-9</strong>: it works imperfectly: choose
        your effect and a glitch. The Keeper will
        decide what effect the glitch has",
        total_success: "<strong>On a 10+</strong>: the magic works without
        issues: choose your effect.",
        advanced_success: "<strong>On a 12+</strong> the Keeper
        will offer you some added benefit."
    }
])
