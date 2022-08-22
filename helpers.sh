set_package_manager_env_var () {
if [[ "$OSTYPE" == "darwin"* ]]; then
        export PACKAGE_MANAGER=brew
else
	export PACKAGE_MANAGER="sudo apt"
fi
}
