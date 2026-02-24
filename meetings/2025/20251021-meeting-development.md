**Community Meeting Notes October 21, 2025**

Grin Governance Council (GGC) Developer meeting held in Telegram GCC channel at 19:30 UTC. Meeting lasted approx. 90 minutes.

Notes are truncated, and conversations are sorted based on topic and not always chronological. Quotes are edited for brevity and clarity, and not always exact.

**Community attendance:**

*   anonymous
*   Wayne George
*   Ckec
*   Wiesche
*   Tromp
*   SyntaxJak
*   transatoshiツ 

**Short Summary**

This meeting focused on administrative and infrastructure improvements for the Grin project. Key discussions included resolving access and control over the Grin website, merging and consolidating GitHub organizations and repositories under the `mimblewimble` organization for better project management, and granting the GGC team appropriate access rights. Updates were provided on Grin++ debugging and API alignment for Umbrel integration.

**Agenda Points & Actions**

https://github.com/grincc/agenda/issues/191

*   Website & Infrastructure Control
*   GitHub Organization & Access Management
*   Project Updates: Grin Rust, Grin++, Umbrel
*   Mobile Wallet Development
*   General Follow-ups

__Ckec__: 👋

__Wayne George__: 👋
Great news that the site is back up and in control
I also wanna say thanks to @syntaxjak for the videos recently. Really cool and not cringy at all 😄

__Ckec__: yes, cool videos @syntaxjak 💛

__anonymous__: 👋
Others can lead the discussion today, I will just join in.

__Wayne George__: Well as the website issue is resolved, there is nothing on the agenda, just follow-ups
Or we can just start with any general conversation

**Follow-ups & General Discussion**

__anonymous__: Regarding last meetings todo, checking Grin++ peers.
The list is up to date, meaning the same as in grin rust. So seed peers is not the issue. We could however check if all seed peers are still online and if new ones need to be added in the future.

__Wayne George__: If you feel that is worth further investigation, we could add it to the GitHub Project

__anonymous__: Probably we should, fix the main issue with Grin++, which is that grin++ nodes can end up with no peers and for some reason often block rust nodes. We can later look who can dive into this issue.

__Wayne George__: Sounds good

__Wiesche__: 👋🏻

__anonymous__: To be clear, this is not a issue for grin rust nodes since Grin++ nodes are the minority. So Grin++ nodes banning rust peers mostly is a problem for Grin++ users.

__SyntaxJak__: Weische has been working diligently with Burkett all week on grin++ node issues as well as api issues to get ombrel up so that’s awesome

__anonymous__: For sure, Grin++ was in need of some love and attention.

__Wiesche__: Thanks @johntromp

__John Tromp__: you're welcome!

__anonymous__: Great that it could be fixed so soon. In case there are new issues, you have control now right @johntromp.
In the project overview of council members, I think we should add these kind of practical things, who has access to what.

**GitHub Organization & Access Management**

__Wiesche__: I am busy debugging and have noticed differences compared to the reference implementation.
I would like to write this down and give it to David for his assessment.

__John Tromp__: i also have access to the ubuntu one snaps

__anonymous__: Great, I thought it was only Quentin.

__John Tromp__: Quentin remains as a less accessible backup

__anonymous__: Still good that he is available as backup. Me or @waynegeorge can add that information as well to the project overview.

__Wayne George__: Perhaps Quentin can help us with this
It looks like he is one of the 4 people with access

__Wiesche__: Unfortunately, I haven't received any feedback regarding the grincc website yet.
It would be cool to merge with grin.mw to save money.

__Ckec__: Regarding this site certificate issue, since github started is banning people and closing repos etc, is there a backup for mimblewimble repos?

__Wayne George__: Yes, perhaps a governance section
It's also cleaner not to have multiple sites

__Wiesche__: Yes, at least it would be nice if we could merge the GitHubs.
@johntromp , can you create repositories and assign access rights?

__Wayne George__: I'm sure many people have local copies that they could easily upload to a different repository server, even one that we self-host

__Wiesche__: Local

__Ckec__: 🤙

__John Tromp__: i do have ownership yes

