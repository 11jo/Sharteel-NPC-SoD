CHAIN IF ~Global("k9SharteelDorn","GLOBAL",1)~ THEN BDDornj k9sharteelDorn1
@700 /* You hold your blade well, Shar-Teel. */
DO ~SetGlobal("k9SharteelDorn","GLOBAL",2)~
== bdshartj @701 /* The half-orc speaks? I'd have thought your kind incapable. */
== BDDornj @702 /* I speak when it becomes necessary. */
= @703 /* My reasons for being here are well enough known, <CHARNAME> is the spawn of a god and I wish to gain from <HIMHER> becoming the next Lord of Murder. */
= @704 /* Yet I have been wondering. Why are you here? */
== bdshartj @705 /* I was captured by Eltan and his pigs. The only way out was to agree to help <CHARNAME>. */
== BDDornj @706 /* I'm surprised at you, giving in so easily. */
== bdshartj @707 /* Fool! The idiots threw me in a cell. I had *no* other choice. */
== BDDornj @708 /* And yet even now that you are free you are still here. Why not sneak away while the party rests? */
== bdshartj @709 /* Only a man would think running away while half of the Flaming Fist are about is a . Now is a time me to be discrete, not an idiot. */
= @710 /* <CHARNAME> If you don't deal with this *imbecile* I swear I *will*. */
EXIT
