package flx;
class Locale
{
	public var system: SystemName;
	public var locales: Array<LocaleName>;
}
class SystemName
{
	public var names: Array<CString>;
}
class LocaleName
{
	public var locale_point: Byte;
	public var names: Array<WString>;
}
