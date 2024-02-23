# MMD_OpenGL
![](https://github.com/GelzoneXUnsas/MMD-OpenGL/blob/main/saba/mmd_OpenGL/cover.png)
An MMD (MikuMikuDance) player using OpenGL to provide a platform for reading model and animation files, and displaying high-quality animated content. The MMD player supports various advanced techniques such as camera path, deforming, facial blending, and skinning animation.

## Overview
### MMD
MikuMikuDance (MMD) is free 3D animation software for creating and animating virtual characters, focusing on the popular Vocaloid character using pre-existing models, motion data, and music.

### MMD Formats
#### Model
The project utilizes the PMX format, specialized for MMD, to animate 3D character models, including bone structure, facial expressions, and physics settings.

#### Motion Data
Unlike FBX, MMD separates model and motion files for customization and community collaboration, often in the VMD format. VMD stores bone movements, facial expressions, lip-syncing, and camera movements.

### Implementation
#### Phase 1
Started with library research, finding libraries compatible with Mac, OpenGL, and the required file format.

#### Phase 2
Utilized Saba, a model loader and viewer supporting mmd format files. Combined the loader with OpenGL, creating a file reader to load and customize display windows.

#### Phase 3
Adjusted animation for the model, ensuring smooth joints and physics. Added real-time audio playback synchronized with the animation.

## References
- [Saba](https://github.com/benikabocha/saba)
- [DeviantArt](https://www.deviantart.com/)
- [OpenGL](https://www.opengl.org/)
