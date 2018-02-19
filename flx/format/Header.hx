package flx.format;

class Header extends flx.format.Section
{
	public var magic_word: Array<Byte>;

	// 符号なし32ビットを扱えない処理系があるため，オミットする場合は1を指定する
	// ただし，本当にデータが扱えなくなるため1は非推奨とする
	public var enable_dword: Byte;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
