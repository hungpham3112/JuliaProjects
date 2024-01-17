HOME = homedir()
PROJECT_PATH = dirname(dirname(@__FILE__))
MY_CONFIG_DIR = PROJECT_PATH * "/.config"
JULIA_CONFIG_DIR = "$(DEPOT_PATH[1])/config"



function version()::String
    version = string(VERSION)
    stripped_version_str = strip(version, 'v')
    parts = split(stripped_version_str, '.')
    major_version = parse(Int, parts[1])
    minor_version = parse(Int, parts[2])
    formatted_version = "v$major_version.$minor_version"
end

RAW_VERSION = version()
JULIA_ENV_DIR = "$(DEPOT_PATH[1])/environments/$RAW_VERSION/"




function symlink_global_manifest()
    src = "$MY_CONFIG_DIR/GlobalManifest.toml"
    dst = "$JULIA_ENV_DIR/Manifest.toml"

    if isfile(dst)
        rm(dst)
        symlink(src, dst)
        println("Create global symlink for Manifest.toml successfully")
    else
        symlink(src, dst)
        println("Create global symlink for Manifest.toml successfully")
    end
end

function symlink_global_project()
    src = "$MY_CONFIG_DIR/GlobalProject.toml"
    dst = "$JULIA_ENV_DIR/Project.toml"

    if isfile(dst)
        rm(dst)
        symlink(src, dst)
        println("Create global symlink for Project.toml successfully")
    else
        symlink(src, dst)
        println("Create global symlink for Project.toml successfully")
    end
end

function symlink_startup()
    src = "$MY_CONFIG_DIR/startup.jl"
    dst = "$JULIA_CONFIG_DIR/startup.jl"
    if !isdir(JULIA_CONFIG_DIR)
        mkdir(JULIA_CONFIG_DIR)
    end

    if isfile(dst)
        rm(dst)
        symlink(src, dst)
        println("Create startup.jl symlink successfully")
    else
        symlink(src, dst)
        println("Create startup.jl symlink successfully")
    end
end

function main()
    symlink_startup()
    symlink_global_manifest()
    symlink_global_project()
end

main()
