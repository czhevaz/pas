import org.grails.plugins.easyui.EasyuiConfig

def theme = EasyuiConfig.theme
def locale = EasyuiConfig.locale
def jqver = EasyuiConfig.jqueryVersion

modules = {
	easyui_core {
		dependsOn 'jquery-dev, bootstrap_utils'
		resource url: "js/jquery-easyui/jquery.easyui.min.js" 
		resource url: "js/jquery-easyui/locale/easyui-lang-en.js"
		resource url: "js/jquery-easyui/themes/icon.css", disposition: 'head'
		resource url: "js/jquery-easyui/themes/${theme}/easyui.css", disposition: 'head'
	}
	
	easyui_scaffold {
		dependsOn "easyui_core, bootstrap_utils"		
		resource url: [plugin: "easyui", dir: "js", file: "easyui-scaffold.js"] 
		resource url: [plugin: "easyui", dir: "js/locale", file: "easyui-scaffold-lang-${locale}.js"] 
		resource url: [plugin: "easyui", dir: "css", file: "easyui-scaffold.css"], disposition: 'head'		
	}
}
