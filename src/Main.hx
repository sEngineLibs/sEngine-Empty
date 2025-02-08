package;

import se.Timer;
import se.system.Application;
import se.ui.elements.TextElement;

class Main {
	public static function main() {
		Application.start({
			title: "Untitled",
			width: 1024,
			height: 1024
		}, function() {
			var text = new TextElement("Hello, sEngine!");
			text.color = "red";
			text.fontSize = 72;
			text.alignment = Center;
			text.width = 1024;
			text.height = 1024;

			new Timer(() -> {
				text.color.h = 0.01;
			}, 1 / 60).repeat(0);
		});
	}
}
