package;

import se.system.Application;
import se.sui.elements.TextElement;

class Main {
	public static function main() {
		// start the application
		Application.start({
			title: "untitled",
			width: 1024,
			height: 1024
		}, init); // a function that is executed after the application is initialized
	}

	static function init() {
		var scene = se.sui.UIScene.current; // UIScene is a root container for ui elements
		scene.padding = 128;

		var text = new TextElement("Hello, sEngine!", scene);
		text.padding = 128;
		text.anchors.margins = 128;
		text.anchors.fill(scene);
		text.color = "red";
		text.fontSize = 72;
		text.alignment = Center;

		// change the hue of the text color 60 times per second
		new se.Timer(() -> {
			text.color.h += 0.015;
		}, 1 / 60).repeat(0);

		// change the font size based on the mouse wheel delta
		Application.input.mouse.notifyOnScrolled((delta) -> {
			text.fontSize += delta;
		});
	}
}
