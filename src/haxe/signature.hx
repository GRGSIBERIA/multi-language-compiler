package flx;
class Hash
{
	public var value: Array<Byte>;
}
class Signature
{
	public var geometry_offset: DWord;
	public var geometry_size: DWord;
	public var downloader_sign: Hash;
	public var server_sign: Hash;
	public var block_chain: Array<Block>;
}
class Block
{
	public var target_ip_address: DWord;
	public var target_auth_key: Hash;
	public var crypted_hash: Hash;
}
