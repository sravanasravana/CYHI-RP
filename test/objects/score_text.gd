extends Control

# perfect ffbe53
# great ff8e53
# good ff6753
# ok ff3053
# miss ff0000

func SetTextInfo(text: String):
	$ScoreLevelText.text = "        " + text
	
	match text:
		"PERFECT":
			$ScoreLevelText.set("theme_override_colors/default_color", Color("ffbe53"))
		"GREAT":
			$ScoreLevelText.set("theme_override_colors/default_color", Color("ff8e53"))
		"GOOD":
			$ScoreLevelText.set("theme_override_colors/default_color", Color("ff6753"))
		"OK":
			$ScoreLevelText.set("theme_override_colors/default_color", Color("ff3053"))
		_:
			$ScoreLevelText.set("theme_override_colors/default_color", Color("ff0000"))
	
