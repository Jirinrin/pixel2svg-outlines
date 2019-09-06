# pixel2svg OUTLINE VERSION

This project was forked(-ish) from [pixel2svg](https://florian-berger.de/en/software/pixel2svg/) by [Florian Berger](https://florian-berger.de/en/) (2011), which converts an image file into an svg with a 'rect' for every pixel.  
I wanted to make a version of this that merges all pixels that are the same colour, so that e.g. for an all-white pixel icon you'll just get 1 path instead of max 32x32 `<rect>`s.  
So that's what I did, making use of [mmgp's StackOverflow post](https://stackoverflow.com/a/13851341) as the powerhouse that converts a bunch of squares to the outlines of a shape.  
And upgraded old stuff to Python 3 & added a nice short&sweet batch script so you can easily run this in bulk for an array of image files.

## How to use (Windows)

- Have the following installed:
  - Python 3 + PIP
  - Pillow ([available on PIP](https://pypi.org/project/Pillow/2.2.2/))
  - svgwrite ([available on PIP](https://pypi.org/project/svgwrite/))
- run `python setup.py install` (honestly unsure what this is even necessary for but whatever)
- Throw some image files into the [convert](./convert) folder
- Run [execute.bat](./execute.bat) to get them all converted to svg (these files will be output into the same folder)
  - Or you can manually call the pixel2svg file for 1 image file with `python pixel2svg.py {path to image} --squaresize={your square size, default 40}`