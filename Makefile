awssync:
	aws s3 sync s3://sagemaker-s3-luk/output/ ~/tflite

pisync:
	rsync -av pi3:/home/pi/Pictures/avocado/output /home/luk/Pictures/rpi3/avocadooutput

build:
	pip install -r requirements.txt

run:
	python TFLite_detection_image.py \
	    --modeldir ~/tflite \
	    --graph ssd_mobilenet_v1_1_metadata_1.tflite \
	    --labels coco_labels.txt \
	    --imagedir ~/Pictures/avocado \
	    --dont-show-image \
	    --output ~/Pictures/avocado/output
avocadorun:
	python TFLite_detection_image.py \
	    --modeldir ~/tflite \
	    --graph model_640.tflite \
	    --inversed-tensors \
	    --labels avocado_labels.txt \
	    --imagedir ~/Pictures/avocado \
	    --dont-show-image \
	    --output ~/Pictures/avocado/output 

