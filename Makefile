awssync:
	aws s3 sync s3://sagemaker-s3-luk/output/ ~/tflite

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
