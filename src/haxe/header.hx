package flx.format;
class Header extends flx.format.Section
{
	public var magic_word: Array<Byte>;

	public var title: WString;

	public var author: WString;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
