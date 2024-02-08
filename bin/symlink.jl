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
JULIA_ENV_DIR = "$(DEPOT_PATH[1])/environments"
JULIA_ENV_DIR_VERSION = "$(JULIA_ENV_DIR)/$RAW_VERSION"

function symlink_global_manifest()
    src = "$MY_CONFIG_DIR/GlobalManifest.toml"
    dst = "$JULIA_ENV_DIR_VERSION/Manifest.toml"

    isdir(JULIA_ENV_DIR) || mkdir(JULIA_ENV_DIR)
    isdir(JULIA_ENV_DIR_VERSION) || mkdir(JULIA_ENV_DIR_VERSION)

    isfile(dst) && rm(dst)
    symlink(src, dst)
    println("Create global symlink for Manifest.toml successfully")
end

function symlink_global_project()
    src = "$MY_CONFIG_DIR/GlobalProject.toml"
    dst = "$JULIA_ENV_DIR_VERSION/Project.toml"

    isdir(JULIA_ENV_DIR) || mkdir(JULIA_ENV_DIR)
    isdir(JULIA_ENV_DIR_VERSION) || mkdir(JULIA_ENV_DIR_VERSION)

    isfile(dst) && rm(dst)

    symlink(src, dst)
    println("Create global symlink for Project.toml successfully")
end

function symlink_startup()
    src = "$MY_CONFIG_DIR/startup.jl"
    dst = "$JULIA_CONFIG_DIR/startup.jl"

    isdir(JULIA_CONFIG_DIR) || mkdir(JULIA_CONFIG_DIR)

    isfile(dst) && rm(dst)

    symlink(src, dst)
    println("Create startup.jl symlink successfully")
end

function main()
    symlink_startup()
    symlink_global_manifest()
    symlink_global_project()
end

main()
