CHAIN IF ~
InParty("Sharteel")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
InParty("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
See("Edwin")
See("Sharteel")
ActionListEmpty()
!ActuallyInCombat()
GlobalGT("chapter","GLOBAL",7)
Global("k9SharteelEdwin","GLOBAL",0)~ THEN BDSHARTB k9SharteelEdwin1
~I must admit Edwin, I'm a bit surprised you're still alive.~
DO ~SetGlobal("k9SharteelEdwin","GLOBAL",1)~
== BDEDWINB ~Silence your dog <CHARNAME>, I need not stand to listen to this malcontent.~
== BDSHARTB ~Ohh don't be so insulted Edwin. I'm *certain* that other mages just went very easy on you.~
== BDEDWINB ~(If we should come across a pack of wolves she should prove a useful distraction) Compared to serving in this group, death might have been preferable.~
EXIT

