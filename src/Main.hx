package;

class Main {
	public static function main() {
		// start the application
		se.App.start({
			title: "untitled",
			width: 1024,
			height: 1024,
			framebuffer: {
				samplesPerPixel: 2
			}
		}, init); // a function that is executed after the application is initialized
	}

	static function init() {

	}
}