__Wayne George__: You'd need to be an owner of the Mimblewimble organisation

__John Tromp__: as does antioch, lehnberg, quentin, phyro and yeast

__Wayne George__: Owner, rather

__anonymous__: Yes, @johntromp as admin can give for example all council members access to the grin-pm folder:

__Ckec__: Since github is centralized and owned by an enterprise, what is the point of merging githubs? sorry i didnt get it. Isnt it better for decentralization?

__anonymous__: Well, one github might be more efficient than one. Even for local backups

__Ckec__: ok.

__Wayne George__: If Microsoft were to take one repo download, it would probably take all others related to it

__anonymous__: But keeping things like now is also ok, to be hones, I do not care much as long as we can have project management at all.

__Wayne George__: But it would only be a minor hindrance because there are other repository servers such as GitLab

__Wiesche__: That would be great if he could do that. And we would need a repo for the ggc site. We could then run it via the Grin.mw DNS.
For example:
ggc.grin.mw
When I joined the project from the outside at that time, I didn't understand the structure.
Personally, I also think it's very good to have it in one place.

__Wayne George__: Yes, for now we have a place to keep our project management, which is the most important. Moving forwards, it would be nice to unify and clean up the sites.

__John Tromp__: it makes sense for the new council to use grin-pm just as the old council did

__Wiesche__: You had created another git ggc, did you delete it again?

__anonymous__: Then lets start the migration, it starts with all of us having access to it.
At the moment I only have access, but I do not have admin rights so I cannot add others, only @johntromp can.

__Wayne George__: We moved everything over to the grincc organisation, but I haven't deleted the grin-gc one yet

__Wiesche__: Is there anything important in there, or why is it still there?
GitHub user: wiesche89

__Ckec__: click is there. For months this debate is going on. These meetings supposed to have dev meetings 💬

__John Tromp__: how do i give access to just grin-pm?

__Wayne George__: No nothing there so can be deleted
In the settings section of the repo, there should be a tab called "Collaborators."
You then invite people and select their access options

__anonymous__: I think it can also be done by adding someone to a specific team, e.g. team governance (or something similar) has access go grin-pm
See this link: https://github.com/orgs/mimblewimble/teams
I was added by Yaest to team 'pm', which only gives me access to the project management directory.

__John Tromp__: ok, i'll create a new cc team
pm also gives access to the rfcs repo

__anonymous__: A, I did not know that.
Can you also add a repository 'grin-hub' or 'hub', to which this team has access? Then we can move the grin hub as well.

__Wayne George__: A team would be handy for adding to other repos later if needed

__Wiesche__: You're right.

**Project Updates**

__Wiesche__: Grin Rust
I created a PR for a small API extension.
I would appreciate it if someone could review it.
Grin++
The build environment is ready, and I am checking and correcting the API.
I am also looking into the awaiting peers issue and trying to find my way around the code.

__Wayne George__: Then people can just be added and removed from the team accordingly

__John Tromp__: github says We couldn’t find any matching members. when i try to add wiesche89 as member

__Wiesche__: Umbrel
Not much is happening in the umbrel environment at the moment, as I first want to ensure that the APIs of both Node implementations are the same.
https://github.com/wiesche89

__Wayne George__: Thanks for the work Wiesche

__SyntaxJak__: It’s also good to sort out who can access what cuz we certainly don’t wanna end up locked out of our own repos like what almost happened to the website

__Wiesche__: That's strange.

__John Tromp__: ok, can add members to cc now
learning github management as i go:)

__anonymous__: We will add an overview of this to the project management on github.
Ok, I got to go, great that these things are getting sorted, keep it up 👋 👍

__Wayne George__: 👋

__Ckec__: 👋

**Mobile Wallet Discussion**

__Wayne George__: We still have ten minutes if anyone wants to talk about anything else

__SyntaxJak__: Someone on our discord asked if we have a mobile app, that’s definitely a project that would be exciting to work on. Ironbelly is open source so we do have a starting point

__Ckec__: wiesche asked for review. Any volunteer ?

__Wiesche__: It worked, I'm now part of Team CC.
Can the others also share their GitHub names?
Ckec @waynegeorge @aglkm

