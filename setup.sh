#!/usr/bin/env bash
set -e

eclipse_dir='/Applications/Eclipse Java.app/'

type ispell >/dev/null 2>&1 || { brew install ispell; }
type tern >/dev/null 2>&1 || { npm install -g tern; }
brew cask install eclipse-java

attr=com.apple.quarantine
[[ $(xattr "$eclipse_dir") = *$attr* ]] && xattr -d $attr "$eclipse_dir"

eclipse_settings_dir="${eclipse_dir}Contents/Eclipse/configuration/.settings/"
mkdir -p "$eclipse_settings_dir"
cp org.jboss.tools.maven.apt.prefs "$eclipse_settings_dir"

cd "${eclipse_dir}Contents/MacOS"
# Find repository/iu from https://marketplace.eclipse.org/node/<market id>/api/p
./eclipse -nosplash \
	-application org.eclipse.equinox.p2.director \
	-repository http://download.jboss.org/jbosstools/updates/m2e-extensions/m2e-apt/,http://matf.github.io/relativenumberruler/updatesite/,http://vrapper.sourceforge.net/update-site/stable/ \
	-installIU "org.jboss.tools.maven.apt.feature.feature.group,
			com.github.matf.relativenumberruler.feature.feature.group,
			net.sourceforge.vrapper.feature.group,
			net.sourceforge.vrapper.eclipse.jdt.feature.feature.group,
			net.sourceforge.vrapper.plugin.surround.feature.group"

cd $TMP
eclim_version=2.8.0
eclim=eclim_$eclim_version.bin
wget https://github.com/ervandew/eclim/releases/download/$eclim_version/$eclim
chmod u+x $eclim
./$eclim \
  --yes \
  --eclipse="$eclipse_dir" \
  --vimfiles=$HOME/.vim \
  --plugins=jdt
