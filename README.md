# Mjam22
## Murcia Game Jam 2022
------------------------------ Licences  ------------------------

Asset: Música

Obra: Noche y Día Loop 1

Autor: https://www.fiftysounds.com 

https://www.fiftysounds.com/es/musica-libre-de-derechos/noche-y-dia-loop-1.html  

-----------------------------------------------------------

Asset: Sonido piedras extracto: 

Autor “Sonidos para videos SIN COPYRIGHT”

https://www.youtube.com/watch?v=bb851R5r98M  


Asset: Sonido Win (aplausos)

Autor: Audiosound

https://www.youtube.com/watch?v=LLVX9rm8TOc 


Asset: Imagen Bosque Autor: Alejandro Terenzani

http://ciberestetica.blogspot.com/2022/07/paisaje-de-bosque-en-pixel-art.html 

Asset 3D MIT License

Copyright (c) 2007-2022 Juan Linietsky, Ariel Manzur.

Copyright (c) 2014-2022 Godot Engine contributors.

https://github.com/godotengine/godot-demo-projects/tree/3.4-b0d4a7c/3d/rigidbody_character 

# RigidBody Character 3D

RigidBody character demo for 3D using a capsule for the character.
Cubes as RigidBodies spawn in the map from above to show interaction
with the player (jump on them, gently push them), which would be
impossible with a KinematicBody.

Language: GDScript

Renderer: GLES 3

## How does it work?

This demo uses a [`RigidBody`](https://docs.godotengine.org/en/stable/classes/class_rigidbody.html)
for the player, and [`StaticBody`](https://docs.godotengine.org/en/latest/classes/class_staticbody.html)
for the level. Each has colliders, the player moves itself via
`apply_central_impulse()` in `_physics_process()`, and collides with the level.

## Screenshots

![Screenshot](screenshots/editor.png)

# Godot demo projects

Each folder containing a `project.godot` file is a demo project meant to
be used with [Godot Engine](https://godotengine.org), the open source
2D and 3D game engine.

## Godot versions

- The [`master`](https://github.com/godotengine/godot-demo-projects) branch is compatible with Godot's `3.x` branch.
- The [`4.0-dev`](https://github.com/godotengine/godot-demo-projects/tree/4.0-dev) branch is compatible with Godot's `master` branch (currently 4.0-alpha).
- If you are using an older version of Godot, use the appropriate branch for your Godot version:

  - [`3.4`](https://github.com/godotengine/godot-demo-projects/tree/3.4)
    branch for Godot 3.4.x.
  - [`3.3`](https://github.com/godotengine/godot-demo-projects/tree/3.3)
    branch for Godot 3.3.x.
  - [`3.2`](https://github.com/godotengine/godot-demo-projects/tree/3.2)
    branch for Godot 3.2.x.
  - [`3.1`](https://github.com/godotengine/godot-demo-projects/tree/3.1)
    branch for Godot 3.1.x.
  - [`3.0`](https://github.com/godotengine/godot-demo-projects/tree/3.0)
    branch for Godot 3.0.x.
  - [`2.1`](https://github.com/godotengine/godot-demo-projects/tree/2.1)
    branch for Godot 2.1.x.

## Importing all demos

To import all demos at once in the project manager:

- Clone this repository or [download a ZIP archive](https://github.com/godotengine/godot-demo-projects/archive/master.zip).
  - If you've downloaded a ZIP archive, extract it somewhere.
- Open the Godot project manager and click the **Scan** button on the right.
- Choose the path to the folder containing all demos.
- All demos should now appear in the project manager.

## Try the demos in your browser

Most of the demos are exported to GitHub Pages. They can be viewed
[here](https://godotengine.github.io/godot-demo-projects/).

**Note:** The performance of Godot in a browser is lower than natively on
desktop. For the best performance, consider downloading the demos.

## Useful links

- [Main website](https://godotengine.org)
- [Source code](https://github.com/godotengine/godot)
- [Documentation](http://docs.godotengine.org)
- [Community hub](https://godotengine.org/community)
- [TPS demo](https://github.com/godotengine/tps-demo)

## License

Those demos are distributed under the terms of the MIT license, as
described in the [LICENSE.md](LICENSE.md) file.
