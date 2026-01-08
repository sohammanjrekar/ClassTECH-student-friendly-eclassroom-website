import cv2
import os
import glob
from deepface import DeepFace

class SimpleFacerec:
    def __init__(self):
        self.known_face_names = []
        self.known_images_path = ""
        # Modern models: "VGG-Face", "Facenet", "OpenFace", "DeepFace"
        self.model_name = "Facenet" 

    def load_encoding_images(self, images_path):
        """DeepFace handles directory loading more efficiently."""
        self.known_images_path = images_path
        images = glob.glob(os.path.join(images_path, "*.*"))
        
        for img_path in images:
            basename = os.path.basename(img_path)
            (filename, ext) = os.path.splitext(basename)
            self.known_face_names.append(filename)
            
        print(f"{len(self.known_face_names)} student images indexed. ✅")

    def detect_known_faces(self, frame):
        """Uses DeepFace.find to identify students in the frame."""
        face_names = []
        face_locations = []

        try:
            # DeepFace.find performs detection and recognition in one step
            results = DeepFace.find(
                img_path=frame,
                db_path=self.known_images_path,
                model_name=self.model_name,
                enforce_detection=False, # Prevents crashing if no face is seen
                silent=True
            )

            # Process results (results is a list of dataframes)
            for df in results:
                if not df.empty:
                    # Get the best match (lowest distance/highest similarity)
                    best_match_path = df.iloc[0]['identity']
                    best_match_name = os.path.splitext(os.path.basename(best_match_path))[0]
                    
                    # Extract coordinates for UI box
                    x = df.iloc[0]['source_x']
                    y = df.iloc[0]['source_y']
                    w = df.iloc[0]['source_w']
                    h = df.iloc[0]['source_h']
                    
                    face_locations.append((y, x + w, y + h, x)) # CSS-style box (top, right, bottom, left)
                    face_names.append(best_match_name)

        except Exception as e:
            print(f"DeepFace Error: {e}")

        return face_locations, face_names