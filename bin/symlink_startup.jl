HOME = homedir()
JULIA_CONFIG_DIR = "$(DEPOT_PATH[1])/config"
src = "$HOME/JuliaProjects/.config/startup.jl"
dst = "$JULIA_CONFIG_DIR/startup.jl"

if isdir(JULIA_CONFIG_DIR)
    symlink(src, dst)
    println("Create startup.jl symlink successfully")
else mkdir(JULIA_CONFIG_DIR)
    symlink(src, dst)
    println("Create startup.jl symlink successfully")
end
