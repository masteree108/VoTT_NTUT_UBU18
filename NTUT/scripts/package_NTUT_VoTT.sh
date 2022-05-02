# after $ npm run release, you can execute this script to package NTUT_VoTT
# and move to correct path
if [ -d "../../releases" ]; then
	cd ../../
	mv releases NTUT_VoTT
	cd NTUT_VoTT
	mv linux-unpacked UBU18
	mkdir Linux
	mv UBU18 Linux
	cd Linux/UBU18
	mkdir -p NTUT/exe
	cp ../../../NTUT/exe/vott_tracker.exe ./NTUT/exe/
	cp -af ../../../NTUT/yolo-coco_v3/ ./NTUT/
	cd ../../../
	mv NTUT_VoTT ../../../
else
	echo "Directory ../../../releases does not exists"
fi
