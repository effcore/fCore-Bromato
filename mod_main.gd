extends Node

const MYMODNAME_MOD_DIR = "fCore-Bromato/"
const BROMATO_LOG = "fCore-Bromato"

var dir = ""
var ext_dir = ""
var trans_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", BROMATO_LOG)
	dir = modLoader.UNPACKED_DIR + MYMODNAME_MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"

	# Add extensions
	#modLoader.install_script_extension(ext_dir + "main.gd")

	# Add translations
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.de.translation")

func _ready()->void:
	# Get the ContentLoader class
	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")

	var content_dir = "res://mods-unpacked/" + MYMODNAME_MOD_DIR + "content_data/"

	# Add content. These .tres files are ContentData resources
	ModLoaderUtils.log_info("Adding content ...", BROMATO_LOG)
	ContentLoader.load_data(content_dir + "bromato_characters.tres", BROMATO_LOG)
	ContentLoader.load_data(content_dir + "bromato_items.tres", BROMATO_LOG)
	ContentLoader.load_data(content_dir + "bromato_challenges.tres", BROMATO_LOG)
	ContentLoader.load_data(content_dir + "bromato_weapons.tres", BROMATO_LOG)
