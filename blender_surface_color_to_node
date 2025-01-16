import bpy

# Get the active object
obj = bpy.context.active_object

# Check if the object has a material
if obj.data.materials:
    mat = obj.data.materials[0]  # Get the first material
    if not mat.use_nodes:  # Check if nodes are not enabled
        mat.use_nodes = True  # Enable nodes
        bsdf = mat.node_tree.nodes.get("Principled BSDF")  # Get the Principled BSDF node
        if bsdf:
            # Set the Base Color to the diffuse color
            bsdf.inputs['Base Color'].default_value = mat.diffuse_color  # Transfer the diffuse color
