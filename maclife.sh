csrutil authenticated-root disable;
diskutil mount /Volumes/MacOs;
 Mount -uv /Volumes/MacOs;	
 cd /Volumes/MacOs/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/MacOs/System/Library/CoreServices --bootefi --create-snapshot;
Echo "Copyright Maclife.vn nhe"
