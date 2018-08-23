public class MyApp : Gtk.Application { 
    
    public MyApp() {
        Object(
            application_id: "com.github.ondb.gtk-hello",
            flags         : ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {
        var bh = new Gtk.Button.with_label("Click me!");
        bh.margin = 12;
        bh.clicked.connect(() => {
            bh.label = "Kono sekai?";
            bh.sensitive = false;
        });
        var mw = new Gtk.ApplicationWindow(this);
        mw.default_height = 360;
        mw.default_width  = 480;
        mw.title          = "Konnichiwa Sekai";
        mw.add(bh);
        mw.show_all();
    }

    public static int main(string[] args) {
        var app = new MyApp();
        return app.run(args);
    }
}