# 📸 iOSLivePhotoToMotionPicture

**iOSLivePhotoToMotionPicture** is a Python utility for converting iOS Live Photos (HEIC + MOV pairs) into Google Motion Photo-compatible formats. It handles the conversion of `.HEIC` files to `.JPEG`, merges them with associated videos, and preserves EXIF metadata.

---

## 🌟 Features

- 🔄 **Convert HEIC to JPEG**: Seamlessly convert `.HEIC` images to `.JPEG` with EXIF metadata intact.
- 🎥 **Merge Photos and Videos**: Combine images and videos into Google Motion Photo-compatible formats.
- 🗂️ **Batch Processing**: Process entire directories of photos and videos.
- 🕒 **Efficiency**: Designed for easy integration into workflows.

---

## 📖 Table of Contents

1. [🚀 Installation](#-installation)
   - [Using Docker](#using-docker)
   - [Without Docker](#without-docker)
2. [🛠️ Usage](#️-usage)
   - [Using with Docker](#using-with-docker)
   - [Using without Docker](#using-without-docker)
3. [⚙️ Command-Line Arguments](#️-command-line-arguments)
4. [🔍 Example Commands](#-example-commands)
5. [📜 Notes](#-notes)

---

## 🚀 Installation

### Using Docker

Ensure Docker is installed on your system. If not, download and install it from the [official Docker website](https://www.docker.com/).

1. **Build the Docker Image**

   ```bash
   docker build -t ioslivephoto-to-motionpicture .
   ```

2. **Run the Docker Container**
   ```bash
   docker run --rm -v /path/to/images:/app/images ioslivephoto-to-motionpicture
   ```

---

### Without Docker

1. Install required system dependencies:

   ```bash
   sudo apt-get update
   sudo apt-get install -y build-essential python3-dev libboost-python-dev libexiv2-dev libheif-examples python3-pip
   ```

2. Install Python dependencies:

   ```bash
   pip install -r requirements.txt
   ```

3. Run the script:
   ```bash
   python3 iOSLivePhotoToMotionPicture.py --dir /path/to/images --output /path/to/output --verbose
   ```

---

## 🛠️ Usage

### Using with Docker

1. Place your Live Photo files (HEIC and MOV) in a directory, e.g., `/path/to/images`.
2. Run the container, mounting your directory:
   ```bash
   docker run --rm -v /path/to/images:/app/images ioslivephoto-to-motionpicture
   ```

**Note**: Ensure that `/app/images` inside the container corresponds to your files' directory.

---

### Using without Docker

1. Ensure dependencies are installed (see [Installation](#🚀-installation)).
2. Execute the script:
   ```bash
   python3 iOSLivePhotoToMotionPicture.py --dir /path/to/images --output /path/to/output --verbose
   ```

---

## ⚙️ Command-Line Arguments

| Argument    | Description                                                       |
| ----------- | ----------------------------------------------------------------- |
| `--verbose` | Enables detailed logging output.                                  |
| `--dir`     | Path to the directory containing images and videos.               |
| `--recurse` | Recursively process subdirectories.                               |
| `--photo`   | Path to a single photo file (when `--dir` is not used).           |
| `--video`   | Path to a single video file (when `--dir` is not used).           |
| `--output`  | Path to save processed files. Defaults to the `output` directory. |

---

## 🔍 Example Commands

### Using with Docker

```bash
docker run --rm -v /path/to/images:/app/images ioslivephoto-to-motionpicture
```

### Using without Docker

```bash
python3 iOSLivePhotoToMotionPicture.py --dir /path/to/images --output /path/to/output --verbose
```

---

## 📜 Notes

- Ensure your `.HEIC` images and `.MOV` videos are named identically for correct pairing (e.g., `IMG_1234.HEIC` and `IMG_1234.MOV`).
- Processed files will be saved in:
  - `converted/` directory for converted `.JPEG` files.
  - `final/` directory for merged Motion Photos and unprocessed files.
- The tool currently processes files sequentially. A parallelized version is in development. 🚀
- **HEIC Conversion**: The script does not rotate images, ensuring the original orientation is maintained.

---

## 🎉 Enjoy Using iOSLivePhotoToMotionPicture! 🎥📸✨
