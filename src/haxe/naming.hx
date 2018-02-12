package flx;
class Locale
{
	var system: SystemName;
	var locales: Array<LocaleName>;
}
class SystemName
{
	var names: Array<CString>;
}
class LocaleName
{
	var locale_point: Byte;
	var names: Array<WString>;
}
