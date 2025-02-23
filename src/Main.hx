package;

class Main {
	public static function main() {
		// start the application
		se.Application.start({
			title: "untitled",
			width: 1024,
			height: 1024
		}, init); // a function that is executed after the application is initialized
	}

	static function init() {}
}
