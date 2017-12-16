## Material UI notes
 
Material Design:
* Environment 
    * 3D, 3 axes: x, y, z
        * z axis: 1dp thickness
            * density-independent pixels (called “dips”) “scale to uniform dimensions on any screen”
    * light & shadow
        * Key lights: create directional shadows
        * Ambient light: creates soft shadows from all angles
        * Android Dev
            * “shadows occur when light sources are blocked by sheets of material at various positions along the z-axis”
        * Web Dev
            * “shadows are depicted by manipulating the y-axis only”
* Material Properties
    * Solid, input events cannot pass through material
    * Occupies unique points in space
    * Impenetrable
    * Mutable shape
    * Changes in size only along its plane
    * Unbendable, no folding
    * Can join to other material
    * Can separate, split, and heal
    * Can be created or destroyed
    * Moves along any axis
* Elevation & Shadow
    * components may have different resting elevations across platforms and devices
    * Resting elevation & Dynamic elevation offsets
    * Android
        * Elevation is measured in the same units as the x and y axes - in dp
        * measured in distance from the top of one surface to the top of another
        * everything component has default z-index
        * Responsive elevation and dynamic elevation offsets
            * normal, focused, and pressed
        * Avoiding elevation interference
            * move or remove components before they cause interference
                * floating action button (FAB) can disappear or move off-screen before a user picks up a card

Elevation(dp) - Component
24      Dialog
        Picker

16      Nav drawer  
        Right drawer
        Modal bottom Sheet

12      Floating action button (FAB - pressed)

9	    Sub menu (+1dp for each sub menu)

8	    Bottom navigation bar
        Menu
        Card (when picked up)
        Raised button (pressed state)

6	    Floating action button (FAB - resting elevation)
        Snackbar

4	    App Bar

3	    Refresh indicator
        Quick entry / Search bar (scrolled state)

2	    Card (resting elevation) *
        Raised button (resting elevation)*
        Quick entry / Search bar (resting elevation)

1	    Switch