__Wayne George__: If I were to do anything, it would be making a mobile app for iOS in particular to start with

__Wiesche__: Grim (android)

__Wayne George__: I still have an Apple developer account

__Wiesche__: @ardocrat GRIM iOs 😍

__Ckec__: @cekickafa my github. Not ckec

__SyntaxJak__: My pr could use some review as well, if anything we could definitely just increase the header size limit to account for the real header sizes

__Wiesche__: Have you had contact with @ardocrat

__Wayne George__: We did have a brief talk about it some time ago

__Wiesche__: I'll be happy to take a look at that.
There is also a PR in the wallet that fixes the config issues.

__SyntaxJak__: Grim is on android? I could not find a link

__Ckec__: https://gri.mw

__Wiesche__: Are there people who use Grin++ mobile?
Yes

__Ckec__: long time i didnt use grin++ mobile.

__Wayne George__: I tried it once and remember it killing the battery

__SyntaxJak__: Would be cool if the mobile wallets were on the playstore. So it’s more user friendly instead of the sdk

__Wiesche__: https://t.me/grim_app/7861
Oh... but with an external node option, it might be cool.
Do you use grim mobile?
True

__Wayne George__: I'm an iPhone user. I used to use IronBelly until it died

__SyntaxJak__: Ya he said anyone can use his source code for iron belly but change name/logo etc. we need to have mobile wallets that regular noobs like me can grab

__Wiesche__: In which language is this implemented?
Is it wallet + node?

__Wayne George__: To be honest I would prefer a clean start. I would focus on UX to start with. I'd certainly use a remote node
He used React Native
Remote node

__SyntaxJak__: https://github.com/i1skn/ironbelly

__Ckec__: ironbelly used remote node always.

__Wayne George__: I don't think local node is necessary for mobile, but I would love to hear of other views

__Wiesche__: What language do you imagine?

__SyntaxJak__: Mobile wallet something we could add to next meeting agenda

__Wayne George__: I would probably start with Swift as I know it already
If it worked, then it could be replicated in Android or rebuilt in React Native for cross-platform

__Wiesche__: If you have your own node running at home (with Umbrel 🤪), you could connect via VPN and pay for your bread rolls at the checkout.

__SyntaxJak__: We could also technically look at paying for integration into already established mobile wallets, unstoppable wallets it’s privacy friendly and I think they approached us on the forums if I recall but at the time it was vetoed
Word, well definitely if your interest in developing a mobile wallet that would be bad ass.
Or getting grim and grin++ added to the mobile stores a viable option, the more wallets the better imo

__Wayne George__: Regarding Unstoppable, I understand the urge to try new things but experience says that this type of spend rarely ends well, especially when the specs aren't clear

__Wiesche__: You have to consider the purely legal aspects.
I'm not that familiar with the subject.

__SyntaxJak__: Exodus and unstoppable both on ios and both support a few different privacy coins.

__Wayne George__: Ok guys, I'm off. Please keep in touch if you have any follow up questions. I'll make an effort to look at making an iOS app

__transatoshiツ grinminer.net__: I also use netim for grinchat.mw and they don't have DNS limits AFAIK

__Wiesche__: Was Iron also available in the App Store?

__SyntaxJak__: Yup, I still have it from when I downloaded it from AppStore

__transatoshiツ grinminer.net__: They never made clear why they were wanting to list grin besides $$$ which bothered me

__Wiesche__: Why was it deleted?

__Ckec__: owner removed ?

__SyntaxJak__: https://forum.grin.mw/t/ironbelly-is-spitting-fire-no-longer/11003
Ya owner removed
Money is no obstacle for gc yall rich as balls 🤑

__Wiesche__: Was the slatepack implementation available?

__SyntaxJak__: Yes



**TO DO List**

*   Add GGC members to the new 'cc' team on the `mimblewimble` GitHub organization for access to `grin-pm` and other repos.
*   Create an overview of access rights and responsibilities for GGC members.
*   Investigate and fix the underlying cause of Grin++ nodes ending up with no peers.
*   Review open Pull Requests for Grin Rust and Grin-Wallet.


Meeting adjourned.
