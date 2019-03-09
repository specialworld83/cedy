# Install Fedy

install-core:
	install -dm755 $(DESTDIR)/usr/bin/
	install -dm755 $(DESTDIR)/usr/share/cedy/

	for f in *; do [[ $$f != "plugins" ]] && cp -pr $$f $(DESTDIR)/usr/share/cedy/; done
	install -dm755 $(DESTDIR)/usr/share/cedy/plugins

	cp -pr plugins/* $(DESTDIR)/usr/share/cedy/plugins/

	install -Dpm 0755 cedy.exec $(DESTDIR)/usr/bin/cedy

	install -Dpm 0644 cedy.desktop $(DESTDIR)/usr/share/applications/org.condres.cedy.desktop
	install -Dpm 0644 cedy.appdata.xml $(DESTDIR)/usr/share/appdata/cedy.appdata.xml

	install -Dpm 0644 cedy.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/cedy.svg
	install -Dpm 0644 cedy-symbolic.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/cedy-symbolic.svg

	install -Dpm 0644 run-as-root.policy $(DESTDIR)/usr/share/polkit-1/actions/org.condres.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi


install-plugins:



install: install-core install-plugins


uninstall:
	rm -rf $(DESTDIR)/usr/share/cedy/

	rm -f $(DESTDIR)/usr/bin/cedy

	rm -f $(DESTDIR)/usr/share/applications/org.condres.cedy.desktop
	rm -f $(DESTDIR)/usr/share/appdata/cedy.appdata.xml

	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/cedy.svg
	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/cedy-symbolic.svg

	rm -f $(DESTDIR)/usr/share/polkit-1/actions/org.condres.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi
