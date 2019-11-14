///PreferencesInit();

if !file_exists(FILE_PREF)   {
    PreferencesNew();
}

PreferencesLoad();
