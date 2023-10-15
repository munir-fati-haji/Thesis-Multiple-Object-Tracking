# Thesis-Multiple-Object-Tracking

## Abstract
Traffic accidents worldwide, predominantly caused by human errors, result in numerous fatalities and disabilities. This alarming situation prompts the introduction and use of self-driving vehicles as a possible solution. These autonomous vehicles utilize technologies like object detection and tracking to interpret and respond to their environment, assisting in crash prevention. The concept of Multiple Object Tracking (MOT), which aims at assigning a unique ID for each object in a video sequence, has gained significant research attention recently.

This thesis reviews state-of-the-art algorithms for MOT, with a specific focus on the Detection Based Tracking (DBT) approach. To ensure effective detection and tracking, different algorithms from the literature are analyzed. For detection, the YOLOv8 algorithm is selected, specifically the nano and small models, owing to their real-time capabilities and faster inference times. The training of the detection models is conducted on the Detrac dataset, known for its suitability for vehicle detection. In terms of optimization, the AdamW optimizer is chosen over SGD, as it yields improved learning performance.

In terms of tracking, the BYTEtrack algorithm is chosen due to its ability to handle occlusions and instances where objects are temporarily lost, thereby maintaining object identity using a buffer. BYTEtrack has been proven suitable for real-time applications, achieving about 30 FPS. The tracking results obtained using the trained detection models are evaluated on the DETRAC testing set, with the YOLOv8n model achieving 50.2% MOTA, 0.376 MOTP, 75.4% IDF1, and 55,442 IDsw, while the YOLOv8s model achieved 47.5% MOTA, 0.374 MOTP, 76.2% IDF1, and 67,380 IDsw. These results indicate that YOLOv8n outperforms YOLOv8s in terms of object tracking inference speed and accuracy, likely due to its training on a larger batch size.

## Keywords
Multiple Object Tracking(MOT), BYTEtrack, BYTE, Computer vision, Detection Based Tracking (DBT), YOLOv8, Autonomous Vehicle, Object Detection, Object Tracking, UA-DETRAC.

## Results

![](https://github.com/munir-fati-haji/Thesis-Multiple-Object-Tracking/blob/main/results/videos/MVI_39031.gif)
![](https://github.com/munir-fati-haji/Thesis-Multiple-Object-Tracking/blob/main/results/videos/MVI_39271.gif)
![](https://github.com/munir-fati-haji/Thesis-Multiple-Object-Tracking/blob/main/results/videos/MVI_40743.gif)
![](https://github.com/munir-fati-haji/Thesis-Multiple-Object-Tracking/blob/main/results/videos/MVI_40793.gif)

# Acknowledgements

