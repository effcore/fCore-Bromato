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
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.en.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.es.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.fr.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.it.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.ja.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.ko.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.pl.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.pt.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.ru.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.tr.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.zh.translation")
	modLoader.add_translation_from_resource(trans_dir + "bromato_translations.zh_TW.translation")

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
