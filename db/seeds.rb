# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Playbook.destroy_all
HunterMove.destroy_all

chosen, crooked, divine, expert, flake, initiate, monstrous, mundane, professional, spellslinger, spooky, wronged = Playbook.create([
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
        advanced_success: "<strong>On a 12+</strong>: you may
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
        total_success: "<strong>On a 10+</strong>: your help grants them +1
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
        partial_success: "<strong>On a 7-9</strong>:
        hold 1.",
        total_success: "<strong>On a 10+</strong>: hold 2.",
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
        partial_success: "<em><strong>For a normal person</strong>-</em> <strong>On a 7-9</strong>: they’ll do it, but only if
        you do something for them right
        now to show that you mean it. If
        you asked too much, they’ll tell
        you what, if anything, it would
        take for them to do it.
            </br>
        <em><strong>For another hunter</strong></em> -
        <strong>On a 7-9</strong>: they mark experience if
        they do what you ask.",
        total_success: "<em><strong>For a normal person</strong>-</em>
        <strong>On a 10+</strong>: they’ll do it for
        the reason you gave them. If you
        asked too much, they’ll tell you the
        minimum it would take for them
        to do it (or if there’s no way they’d
        do it). <br/> <strong><em>For another hunter</em></strong>-
        <strong>On a 10+</strong>: if they do what you ask
        they mark experience and get +1
        forward",
        advanced_success: "<em>For a normal person</em><strong> On a 12+</strong>: not only do
        they do what you want right now,
        they also become your ally for the
        rest of the mystery (or, if you do
        enough for them, permanently). 
        </br>
        <em>For another hunter</em>
        <strong> On a 12+ </strong>:they must
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
        partial_success: "<strong>On a 7-9</strong>:
        hold 1.",
        total_success: "<strong>On a 10+</strong>: hold 3.",
        advanced_success: "<strong>On a 12+</strong>: you may ask
        the Keeper any question you want about
        the situation, not just the listed ones."
    },
    {
        name: "Use Magic",
        rating: "Weird",
        description: "When you use magic, say what you’re
        trying to achieve and how you do the
        spell, then roll +Weird. </br> <strong>Effects</strong>:
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
        <strong>Glitches</strong>:
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
        advanced_success: "<strong>On a 12+</strong>: the Keeper
        will offer you some added benefit."
    },
    {
        playbook_id: chosen.id,
        name: "Destiny's Plaything",
        rating: "Weird",
        description: "At the beginning of each mystery, roll +Weird to <strong>see what is revealed about your immediate future</strong>." ,
        partial_success: "<strong>On a 7-9</strong>: you get a vague hint about it. </br> <strong>On a miss</strong>: something bad is going to happen to you." ,
        total_success: "<strong>On a 10+</strong>: the Keeper will reveal a useful detail about the coming
        mystery."
    },
    {
        playbook_id: chosen.id,
        name: "I'm Here For A Reason",
        description: "There’s something you are destined to do. Work out the details with the Keeper, based on your fate. You cannot die until it comes to pass. <strong>If you die in play</strong>, then you must spend a Luck point. You will then, somehow, recover or be returned to life. Once your task is done (or you use up all your Luck), all bets are off.",
    },
    {
        playbook_id: chosen.id,
        name: "The Big Entrance",
        rating: "Cool",
        description: "When <strong>you make a showy entrance into a dangerous situation</strong>, roll +Cool.",
        partial_success: "<strong>On a 7-9</strong>: you pick one person or monster to stop, watch and listen until you finish talking. </br><strong>On a miss</strong>: you’re marked as the biggest threat by all enemies who are present." ,
        total_success: "<strong>On 10+</strong>: everyone stops to watch and listen until you finish your opening speech.",
    },
    {
        playbook_id: chosen.id,
        name: "Devastating",
        description: "When <strong>you inflict harm</strong>, you may inflict +1 harm."
    },
    {
        playbook_id: chosen.id,
        name: "Dutiful",
        description: "When your fate rears its ugly head, and <strong>you act in accor-
        dance with any of your fate tags</strong> (either heroic or doom) then
        mark experience. If it’s a heroic tag, take +1 forward."
    },
    {
        playbook_id: chosen.id,
        name: "Invincible",
        description: "You always count as having 2-armour. <em>This doesn’t
        stack with other protection.</em>"
    },
    {
        playbook_id: chosen.id,
        name: "Resilience",
        description: "You heal faster than normal people. Any time your
        harm gets healed, heal an extra point. Additionally, your wounds count as 1-harm less for the purpose of the Keeper’s harm moves."
    },
    {
        playbook_id: crooked.id,
        name:  "Artifact",
        description: "You ‘found’ a magical artifact with handy powers, and
        kept it. Pick one: Protective amulet (1-armour magic recharge), Lucky charm (may be used as a Luck point, once only), Grimoire (studying the book gives +1 forward to use magic), Skeleton key (opens any magically sealed lock), Imp stone (A weak demon is bound to serve the holder. The imp must be summoned with the use magic move).",
    },
    {
        playbook_id: crooked.id,
        name: "Crew",
        description: "You have a regular crew, a team of three or four people who will help you out with pretty much anything. They count as a team (see page 119)."
    },
    {
        playbook_id: crooked.id,
        name: "Deal with the Devil",
        description: " You sold your soul to the Devil. Pick one or two things you got out of the deal: wealth, fame, youth, sensual gratification, skill (add +1 to two ratings). Payment is due either when you die, in six months (if you picked two things) or otherwise in a year."
    },
    {
        playbook_id: crooked.id,
        name: "Friends on the Force",
        rating: "Cool",
        description: "You know a few cops who can be persuaded to look the other way, or do you a favour, for certain considerations. You can <strong>act under pressure</strong> to get in touch with them when you need to divert any law enforcement attention. There will be a cost, although maybe not right now."
    },
    {
        playbook_id: crooked.id,
        name: "Made",
        description: "You’re “made” in a gang. Name the gang and describe how their operations tie into your background. You can call on gang members to help you out, but they’ll expect to be paid. Your bosses will have requests for you now and again, but you’ll be paid. Minor trouble will be overlooked, but you better not screw over any other made gangsters."
    },
    {
        playbook_id: crooked.id,
        name: "Driver",
        description: "You have +1 ongoing while driving, plus you can hotwire anything (the older it is, the fewer tools you need to do it). You also own two handy, widely-available vehicles (perhaps a sportscar and a van).",
    },
    {
        playbook_id: crooked.id,
        name: "Home Ground",
        description: "Your crew made a point of keeping the locals happy keeping them safe, ensuring things always went down okay. When you’re back in your old neighbourhood, you can always find people who will hide you or help you with a minor favour, no questions asked."
    },
    {
        playbook_id: crooked.id,
        name: "Notorious",
        description: "You have a reputation from your criminal past. When <strong>you reveal who you are</strong>, your terrifying reputation counts as a reason for people to do what you ask, for the manipulate someone move. Revealing your identity to someone can create other problems later, of course."
    },
    {
        playbook_id: divine.id,
        name: "Boss from Beyond",
        rating: "Weird" ,
        description: "At the beginning of each mystery, roll +Weird.",
        partial_success: "<strong>On a 7-9</strong>: they ask you to do something complicated or difficult. In either case, you get to ask them one of the questions from the investigate a mystery move right now.</br> <strong>On a miss</strong>: you are required to do something terrible. If you do not accomplish what they’ve ordered, you cannot use this move again until you have
        made up for your failure.",
        total_success: "<strong>On a 10+</strong>: your Superiors ask you to do something simple."
    },
    {
        playbook_id: divine.id,
        name: "Angel Wings",
        rating: "Weird",
        description: "You can go instantly to anywhere you’ve visited
        before, or to a person you know well. When you carry one or two people with you, roll +Weird",
        partial_success: "<strong>On a 7-9</strong>: you don’t quite manage it. Either you are all separated, or you all appear in the wrong place.",
        total_success: "<strong>On a 10+</strong>: you all go where you wanted."
    },
    {
        playbook_id: divine.id,
        name: "What I Need, When I Need It",
        description: " You may store any small object you own, putting it into a magical space nobody can get to. You may retrieve anything you stored at any time; it appears in your hand."
    },
    {
        playbook_id: divine.id,
        name: "Soothe",
        description: "<strong>When you talk to someone for a few seconds in a quiet voice</strong>, you can calm them down, blocking any panic, anger, or other negative emotions they have. This works even if the thing that freaked them out is still present, as long as your voice can be heard.",
    },
    {
        playbook_id: divine.id,
        name: "Lay On Hands",
        rating: "Cool",
        description: "Your touch can heal injury and disease. When you lay your hands on someone hurt, roll +Cool.",
        partial_success: "<strong>On a 7-9</strong>: you can heal the harm or illness as on a 10+, but you take it into yourself. </br><strong>On a miss</strong>: your aura causes them extra harm.",
        total_success: " <strong>On a 10+</strong>: heal 2 harm or an illness, plus they’re stabilized."
    },
    {
        playbook_id: divine.id,
        name: "Cast Out Evil",
        rating: "Tough",
        description: "You may <strong>banish an unnatural creature from your presence</strong>",
        partial_success: "<strong>On a 7-9</strong>: it takes a little while for the banishing to take effect—the creature has time to make one or two actions. Either way, the banished creature is unharmed, and you have no control over where it goes. This move may be used on unnatural hunters (e.g. the Monstrous). </br><strong>On a miss</strong>: something is keeping it here. That’s bad.",
        total_success: "<strong>On a 10+</strong>: it is banished."
    },
    {
        playbook_id: divine.id,
        name: "Smite",
        description: "Your body and divine weapon always count as a weakness against the monsters you fight. Your unarmed attacks are 2-harm intimate hand messy."
    },
    {
        playbook_id: expert.id,
        name: "I’ve Read About This Sort Of Thing",
        rating: "Sharp",
        description: "Roll +Sharp instead of +Cool when you <strong>act under pressure</strong>."
    },
    {
        playbook_id: expert.id,
        name: "Often Right",
        description: "When a <strong>hunter comes to you for advice</strong> about a problem, give them your honest opinion and advice. If they take your advice, they get +1 ongoing while following your advice, and you mark experience." 
    },
    {
        playbook_id: expert.id,
        name: "Preparedness",
        rating: "Sharp",
        description: "When <strong>you need something unusual or rare</strong>, roll +Sharp.",
        partial_success: "<strong>On a 7-9</strong>: you have it, but not here: it will take some time to get it. </br><strong>On a miss</strong>: you know
        where it is, but it’s somewhere real bad.",
        total_success: "<strong>On a 10+</strong>: you have it here right now" 
    },
    {
        playbook_id: expert.id,
        name: "It Wasn’t As Bad As It Looked",
        rating: "Cool",
        description: "Once per mystery, you may
        attempt to keep going despite your injuries.",
        partial_success: "<strong>On a 7-9</strong>: you may either stabilize or heal 1 harm. </br><strong>On a miss</strong> it was worse than it looked: the Keeper may inflict a harm move on you, or make your
        wounds unstable.",
        total_success: "<strong>On a 10+</strong>: heal 2 harm and stabilize your wounds"
    },
    {
        playbook_id: expert.id,
        name: "Precise Strike",
        rating: "Tough",
        description: "When you inflict harm on a monster, you can <strong>aim
        for a weak spot</strong>.",
        partial_success: "<strong>On a 7-9</strong>: you inflict +1 harm. </br><strong>On a miss</strong>: you leave yourself open for the monster to hit you.",
        total_success: "<strong>On a 10+</strong>: you inflict +2 harm."
    },
    {
        playbook_id: expert.id,
        name: "The Woman (or Man) With The Plan",
        rating: "Sharp",
        description: "Spend the hold to be where you need to be, prepared and ready.",
        partial_success: "<strong>On a 7-9</strong>: hold 1. </br><strong>On a miss</strong>: the Keeper holds 1 they can spend to have you be in the worst place, unprepared and unready.",
        total_success: "<strong>On a 10+</strong>: hold 2"
    },
    {
        playbook_id: expert.id,
        name: "Dark Past",
        rating: "Weird",
        description: "You dabbled in the worst sort of mystical arts before you became one of the good guys. If <strong>you trawl through your memories</strong> for something relevant to the case at hand, roll +Weird. On a success, ask one or more questions from these questions:</br><ul>
        <li>When I dealt with this creature (or one of its kind), what did I learn?</li>
        <li>What black magic do I know that could help here?</li>
        <li>Do I know anyone who might be behind this?</li>
        <li>Who do I know who can help us right now?</li>
        </ul>",
        partial_success: "<strong>On a 7-9</strong>: ask one. </br><strong>On a miss</strong>: you can ask a question anyway but that will mean you were personally complicit in creating the situation you are now dealing with.",
        total_success: "<strong>On a 10+</strong>: ask the Keeper two questions from the list below."
    },
    {
        playbook_id: flake.id,
        name: "Connect the Dots",
        rating: "Sharp",
        description: "At the beginning of each mystery, if you look for the wider patterns that current events might be part of, roll +Sharp. Spend your hold during the mystery to ask the Keeper any one of the following
        questions: </br>
        <ul>
        <li>Is this person connected to current events more than they are
        saying?</li>
        <li>When and where will the next critical event occur?</li>
        <li>What does the monster want from this person?</li>
        <li>Is this connected to previous mysteries we have investigated?</li>
        <li>How does this mystery connect to the bigger picture?</li>
        </ul>",
        partial_success: "<strong>On a 7-9</strong>: hold 1",
        total_success: "<strong>On a 10+</strong>: hold 3." 
    },
    {
        playbook_id: flake.id,
        name: "Crazy Eyes",
        description: "You get +1 Weird (max +3)."
    },
    {
        playbook_id: flake.id,
        name: "See, It All Fits Together",
        description: "You can use Sharp instead of Charm
    when you <strong>manipulate someone</strong>."
    },
    {
        playbook_id: flake.id,
        name: "Suspicious Mind",
        description: "If someone lies to you, you know it."
    },
    {
        playbook_id: flake.id,
        name: "Often Overlooked",
        rating: "Weird",
        description: "When <strong>you act all crazy</strong> to avoid something,
        roll +Weird.",
        partial_success: "<strong>On a 7-9</strong>: pick one: unthreatening or unimportant. </br><strong>On a miss</strong>: you draw lots (but not all) of the attention.",
        total_success: "<strong>On a 10+</strong>: you’re regarded as unthreatening and unimportant."
    },
    {
        playbook_id: flake.id,
        name: "Contrary",
        description: "When <strong>you seek out and receive someone’s honest advice</strong> on the best course of action for you and then do something else instead, mark experience. If you do exactly the opposite of their advice, you also take +1 ongoing on any moves you make pursuing that course."
    },
    {
        playbook_id: flake.id,
        name: "Net Friends",
        rating: "Charm",
        description: "You know a lot of people on the Internet. When <strong>you contact a net friend to help you</strong> with a mystery, roll +Charm.",
        partial_success: "<strong>On a 7-9</strong>: they’re prepared to help, but it’s either going to take some time or you’re going to have to do part of it yourself. </br><strong>On a miss</strong>: you burn some bridges.",
        total_success: "<strong>On a 10+</strong>: they’re available and helpful—they can fix something, break a code, hack a computer, or get you some special information."
    },
    {
        playbook_id: flake.id,
        name: "Sneaky",
        description: "When you attack from ambush, or from behind, inflict +2 harm."
    },
    {
        playbook_id: initiate.id,
        name: "Good Standing",
        rating: "Charm",
        description: "When you <strong>are in good standing with your Sect, at the beginning of each mystery</strong>, roll +Charm.",
        partial_success: "<strong>On a 7-9</strong> you get a mission associated with the mystery, and if you do it you’ll get some info or help too. </br><strong>On a miss</strong>: they ask you to do something bad. If you fail a mission or refuse an order, you’ll be in trouble with the Sect until you atone.",
        total_success: "<strong>On a 10+</strong> they provide some useful info or help in the field."
    },
    {
        playbook_id: initiate.id,
        name: "Ancient Fighting Arts",
        description: "When using an old-fashioned hand weapon, you inflict +1 harm and get +1 whenever you roll <strong>protect someone</strong>."
    },
    {
        playbook_id: initiate.id,
        name: "Mystic",
        description: "Every time you successfully use magic, take +1 forward."
    },
    {
        playbook_id: initiate.id,
        name: "Fortunes",
        rating: "Weird",
        description: "The Sect has ancient prophecies or divination techniques to predict the future. Once per mystery, you may use them.
        If you look at what the future holds, roll +Weird. On success take one more hold. Spend your hold to: </br>
        <ul>
        <li>have a useful object ready.</li>
        <li>be somewhere you are needed, just in time.</li>
        <li>take +1 forward, or give +1 forward to another hunter.</li>
        <li>retroactively warn someone about an attack, so that it doesn’t
        happen.</li>
        </ul>",
        partial_success: "<strong>On a 7-9</strong> hold 1",
        total_success: "<strong>On a 10+</strong> hold 3"
    },
    {
        playbook_id: initiate.id,
        name: "Sacred Oath",
        rating: "Weird",
        description: "You may bind yourself to a single goal, forsaking
        something during your quest (e.g. speech, all sustenance but bread and water, alcohol, lying, sex, etc). Get the Keeper’s agreement on this—it should match the goal in importance and difficulty. While you keep your oath and work towards your goal, mark experience at the end of every session and get +1 on any rolls that directly help achieve the goal. If you break the oath, take -1 ongoing until you have atoned."
    },
    {
        playbook_id: initiate.id,
        name: "Mentor",
        rating: "Sharp",
        description: "You have a mentor in the Sect: name them. When you <strong>contact your mentor for info</strong>, roll +Sharp.",
        partial_success: "<strong>On a 7-9</strong>: you choose: they’re either busy and can’t help, or they answer the question but you owe a favour. </br><strong>On a miss</strong>: your question causes trouble.",
        total_success: "<strong>On a 10+</strong>: you get an answer to your question, no problem."
    },
    {
        playbook_id: initiate.id,
        name: "Apprentice",
        description: "You have an apprentice: name them. Your job is to teach them the Sect’s ways. They count as an <strong>ally: subordinate</strong> (motivation: to follow your instructions to the letter)."
    },
    {
        playbook_id: initiate.id,
        name: "Helping Hand",
        description: "When you successfully <strong>help out</strong> another hunter, they get +2 instead of the usual +1.",
    },
    {
        playbook_id: initiate.id,
        name: "That Old Black Magic",
        description: "When you <strong>use magic</strong>, you can ask a question from the <strong>investigate a mystery</strong> move as your effect."
    },
    {
        playbook_id: monstrous.id,
        name: "Immortal",
        description: "You do not age or sicken, and whenever you suffer harm you suffer 1-harm less."
    },
    {
        playbook_id: monstrous.id,
        name: "Immortal",
        description: "You do not age or sicken, and whenever you suffer harm you suffer 1-harm less."
    },
    {
        playbook_id: monstrous.id,
        name: "Unnatural Appeal",
        rating: "Weird",
        description: "Roll +Weird instead of +Charm when you <strong>manipulate someone</strong>."
    },
    {
        playbook_id: monstrous.id,
        name: "Unholy Strength",
        rating: "Weird",
        description: "Roll +Weird instead of +Tough when you <strong>kick some ass</strong>."
    },
    {
        playbook_id: monstrous.id,
        name: "Incorporeal",
        description: "You may move freely through solid objects (but not people)."
    },
    {
        playbook_id: monstrous.id,
        name: "Preternatural Speed",
        description: "You go much faster than normal people. <strong>When you chase, flee, or run</strong> take +1 ongoing." 
    },
    {
        playbook_id: monstrous.id,
        name: "Claws of the Beast",
        description: "All your natural attacks get +1 harm."
    },
    {
        playbook_id: monstrous.id,
        name: "Mental Dominion",
        rating: "Charm",
        description: "When you gaze into a normal human’s eyes
        and <strong>exert your will over them</strong>, roll +Charm. On a success hold one or more. You may spend your hold to give them an order. Regular people will follow your order, whatever it is. Hunters can choose whether they do it or not. If they do, they mark experience.",
        partial_success: "<strong>On a 7-9</strong>: hold 1.",
        total_success: "<strong>On a 10+</strong>: hold 3."
    },
    {
        playbook_id: monstrous.id,
        name: "Unquenchable Vitality",
        rating: "Cool",
        description: "When you have taken harm, you can heal yourself. Roll +Cool.",
        partial_success: "<strong>On a 7-9</strong>: heal 1-harm and stabilise your injuries. </br><strong>On a miss</strong>: your injuries worsen.",
        total_success: "<strong>On a 10+</strong>: heal 2-harm and stabilise your injuries."
    },
    {
        playbook_id: monstrous.id,
        name: "Dark Negotiator",
        description: "You can use the <strong>manipulate someone</strong> move on monsters as well as people, if they can reason and talk."
    },
    {
        playbook_id: monstrous.id,
        name: "Flight",
        description: "You can fly."
    },
    {
        playbook_id: monstrous.id,
        name: "Shapeshifter",
        description: "You may change your form (usually into an animal).
        Decide if you have just one alternate form or several, and detail them. You gain +1 to <strong>investigate a mystery</strong> when using an alternate form’s superior senses (e.g. smell for a wolf, sight for an eagle).",
    },
    {
        playbook_id: monstrous.id,
        name: "Something Borrowed",
        description: "Take a move from a hunter playbook that is not currently in play."  
    },
    {
        playbook_id: mundane.id,
        name: "Always The Victim",
        description: "When another hunter uses <strong>protect someone</strong> to protect you, they mark experience. Whenever a monster captures you, you mark experience.",
    },
    {
        playbook_id: mundane.id,
        name: "Oops!",
        description: "If you want to <strong>stumble across something important</strong>, tell the Keeper. You will find something important and useful, although not necessarily related to your immediate problems."
    },
    {
        playbook_id: mundane.id,
        name: "Let’s Get Out Of Here!",
        rating: "Charm",
        description: "If you can <strong>protect someone</strong> by telling them what to do, or by leading them out, roll +Charm instead of
        +Tough."
    },
    {
        playbook_id: mundane.id,
        name: "Panic Button",
        rating: "Sharp",
        description: "When you need to escape, <strong>name the route you’ll
        try</strong> and roll +Sharp.",
        partial_success: "<strong>On a 7-9</strong>: you can go or stay, but if you go it’s going to cost you (you leave something behind or something comes with you). </br><strong>On a miss</strong>: you are caught halfway out.",
        total_success: "<strong>On a 10+</strong> you’re out of danger, no problem."
    },
    {
        playbook_id: mundane.id,
        name: "The Power of Heart",
        description: "When fighting a monster, if you <strong>help someone</strong>, don’t roll +Cool. You automatically help as though you’d rolled a 10."
    },
    {
        playbook_id: mundane.id,
        name: "Trust Me",
        rating: "Charm",
        description: "When <strong>you tell a normal person the truth in order to protect them from danger</strong>, roll +Charm.",
        partial_success: "<strong>On a 7-9</strong>: they do it, but the Keeper chooses one from:
        </br>
        <ul>
        <li>They ask you a hard question first.</li> 
        <li>They stall and dither a while.</li>
        <li>They have a “better” idea.</li>
        </br><strong>On a miss</strong>: they’re going to think you’re crazy and maybe danger-
        ous too.",
        total_success: "<strong>On a 10+</strong>: they’ll do what you say they should, no questions asked."
    },
    {
        playbook_id: mundane.id,
        name: "What Could Go Wrong?",
        description: "Whenever you <strong>charge into immediate danger</strong> without hedging your bets, hold 2. You may spend your hold to:</br>
        <ul>
        <li>Inflict +1 harm.</li>
        <li>Reduce someone’s harm suffered by 1.</li>
        <li>Take +2 forward on an act under pressure roll.</li>"
    },
    {
        playbook_id: mundane.id,
        name: "Don’t Worry, I’ll Check It Out",
        description: "Whenever <strong>you go off by yourself</strong> to check out somewhere (or something) scary, mark experience."
    },
    {
        playbook_id: professional.id,
        name: "Deal With Agency",
        rating: "Sharp",
        description: "When you deal with the Agency, requesting help or gear, or making excuses for a failure, roll +Sharp.",
        partial_success: "<strong>On a 7-9</strong>: things aren’t so great. You might get chewed out by your superiors and there’ll be fallout, but you get what you need for the job. </br><strong>On a miss</strong>: you screwed up: you might be suspended or under investigation, or just in the doghouse. You certainly aren’t going to get any help until you sort it all out.",
        total_success: "<strong>On a 10+</strong>: you’re good— your request for gear or personnel is okayed, or your slip-up goes unnoticed."
    },
    {
        playbook_id: professional.id,
        name: "Bottle It Up",
        description: "If you want, you can take up to +3 bonus when you <strong>act under pressure</strong>. For each +1 you use, the Keeper holds 1. That hold can be spent later—one for one—to give you -1 on any
        move <em>except</em> <strong>act under pressure</strong>."
    },
    {
        playbook_id: professional.id,
        name: "Unfazeable",
        description: "Take +1 Cool (max +3)."
    },
    {
        playbook_id: professional.id,
        name: "Battlefield Awareness",
        description: "You always know what’s happening
        around you, and what to watch out for. Take +1 armour (max
        2-armour) on top of whatever you get from your gear."
    },
    {
        playbook_id: professional.id,
        name: "Leave No One Behind",
        rating: "Sharp",
        description: "In combat, when <strong>you help someone
        escape</strong>, roll +Sharp.",
        partial_success: "<strong>On a 7-9</strong>: you can <em>either</em> get them out <em>or</em> suffer no harm, you choose. </br><strong>On a miss</strong>: you fail to get them out and you’ve attracted hostile atten- tion.",
        total_success: "<strong>On a 10+</strong>: you get them out clean."
    },
    {
        playbook_id: professional.id,
        name: "Tactical Genius",
        rating: "Cool",
        description: "When you <strong>read a bad situation</strong>, you may roll +Cool instead of +Sharp"
    },
    {
        playbook_id: professional.id,
        name: "Medic",
        rating: "Cool",
        description: "You have a full first aid kit, and the training to heal people. <strong>When you do first aid</strong>, roll +Cool.",
        partial_success: "<strong>On a 7-9</strong>: choose one: heal 2 harm or stabilize the injury. </br><strong>On a miss</strong>: you cause an extra 1 harm. This move takes the place of regular first aid.",
        total_success: "<strong>On a 10+</strong> the patient is stabilized and healed of 2 harm."
    },
    {
        playbook_id: professional.id,
        name: "Mobility",
        description: "You have a truck, van, or car built for monster hunting. Choose two good things and one bad thing about it.</br>
        <em>Good things</em>: roomy; surveillance gear; fast; stealthy; intim- idating; classic; medical kit; sleeping space; toolkit; concealed weapons; anonymous; armoured (+1 armour inside); tough; monster cage.
        </br>
        <em>Bad things</em>: loud; obvious; temperamental; beaten-up; gas- guzzler; uncomfortable; slow; old."
    },
    {
        playbook_id: spellslinger.id,
        name: "Tools and Techniques",
        description: "In order to use your combat magic effec-
        tively, you rely on a collection of tools and techniques. If you don’t
        use them, there are drawbacks. Cross off one; you’ll need the rest.
        </br>
        <ul>
        <li> <strong>Consumables</strong>: You need to have certain supplies— powders, oils, etc— on hand to cast your spell. They’re used up when you cast
        the spell. If you don’t have them on hand, your body will be the
        substitute: take 1-harm ignore-armour when you cast.</li>
        <li><strong>Foci</strong>: You need wands, staves, and other somewhat obvious props to focus your efforts at their most powerful. If you don’t have
        what you need on hand, your combat magic does 1 less harm.</li>
        <li><strong>Gestures</strong>: You need to be able to wave your hands around obvi-
        ously in order to use your combat magic. If you’re restrained in any way, you can still cast the spell but it’s more likely to go wrong; take -1 ongoing to your combat magic.</li>
        <li><strong>Incantations</strong>: You must speak in an arcane language to control your magic without it filtering directly through your mind. If you use combat magic spell, successfully or failed, while unable or unwilling to speak, you must immediately act under pressure to avoid scrambling your thoughts—producing hallucinations, sensory deprivation, and general befuddlement.</li>
        </ul>
        "
    },
    {
        playbook_id: spellslinger.id,
        name: "Advanced Arcane Training",
        description: " If you have two of your three Tools
        and Techniques at the ready, you may ignore the third one."
    },
    {
        playbook_id: spellslinger.id,
        name: "Arcane Reputation",
        description: "Pick three big organizations or groups in the supernatural community, which can include some of the more sociable types of monsters. They’ve heard of you and respect your
        power. With affected humans, take +1 forward when you <strong>manipulate</strong> them. You may <strong>manipulate</strong> affected monsters as if they were human, with no bonus."
    },
    {
        playbook_id: spellslinger.id,
        name: "Could’ve Been Worse",
        description: "When you miss a use magic roll you can choose one of the following options instead of losing control of the magic:</br>
        <ul>
        <li><strong>Fizzle</strong>: The preparations and materials for the spell are ruined. You’ll have to start over from scratch with the prep time doubled.</li>
        <li><strong>This Is Gonna Suck</strong>: The effect happens, but you trigger all of the listed glitches but one. You pick the one you avoid.</li>
        </ul>
        "
    },
    {
        playbook_id: spellslinger.id,
        name: "Enchanted Clothing",
        description: "Pick an article of every-day clothing–it’s enchanted without any change in appearance. Take -1 harm from any source that tries to get at you through the garment."
    },
    {
        playbook_id: spellslinger.id,
        name: "Forensic Divination",
        description: "When you successfully <strong>investigate a mystery</strong>, you may ask “What magic was done here?” as a free extra question."
    },
    {
        playbook_id: spellslinger.id,
        name: "Go Big or Go Home",
        description: "When you must <strong>use magic</strong> as a require- ment for Big Magic, take +1 ongoing to those <strong>use magic</strong> rolls."
    },
    {
        playbook_id: spellslinger.id,
        name: "Not My Fault",
        description: "You get a +1 to <strong>act under pressure</strong> when you are dealing with the consequences of your own spellcasting."
    },
    {
        playbook_id: spellslinger.id,
        name: "Practitioner",
        description: "Choose two effects available to you under <strong>use magic</strong>. Take +1 to <strong>use magic</strong> whenever you choose one of those effects."
    },
    {
        playbook_id: spellslinger.id,
        name: "Shield Spell",
        description: "When you <strong>protect someone</strong>, gain 2-armour against any harm that is transferred to you. This doesn’t stack with your other armour, if any."
    },
    {
        playbook_id: spellslinger.id,
        name: "Third Eye",
        description: "When you read a bad situation, you can open up your third eye for a moment to take in extra information. Take +1 hold on any result of 7 or more, plus you can see invisible things. On a miss, you may still get 1 hold, but you’re exposed to super- natural danger. Unfiltered hidden reality is rough on the mind!" 
    },
    {
        playbook_id: spellslinger.id,
        name: ,
        rating: ,
        description: ,
        partial_success: ,
        total_success: 
    },
])


