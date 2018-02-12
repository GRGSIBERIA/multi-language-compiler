package flx;
// SHA-512のハッシュ値
class Hash
{
	public var value: Array<Byte>;

}
class Signature extends Chunk
{
		// ファイルの先頭からジオメトリ部のオフセット位置
	public var geometry_offset: DWord;

		// ジオメトリのバイト数
	public var geometry_size: DWord;

		// 利用者の公開鍵
		// 利用者の秘密鍵で復号する
	public var downloader_sign: Hash;

		// サーバの認証鍵
		// 復号済みの利用者の鍵を使って復号する
	public var server_sign: Hash;

		// ブロックチェーン
		// server_signで最初のブロックを復号する
		// 最後の署名は利用者の秘密鍵で復号する
	public var block_chain: Array<Block>;

}
class Block
{
		// 署名者のIPアドレス
	public var target_ip_address: DWord;

		// 署名者の認証鍵
		// 1つのIPアドレスで複数の署名者を管理している場合がある
		// その中の誰が署名者なのかを特定するための鍵
	public var target_auth_key: Hash;

		// 署名先の公開鍵で復号する
		// 復号したcrypted_hashで次のブロックを復号する
	public var crypted_hash: Hash;

}
